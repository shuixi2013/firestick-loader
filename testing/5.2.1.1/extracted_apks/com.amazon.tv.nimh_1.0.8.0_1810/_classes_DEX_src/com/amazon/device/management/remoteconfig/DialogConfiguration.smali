.class public Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
.super Ljava/lang/Object;
.source "DialogConfiguration.java"


# instance fields
.field private final mBody:Lcom/amazon/device/management/remoteconfig/LocalizedString;

.field private final mNegativeCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

.field private final mPositiveCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

.field private final mTitle:Lcom/amazon/device/management/remoteconfig/LocalizedString;


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/remoteconfig/LocalizedString;Lcom/amazon/device/management/remoteconfig/LocalizedString;Lcom/amazon/device/management/remoteconfig/DialogCallToAction;Lcom/amazon/device/management/remoteconfig/DialogCallToAction;)V
    .registers 5
    .param p1, "title"    # Lcom/amazon/device/management/remoteconfig/LocalizedString;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p2, "body"    # Lcom/amazon/device/management/remoteconfig/LocalizedString;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "body"
        .end annotation
    .end param
    .param p3, "positiveCallToAction"    # Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "positiveCta"
        .end annotation
    .end param
    .param p4, "negativeCallToAction"    # Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "negativeCta"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mTitle:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    .line 32
    iput-object p2, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mBody:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    .line 33
    iput-object p3, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mPositiveCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    .line 34
    iput-object p4, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mNegativeCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_5

    .line 81
    :cond_4
    :goto_4
    return v1

    .line 77
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 78
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    .line 81
    .local v0, "that":Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mTitle:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mTitle:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mBody:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mBody:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mPositiveCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mPositiveCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mNegativeCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mNegativeCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3e
    move v1, v2

    goto :goto_4
.end method

.method public getBody()Lcom/amazon/device/management/remoteconfig/LocalizedString;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "body"
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mBody:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    return-object v0
.end method

.method public getNegativeCallToAction()Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "negativeCta"
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mNegativeCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    return-object v0
.end method

.method public getPositiveCallToAction()Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "positiveCta"
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mPositiveCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    return-object v0
.end method

.method public getTitle()Lcom/amazon/device/management/remoteconfig/LocalizedString;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mTitle:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mTitle:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mBody:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mPositiveCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->mNegativeCallToAction:Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
