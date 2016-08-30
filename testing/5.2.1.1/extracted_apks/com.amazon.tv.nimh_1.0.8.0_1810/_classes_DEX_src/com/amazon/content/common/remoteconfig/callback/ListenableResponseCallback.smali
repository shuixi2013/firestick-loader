.class public Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "ListenableResponseCallback.java"

# interfaces
.implements Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshFailure(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;->setException(Ljava/lang/Throwable;)Z

    .line 34
    return-void
.end method

.method public onRefreshSuccess()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/content/common/remoteconfig/callback/ListenableResponseCallback;->set(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
