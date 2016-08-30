.class public Lcom/amazon/device/management/DeviceManagementService;
.super Landroid/app/IntentService;
.source "DeviceManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;,
        Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;
    }
.end annotation


# static fields
.field private static final ACTION_RETRY_WITH_AVAILABLE_NETWORK:Ljava/lang/String; = "com.amazon.device.management.ManagementService.RETRY_WITH_AVAILABLE_NETWORK"

.field private static final ACTION_START_DEVICE_MANAGER:Ljava/lang/String; = "com.amazon.device.management.ManagementService.START"

.field public static final EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "app_name"

.field private static final EXTRA_KEY_SCHEDULED:Ljava/lang/String; = "scheduled"

.field private static final NUMBER_OF_FAILED_REFRESHES_BEFORE_USING_NETWORK_FALLBACK:I = 0x3

.field private static final REFRESH_TIMEOUT:J

.field private static final TAG:Ljava/lang/String; = "DeviceManagementService"


# instance fields
.field mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClock:Lcom/amazon/device/management/hostbridge/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceManagementNotificationActivityHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceManagementSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;
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
    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/device/management/DeviceManagementService;->REFRESH_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 120
    const-class v0, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private attemptPackageDisable(Lcom/amazon/device/management/remoteconfig/PackageProperties;)V
    .registers 6
    .param p1, "properties"    # Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/amazon/device/management/DeviceManagementService;->packageIsEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 331
    invoke-direct {p0, p1}, Lcom/amazon/device/management/DeviceManagementService;->launchNotifierActivity(Lcom/amazon/device/management/remoteconfig/PackageProperties;)V

    .line 332
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordPackageDisableAttempted(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 335
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordPackageDisabledSuccessfully(Ljava/lang/String;)V

    .line 337
    :cond_1e
    return-void
.end method

.method private launchNotifierActivity(Lcom/amazon/device/management/remoteconfig/PackageProperties;)V
    .registers 6
    .param p1, "properties"    # Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getPromptConfiguration()Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    move-result-object v1

    .line 345
    .local v1, "uninstallDialogConfiguration":Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
    if-eqz v1, :cond_f

    .line 347
    :try_start_6
    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementService;->mDeviceManagementNotificationActivityHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;

    invoke-virtual {p1}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;->startActivity(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/DialogConfiguration;)V
    :try_end_f
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_6 .. :try_end_f} :catch_10

    .line 357
    :cond_f
    :goto_f
    return-void

    .line 352
    :catch_10
    move-exception v0

    .line 353
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    const-string v2, "DeviceManagementService"

    const-string v3, "Caught failure while serializing the notification configuration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    invoke-virtual {v2}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordErrorSerializingDialogConfiguration()V

    goto :goto_f
.end method

