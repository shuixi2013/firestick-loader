.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;
.super Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;
.source "NetworkException.java"


# static fields
.field private static final serialVersionUID:J = 0x42443b5b15011dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method
