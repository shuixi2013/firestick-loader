.class public Lcom/amazon/device/management/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# static fields
.field static final CONNECTIVITY_CHANGE_RETRY_DELAY:J

.field static final NO_DATA_RETRY_DELAY:J


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClock:Lcom/amazon/device/management/hostbridge/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mConnectivityManager:Landroid/net/ConnectivityManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x5

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->CONNECTIVITY_CHANGE_RETRY_DELAY:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->NO_DATA_RETRY_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableThisBroadcastReceiver(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "thisBroadcastReceiver":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 142
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-static {}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v4

    invoke-virtual {v4, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 93
    .local v0, "currentNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_16

    .line 122
    :cond_15
    :goto_15
    return-void

    .line 98
    :cond_16
    invoke-direct {p0, p1}, Lcom/amazon/device/management/ConnectivityChangeReceiver;->disableThisBroadcastReceiver(Landroid/content/Context;)V

    .line 100
    iget-object v4, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;

    invoke-virtual {v4}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->getPendingIntentToStartDeviceManagementServiceForNetworkRetry()Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    .local v1, "servicePendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    iget-object v4, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-virtual {v4}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->getLastSuccessfulRefreshTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_40

    .line 112
    sget-wide v2, Lcom/amazon/device/management/ConnectivityChangeReceiver;->NO_DATA_RETRY_DELAY:J

    .line 117
    .local v2, "retryDelay":J
    :goto_32
    iget-object v4, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    invoke-interface {v6}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_15

    .line 114
    .end local v2    # "retryDelay":J
    :cond_40
    sget-wide v2, Lcom/amazon/device/management/ConnectivityChangeReceiver;->CONNECTIVITY_CHANGE_RETRY_DELAY:J

    .restart local v2    # "retryDelay":J
    goto :goto_32
.end method
