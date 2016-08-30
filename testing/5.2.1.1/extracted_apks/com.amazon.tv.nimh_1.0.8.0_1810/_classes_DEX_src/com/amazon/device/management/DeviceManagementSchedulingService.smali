.class public Lcom/amazon/device/management/DeviceManagementSchedulingService;
.super Landroid/app/IntentService;
.source "DeviceManagementSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;
    }
.end annotation


# static fields
.field private static final INTENT_EXTRA_KEY_ACTUAL_REFRESH_TIME:Ljava/lang/String; = "com.amazon.device.management.SchedulingService.ACTUAL_REFRESH_TIME"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClock:Lcom/amazon/device/management/hostbridge/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceManagementSchedule:Lcom/amazon/device/management/DeviceManagementSchedule;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRandom:Ljava/util/Random;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    const-class v0, Lcom/amazon/device/management/DeviceManagementSchedulingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private getMillisUntilNextRefresh()J
    .registers 9

    .prologue
    .line 205
    iget-object v6, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-virtual {v6}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->getRemoteSettings()Lcom/amazon/device/management/remoteconfig/RemoteSettings;

    move-result-object v1

    .line 208
    .local v1, "remoteSettings":Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    invoke-virtual {v1}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->getNextFetchIntervalMs()Lcom/amazon/device/management/remoteconfig/TimeInterval;

    move-result-object v0

    .line 210
    .local v0, "nextRefreshWindow":Lcom/amazon/device/management/remoteconfig/TimeInterval;
    invoke-virtual {v0}, Lcom/amazon/device/management/remoteconfig/TimeInterval;->getStart()J

    move-result-wide v2

    .line 211
    .local v2, "windowStart":J
    invoke-virtual {v0}, Lcom/amazon/device/management/remoteconfig/TimeInterval;->getEnd()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 212
    .local v4, "windowWidth":J
    iget-object v6, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    rem-long/2addr v6, v4

    add-long/2addr v6, v2

    return-wide v6
.end method

.method private runDeviceManagementServiceNow(J)V
    .registers 4
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementSchedule:Lcom/amazon/device/management/DeviceManagementSchedule;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/management/DeviceManagementSchedule;->setLastScheduledRefreshTime(J)V

    .line 223
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;

    invoke-virtual {v0}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->startDeviceManagementServiceAndFetch()V

    .line 224
    return-void
.end method

.method private scheduleFutureDeviceManagementServiceRun(JJJ)V
    .registers 14
    .param p1, "currentTimeMillis"    # J
    .param p3, "elapsedRealtimeMillis"    # J
    .param p5, "millisUntilNextRun"    # J

    .prologue
    .line 238
    add-long v2, p1, p5

    .line 239
    .local v2, "nextRunTimeInMillis":J
    add-long v0, p3, p5

    .line 241
    .local v0, "nextRunElapsedRealTimeMillis":J
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementSchedule:Lcom/amazon/device/management/DeviceManagementSchedule;

    invoke-virtual {v5, v2, v3}, Lcom/amazon/device/management/DeviceManagementSchedule;->setLastScheduledRefreshTime(J)V

    .line 243
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;

    invoke-virtual {v5}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->getPendingIntentToStartDeviceManagementService()Landroid/app/PendingIntent;

    move-result-object v4

    .line 251
    .local v4, "servicePendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 254
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 259
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 91
    invoke-static {}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    invoke-interface {v5}, Lcom/amazon/device/management/hostbridge/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 102
    .local v6, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    invoke-interface {v5}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 108
    .local v8, "elapsedRealtimeMillis":J
    const-string v5, "com.amazon.device.management.SchedulingService.ACTUAL_REFRESH_TIME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 111
    const-string v5, "com.amazon.device.management.SchedulingService.ACTUAL_REFRESH_TIME"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 114
    .local v12, "lastActualRefreshTime":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementSchedule:Lcom/amazon/device/management/DeviceManagementSchedule;

    invoke-virtual {v5, v12, v13}, Lcom/amazon/device/management/DeviceManagementSchedule;->setLastActualRefreshTime(J)V

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->getMillisUntilNextRefresh()J

    move-result-wide v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->scheduleFutureDeviceManagementServiceRun(JJJ)V

    .line 189
    .end local v12    # "lastActualRefreshTime":J
    :goto_36
    return-void

    .line 130
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementSchedule:Lcom/amazon/device/management/DeviceManagementSchedule;

    invoke-virtual {v5}, Lcom/amazon/device/management/DeviceManagementSchedule;->getLastScheduledRefreshTime()Lcom/google/common/base/Optional;

    move-result-object v15

    .line 136
    .local v15, "lastScheduledRefreshTimeOpt":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v15}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->runDeviceManagementServiceNow(J)V

    goto :goto_36

    .line 141
    :cond_4b
    invoke-virtual {v15}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 143
    .local v16, "lastScheduledRefreshTime":J
    cmp-long v5, v16, v6

    if-gez v5, :cond_8a

    .line 145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/management/DeviceManagementSchedulingService;->mDeviceManagementSchedule:Lcom/amazon/device/management/DeviceManagementSchedule;

    invoke-virtual {v5}, Lcom/amazon/device/management/DeviceManagementSchedule;->getLastActualRefreshTime()Lcom/google/common/base/Optional;

    move-result-object v14

    .line 153
    .local v14, "lastActualRefreshTimeOpt":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-virtual {v14}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-gez v5, :cond_7e

    :cond_75
    const/4 v4, 0x1

    .line 156
    .local v4, "lastActualRefreshIsBeforeLastScheduledRefresh":Z
    :goto_76
    if-eqz v4, :cond_80

    .line 163
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->runDeviceManagementServiceNow(J)V

    goto :goto_36

    .line 153
    .end local v4    # "lastActualRefreshIsBeforeLastScheduledRefresh":Z
    :cond_7e
    const/4 v4, 0x0

    goto :goto_76

    .line 171
    .restart local v4    # "lastActualRefreshIsBeforeLastScheduledRefresh":Z
    :cond_80
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->getMillisUntilNextRefresh()J

    move-result-wide v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->scheduleFutureDeviceManagementServiceRun(JJJ)V

    goto :goto_36

    .line 182
    .end local v4    # "lastActualRefreshIsBeforeLastScheduledRefresh":Z
    .end local v14    # "lastActualRefreshTimeOpt":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    :cond_8a
    sub-long v10, v16, v6

    .local v10, "millisUntilPreviouslyScheduledRun":J
    move-object/from16 v5, p0

    .line 183
    invoke-direct/range {v5 .. v11}, Lcom/amazon/device/management/DeviceManagementSchedulingService;->scheduleFutureDeviceManagementServiceRun(JJJ)V

    goto :goto_36
.end method
