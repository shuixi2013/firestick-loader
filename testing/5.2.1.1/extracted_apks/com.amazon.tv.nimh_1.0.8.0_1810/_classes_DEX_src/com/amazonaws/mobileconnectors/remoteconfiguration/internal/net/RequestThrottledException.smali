.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RequestThrottledException;
.super Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;
.source "RequestThrottledException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
