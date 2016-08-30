.class public Lcom/amazon/device/management/allowance/AllowanceDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "AllowanceDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Lcom/amazon/device/management/allowance/Allowance;",
        ">;"
    }
.end annotation


# static fields
.field private static final ABSENT_BEHAVIOR_KEY:Ljava/lang/String; = "absentBehavior"

.field private static final ALLOWANCE_TYPE_KEY:Ljava/lang/String; = "allowanceType"


# instance fields
.field private final mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/amazon/device/management/allowance/AllowanceManager;)V
    .registers 3
    .param p1, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p2, "allowanceManager"    # Lcom/amazon/device/management/allowance/AllowanceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/device/management/allowance/AllowanceDeserializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 43
    iput-object p2, p0, Lcom/amazon/device/management/allowance/AllowanceDeserializer;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    .line 44
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/amazon/device/management/allowance/Allowance;
    .registers 11
    .param p1, "jsonParser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "deserializationContext"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 50
    .local v4, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v7, "absentBehavior"

    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 51
    .local v1, "absentBehaviorNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isValueNode()Z

    move-result v7

    if-nez v7, :cond_20

    .line 52
    :cond_18
    new-instance v0, Lcom/amazon/device/management/allowance/DefaultAllowance;

    sget-object v7, Lcom/amazon/device/management/allowance/AllowanceState;->ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;

    invoke-direct {v0, v7}, Lcom/amazon/device/management/allowance/DefaultAllowance;-><init>(Lcom/amazon/device/management/allowance/AllowanceState;)V

    .line 68
    :cond_1f
    :goto_1f
    return-object v0

    .line 55
    :cond_20
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "absentBehaviorString":Ljava/lang/String;
    new-instance v0, Lcom/amazon/device/management/allowance/DefaultAllowance;

    invoke-static {v2}, Lcom/amazon/device/management/allowance/AllowanceState;->fromString(Ljava/lang/String;)Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/amazon/device/management/allowance/DefaultAllowance;-><init>(Lcom/amazon/device/management/allowance/AllowanceState;)V

    .line 58
    .local v0, "absentBehavior":Lcom/amazon/device/management/allowance/Allowance;
    const-string v7, "allowanceType"

    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    .line 59
    .local v6, "typeNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->isValueNode()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 63
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "type":Ljava/lang/String;
    iget-object v7, p0, Lcom/amazon/device/management/allowance/AllowanceDeserializer;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    invoke-virtual {v7, v5}, Lcom/amazon/device/management/allowance/AllowanceManager;->getAllowanceType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 65
    .local v3, "allowanceType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/amazon/device/management/allowance/Allowance;>;"
    if-eqz v3, :cond_1f

    .line 68
    iget-object v7, p0, Lcom/amazon/device/management/allowance/AllowanceDeserializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v7, v4, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/device/management/allowance/Allowance;

    move-object v0, v7

    goto :goto_1f
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/management/allowance/AllowanceDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/amazon/device/management/allowance/Allowance;

    move-result-object v0

    return-object v0
.end method
