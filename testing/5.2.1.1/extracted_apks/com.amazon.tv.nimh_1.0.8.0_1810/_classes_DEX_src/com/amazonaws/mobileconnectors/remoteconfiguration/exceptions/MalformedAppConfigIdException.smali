.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/MalformedAppConfigIdException;
.super Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;
.source "MalformedAppConfigIdException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
