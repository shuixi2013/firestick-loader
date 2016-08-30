.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;
.super Ljava/lang/Object;
.source "RemoteConfigurationImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;


# instance fields
.field private final mAppConfigurationId:Ljava/lang/String;

.field private final mConfiguration:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

.field private final mEntityTag:Ljava/lang/String;

.field private final mOrigin:I

.field private final mUpdate:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8
    .param p1, "configuration"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .param p2, "appConfigurationId"    # Ljava/lang/String;
    .param p3, "origin"    # I
    .param p4, "entityTag"    # Ljava/lang/String;
    .param p5, "update"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p2, :cond_d

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Application Configuration ID may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_d
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1e

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid configuration origin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1e
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mConfiguration:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mAppConfigurationId:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mOrigin:I

    .line 65
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mEntityTag:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mUpdate:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getAppConfigurationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mAppConfigurationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mConfiguration:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    return-object v0
.end method

.method public getEntityTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mEntityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mOrigin:I

    return v0
.end method

.method public isUpdate()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mUpdate:Z

    return v0
.end method
