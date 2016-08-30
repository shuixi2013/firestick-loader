.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;
.super Ljava/lang/Object;
.source "ConfigurationImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;


# instance fields
.field private final json:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The JSON may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->json:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->timestamp:Ljava/util/Date;

    .line 66
    return-void
.end method


# virtual methods
.method public getAsJsonObject()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->json:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 82
    :catch_8
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The configuration is invalid."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAsJsonString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->timestamp:Ljava/util/Date;

    return-object v0
.end method
