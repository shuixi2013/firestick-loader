.class Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;
.super Ljava/lang/Object;
.source "RemoteSettingsManager.java"

# interfaces
.implements Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->refreshRemoteSettings(Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mStartElapsedRealtimeMillis:J

.field final synthetic this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

.field final synthetic val$callback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;


# direct methods
.method constructor <init>(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V
    .registers 5

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    iput-object p2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->val$callback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;
    invoke-static {v0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$000(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/hostbridge/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->mStartElapsedRealtimeMillis:J

    return-void
.end method


# virtual methods
.method public declared-synchronized onRefreshFailure(Ljava/lang/Exception;)V
    .registers 8
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;
    invoke-static {v2}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$000(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/hostbridge/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 132
    .local v0, "endElapsedRealtimeMillis":J
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;
    invoke-static {v2}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$200(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    move-result-object v2

    iget-wide v4, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->mStartElapsedRealtimeMillis:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordAsyncRefreshFailure(J)V

    .line 136
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->val$callback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-interface {v2, p1}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshFailure(Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 137
    monitor-exit p0

    return-void

    .line 131
    .end local v0    # "endElapsedRealtimeMillis":J
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onRefreshSuccess()V
    .registers 7

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mPersistentStorageHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;
    invoke-static {v2}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$100(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;
    invoke-static {v3}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$000(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/hostbridge/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/device/management/hostbridge/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;->setLastSuccessfulRefreshTime(J)V

    .line 119
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mClock:Lcom/amazon/device/management/hostbridge/Clock;
    invoke-static {v2}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$000(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/hostbridge/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/management/hostbridge/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 120
    .local v0, "endElapsedRealtimeMillis":J
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->this$0:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    # getter for: Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->mMetricsHelper:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;
    invoke-static {v2}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;->access$200(Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;)Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    move-result-object v2

    iget-wide v4, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->mStartElapsedRealtimeMillis:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordAsyncRefreshSuccess(J)V

    .line 124
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$1;->val$callback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-interface {v2}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshSuccess()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 125
    monitor-exit p0

    return-void

    .line 116
    .end local v0    # "endElapsedRealtimeMillis":J
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method
