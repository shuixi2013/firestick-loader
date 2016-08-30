.class public Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
.super Ljava/lang/Object;
.source "DialogCallToAction.java"


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final mText:Lcom/amazon/device/management/remoteconfig/LocalizedString;


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/remoteconfig/LocalizedString;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Lcom/amazon/device/management/remoteconfig/LocalizedString;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "text"
        .end annotation
    .end param
    .param p2, "intentAsString"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "intent"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mText:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    .line 43
    :try_start_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_8} :catch_15

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x0

    .line 49
    .local v1, "parsedIntent":Landroid/content/Intent;
    :goto_c
    iput-object v1, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    .line 50
    return-void

    .line 43
    .end local v1    # "parsedIntent":Landroid/content/Intent;
    :cond_f
    const/4 v2, 0x1

    :try_start_10
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v1

    goto :goto_c

    .line 45
    :catch_15
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    .restart local v1    # "parsedIntent":Landroid/content/Intent;
    goto :goto_c
.end method

.method private getIntentAsString()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "intent"
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_5

    .line 91
    :cond_4
    :goto_4
    return v1

    .line 87
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 88
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    .line 91
    .local v0, "that":Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mText:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mText:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method public getText()Lcom/amazon/device/management/remoteconfig/LocalizedString;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text"
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mText:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mText:Lcom/amazon/device/management/remoteconfig/LocalizedString;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->mIntent:Landroid/content/Intent;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
