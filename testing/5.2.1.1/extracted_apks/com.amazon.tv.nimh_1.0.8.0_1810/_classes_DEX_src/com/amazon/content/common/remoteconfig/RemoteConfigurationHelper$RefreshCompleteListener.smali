.class final Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;
.super Ljava/lang/Object;
.source "RemoteConfigurationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshCompleteListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

.field private final mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V
    .registers 3
    .param p1    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;",
            ">;",
            "Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "futureToWaitOn":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 356
    iput-object p2, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    .line 357
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;

    .line 369
    .local v1, "result":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
    invoke-virtual {v1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;->getStatus()Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    move-result-object v2

    .line 370
    .local v2, "resultStatus":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    sget-object v3, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$1;->$SwitchMap$com$amazon$content$common$remoteconfig$RemoteConfigurationHelper$RefreshResult$ExitStatus:[I

    invoke-virtual {v2}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_70

    .line 384
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ExitStatus \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3a} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3a} :catch_47

    .line 386
    .end local v1    # "result":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
    .end local v2    # "resultStatus":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    :catch_3a
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/util/concurrent/ExecutionException;
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-interface {v3, v0}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshFailure(Ljava/lang/Exception;)V

    .line 392
    .end local v0    # "ex":Ljava/util/concurrent/ExecutionException;
    :goto_40
    return-void

    .line 372
    .restart local v1    # "result":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
    .restart local v2    # "resultStatus":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    :pswitch_41
    :try_start_41
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-interface {v3}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshSuccess()V
    :try_end_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_46} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_40

    .line 388
    .end local v1    # "result":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
    .end local v2    # "resultStatus":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    :catch_47
    move-exception v0

    .line 389
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 390
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-interface {v3, v0}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshFailure(Ljava/lang/Exception;)V

    goto :goto_40

    .line 375
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .restart local v1    # "result":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
    .restart local v2    # "resultStatus":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    :pswitch_55
    :try_start_55
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-interface {v3}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshSuccess()V

    goto :goto_40

    .line 378
    :pswitch_5b
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    new-instance v4, Lcom/amazon/content/common/remoteconfig/exception/RequestThrottledException;

    invoke-direct {v4}, Lcom/amazon/content/common/remoteconfig/exception/RequestThrottledException;-><init>()V

    invoke-interface {v3, v4}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshFailure(Ljava/lang/Exception;)V

    goto :goto_40

    .line 381
    :pswitch_66
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;->mCallback:Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;

    invoke-virtual {v1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;->getCause()Ljava/lang/Exception;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;->onRefreshFailure(Ljava/lang/Exception;)V
    :try_end_6f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_55 .. :try_end_6f} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_6f} :catch_47

    goto :goto_40

    .line 370
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_41
        :pswitch_55
        :pswitch_5b
        :pswitch_66
    .end packed-switch
.end method
