.class Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;
.super Ljava/lang/Object;
.source "RemoteConfigurationHelper.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenableConfigurationSyncCallback"
.end annotation


# instance fields
.field private final mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;


# direct methods
.method private constructor <init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)V
    .registers 3

    .prologue
    .line 283
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    iput-object p1, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
    .param p2, "x1"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$1;

    .prologue
    .line 283
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    invoke-direct {p0, p1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)V

    return-void
.end method


# virtual methods
.method public getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public declared-synchronized onConfigurationModified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
    .registers 6
    .param p1, "syncedConfiguration"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    .prologue
    .line 301
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    # getter for: Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCachedConfigurations:Lcom/amazon/content/common/remoteconfig/LruCacheMap;
    invoke-static {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->access$100(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Lcom/amazon/content/common/remoteconfig/LruCacheMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/content/common/remoteconfig/LruCacheMap;->clear()V

    .line 302
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    # getter for: Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->access$200(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;

    sget-object v2, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->CONFIGURATION_MODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 304
    monitor-exit p0

    return-void

    .line 301
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConfigurationUnmodified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
    .registers 6
    .param p1, "syncedConfiguration"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    .prologue
    .line 312
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    # getter for: Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->access$200(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;

    sget-object v2, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->CONFIGURATION_UNMODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 314
    monitor-exit p0

    return-void

    .line 312
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFailure(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 322
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    # getter for: Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->access$200(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;

    sget-object v2, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->FAILURE:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    invoke-direct {v1, v2, p1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 324
    monitor-exit p0

    return-void

    .line 322
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onThrottle(J)V
    .registers 7
    .param p1, "minMillisUntilNextRetryAttempt"    # J

    .prologue
    .line 333
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->this$0:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    # getter for: Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->access$200(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->mBackingSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;

    sget-object v2, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->THROTTLED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 335
    monitor-exit p0

    return-void

    .line 333
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
