.class public Lcom/amazon/content/common/remoteconfig/callback/VoidCallback;
.super Ljava/lang/Object;
.source "VoidCallback.java"

# interfaces
.implements Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshFailure(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 31
    return-void
.end method

.method public onRefreshSuccess()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method