.method private packageIsEligibleForDisable(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 279
    :try_start_2
    iget-object v9, p0, Lcom/amazon/device/management/DeviceManagementService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x80

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 280
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_d

    .line 308
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_c
    :goto_c
    return v7

    .line 284
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_d
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x81

    if-nez v9, :cond_c

    .line 288
    invoke-virtual {p2}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getAllowances()Ljava/util/List;

    move-result-object v2

    .line 289
    .local v2, "allowanceList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/management/allowance/Allowance;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1f

    move v7, v8

    .line 290
    goto :goto_c

    .line 293
    :cond_1f
    iget-object v9, p0, Lcom/amazon/device/management/DeviceManagementService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0xc0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 294
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_c

    .line 298
    new-instance v6, Lcom/amazon/device/management/allowance/AllowanceClosure;

    invoke-direct {v6, p0, v0, v5}, Lcom/amazon/device/management/allowance/AllowanceClosure;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V

    .line 299
    .local v6, "rc":Lcom/amazon/device/management/allowance/AllowanceClosure;
    invoke-virtual {p2}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getAllowances()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/management/allowance/Allowance;

    .line 300
    .local v1, "allowance":Lcom/amazon/device/management/allowance/Allowance;
    invoke-virtual {v1, v6}, Lcom/amazon/device/management/allowance/Allowance;->allowed(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v9

    sget-object v10, Lcom/amazon/device/management/allowance/AllowanceState;->BLOCK:Lcom/amazon/device/management/allowance/AllowanceState;

    invoke-virtual {v9, v10}, Lcom/amazon/device/management/allowance/AllowanceState;->equals(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_4b} :catch_50

    move-result v9

    if-eqz v9, :cond_36

    move v7, v8

    .line 301
    goto :goto_c

    .line 307
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "allowance":Lcom/amazon/device/management/allowance/Allowance;
    .end local v2    # "allowanceList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/management/allowance/Allowance;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "rc":Lcom/amazon/device/management/allowance/AllowanceClosure;
    :catch_50
    move-exception v4

    .line 308
    .local v4, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_c
.end method

.method private packageIsEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, "packageState":I
    if-eq v0, v1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 134
    invoke-static {}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 28
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/amazon/device/management/hostbridge/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 150
    .local v8, "currentTimeMillis":J
    const-string v22, "scheduled"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 162
    .local v20, "scheduled":Z
    if-eqz v20, :cond_32

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mDeviceManagementSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->reschedulePeriodicDeviceManagement(J)V

    .line 172
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;->isEnrolled()Z

    move-result v22

    if-nez v22, :cond_3c

    .line 266
    :cond_31
    :goto_31
    return-void

    .line 165
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mDeviceManagementSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->schedulePeriodicDeviceManagement()V

    goto :goto_25

    .line 175
    :cond_3c
    if-eqz v20, :cond_51

    .line 177
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    move-object/from16 v22, v0

    sget-wide v24, Lcom/amazon/device/management/DeviceManagementService;->REFRESH_TIMEOUT:J

    sget-object v23, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->refreshRemoteSettings(JLjava/util/concurrent/TimeUnit;)V
    :try_end_51
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3e .. :try_end_51} :catch_16b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3e .. :try_end_51} :catch_fc
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_51} :catch_10a

    .line 197
    :cond_51
    :goto_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->getRemoteSettings()Lcom/amazon/device/management/remoteconfig/RemoteSettings;

    move-result-object v21

    .line 204
    .local v21, "settings":Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->getLastSuccessfulRefreshTime()J

    move-result-wide v12

    .line 205
    .local v12, "lastRemoteSettingsRefreshTimeInMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/amazon/device/management/hostbridge/Clock;->currentTimeMillis()J

    move-result-wide v22

    sub-long v14, v22, v12

    .line 206
    .local v14, "millisSinceLastSuccessfulRefresh":J
    invoke-virtual/range {v21 .. v21}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->getNextFetchIntervalMs()Lcom/amazon/device/management/remoteconfig/TimeInterval;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/amazon/device/management/remoteconfig/TimeInterval;->getEnd()J

    move-result-wide v22

    const-wide/16 v24, 0x3

    mul-long v16, v22, v24

    .line 208
    .local v16, "minMillisSinceLastRefreshBeforeNetworkRetry":J
    cmp-long v22, v14, v16

    if-ltz v22, :cond_ab

    .line 210
    new-instance v6, Landroid/content/ComponentName;

    const-class v22, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v6, "connectivityChangeReceiver":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 223
    const-string v22, "com.amazon.device.management.ManagementService.RETRY_WITH_AVAILABLE_NETWORK"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_31

    .line 229
    .end local v6    # "connectivityChangeReceiver":Landroid/content/ComponentName;
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->getVersion()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordRemoteSettingsVersion(J)V

    .line 230
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_cd

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordTimeSinceLastFetch(J)V

    .line 234
    :cond_cd
    invoke-virtual/range {v21 .. v21}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->getBlacklistedPackageProperties()Ljava/util/Map;

    move-result-object v11

    .line 235
    .local v11, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    const-string v22, "app_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 236
    .local v18, "packageName":Ljava/lang/String;
    if-eqz v18, :cond_11f

    .line 237
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .line 238
    .local v19, "packageProperties":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    if-eqz v19, :cond_31

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/management/DeviceManagementService;->packageIsEligibleForDisable(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/amazon/device/management/DeviceManagementService;->attemptPackageDisable(Lcom/amazon/device/management/remoteconfig/PackageProperties;)V

    goto/16 :goto_31

    .line 178
    .end local v11    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    .end local v12    # "lastRemoteSettingsRefreshTimeInMillis":J
    .end local v14    # "millisSinceLastSuccessfulRefresh":J
    .end local v16    # "minMillisSinceLastRefreshBeforeNetworkRetry":J
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "packageProperties":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    .end local v21    # "settings":Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    :catch_fc
    move-exception v7

    .line 180
    .local v7, "e":Ljava/lang/Exception;
    :goto_fd
    const-string v22, "DeviceManagementService"

    const-string v23, "Unable to refresh remote settings. Falling back to a cached value."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_51

    .line 181
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_10a
    move-exception v7

    .line 192
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v22, "DeviceManagementService"

    const-string v23, "Thread is interrupted. Cancelling this check."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_31

    .line 242
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v11    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    .restart local v12    # "lastRemoteSettingsRefreshTimeInMillis":J
    .restart local v14    # "millisSinceLastSuccessfulRefresh":J
    .restart local v16    # "minMillisSinceLastRefreshBeforeNetworkRetry":J
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v21    # "settings":Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    :cond_11f
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_127
    :goto_127
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_31

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 243
    .local v4, "blacklistPackage":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 244
    .local v5, "blacklistPackageName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .line 246
    .restart local v19    # "packageProperties":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/amazon/device/management/DeviceManagementService;->packageIsEligibleForDisable(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;)Z

    move-result v22

    if-eqz v22, :cond_127

    .line 247
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getPolicyShouldBeAppliedRetroactively()Z

    move-result v22

    if-eqz v22, :cond_157

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/amazon/device/management/DeviceManagementService;->attemptPackageDisable(Lcom/amazon/device/management/remoteconfig/PackageProperties;)V

    goto :goto_127

    .line 254
    :cond_157
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/amazon/device/management/DeviceManagementService;->packageIsEnabled(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_127

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordBlacklistedPackageInstalled(Ljava/lang/String;)V

    goto :goto_127

    .line 178
    .end local v4    # "blacklistPackage":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    .end local v5    # "blacklistPackageName":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    .end local v12    # "lastRemoteSettingsRefreshTimeInMillis":J
    .end local v14    # "millisSinceLastSuccessfulRefresh":J
    .end local v16    # "minMillisSinceLastRefreshBeforeNetworkRetry":J
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "packageProperties":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    .end local v21    # "settings":Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    :catch_16b
    move-exception v7

    goto :goto_fd
.end method
