.class public Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
.super Ljava/lang/Object;
.source "RemoteSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;,
        Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mClock:Lcom/amazon/device/management/hostbridge/Clock;

.field private final mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

.field private final mPersistentStorageHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;

.field private final mRemoteConfigurationHelper:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/hostbridge/Clock;Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)V
    .registers 5
    .param p1, "clock"    # Lcom/amazon/device/management/hostbridge/Clock;
    .param p2, "metricsHelper"    # Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;
    .param p3, "persistentStorageHelper"    # Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/management/hostbridge/Clock;",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 57
    .local p4, "remoteConfigurationHelper":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<Lcom/amazon/device/management/remoteconfig/RemoteSettings;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    .line 59
    iput-object p2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    .line 60
    iput-object p3, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mPersistentStorageHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;

    .line 61
    iput-object p4, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mRemoteConfigurationHelper:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/hostbridge/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;
    .registers 2
    .param p0, "x0"    # Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mPersistentStorageHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;
    .registers 2
    .param p0, "x0"    # Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    return-object v0
.end method


# virtual methods
.method public getLastSuccessfulRefreshTime()J
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mPersistentStorageHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;

    invoke-virtual {v0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;->getLastSuccessfulRefreshTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteSettings()Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    .registers 3

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRemoteSettings() called from the main thread -- this may trigger disk operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_12
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mRemoteConfigurationHelper:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    invoke-virtual {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->getConfiguration()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;

    return-object v0
.end method

.method public refreshRemoteSettings(JLjava/util/concurrent/TimeUnit;)V
    .registers 21
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    invoke-interface {v12}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v10

    .line 79
    .local v10, "startElapsedRealtime":J
    :try_start_8
    new-instance v9, Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;

    invoke-direct {v9}, Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;-><init>()V

    .line 80
    .local v9, "mRefreshFuture":Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->refreshRemoteSettings(Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V

    .line 81
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_19} :catch_40
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_19} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_19} :catch_3e

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    invoke-interface {v12}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 88
    .local v4, "endElapsedRealTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    sub-long v14, v4, v10

    invoke-virtual {v12, v14, v15}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordSyncRefreshSuccess(J)V

    .line 89
    return-void

    .line 82
    .end local v4    # "endElapsedRealTime":J
    .end local v9    # "mRefreshFuture":Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;
    :catch_2b
    move-exception v8

    .line 83
    .local v8, "ex":Ljava/lang/Exception;
    :goto_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    invoke-interface {v12}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 84
    .local v6, "errorElapsedRealtime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    sub-long v14, v6, v10

    invoke-virtual {v12, v14, v15}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordSyncRefreshFailure(J)V

    .line 85
    throw v8

    .line 82
    .end local v6    # "errorElapsedRealtime":J
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_3e
    move-exception v8

    goto :goto_2c

    :catch_40
    move-exception v8

    goto :goto_2c
.end method

.method public refreshRemoteSettings(Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mRemoteConfigurationHelper:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    new-instance v1, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;-><init>(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->refreshFromNetwork(Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V

    .line 139
    return-void
.end method
