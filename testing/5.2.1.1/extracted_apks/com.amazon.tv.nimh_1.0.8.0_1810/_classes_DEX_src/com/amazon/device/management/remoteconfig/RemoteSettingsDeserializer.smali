.class public Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;
.super Ljava/lang/Object;
.source "RemoteSettingsDeserializer.java"

# interfaces
.implements Lcom/amazon/content/common/remoteconfig/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/content/common/remoteconfig/JsonDeserializer",
        "<",
        "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .registers 2
    .param p1, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 34
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/amazon/device/management/remoteconfig/RemoteSettings;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/management/remoteconfig/RemoteSettings;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_e

    .line 45
    :goto_a
    return-object v1

    .line 44
    :catch_b
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v0

    goto :goto_c
.end method

.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;->deserialize(Ljava/lang/String;)Lcom/amazon/device/management/remoteconfig/RemoteSettings;

    move-result-object v0

    return-object v0
.end method
