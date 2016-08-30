.class public Lcom/amazon/device/management/remoteconfig/PackageProperties;
.super Ljava/lang/Object;
.source "PackageProperties.java"


# instance fields
.field private final mAllowances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/management/allowance/Allowance;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mPromptConfiguration:Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

.field private final mShouldApplyPolicyRetroactively:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/amazon/device/management/remoteconfig/DialogConfiguration;Ljava/util/List;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "packageName"
        .end annotation
    .end param
    .param p2, "applyPolicyRetroactively"    # Z
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "applyPolicyRetroactively"
        .end annotation
    .end param
    .param p3, "dialogConfiguration"    # Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "promptConfiguration"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "allowances"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/device/management/remoteconfig/DialogConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/management/allowance/Allowance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "allowances":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/management/allowance/Allowance;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPackageName:Ljava/lang/String;

    .line 51
    iput-boolean p2, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mShouldApplyPolicyRetroactively:Z

    .line 52
    iput-object p3, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPromptConfiguration:Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    .line 53
    if-nez p4, :cond_12

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mAllowances:Ljava/util/List;

    .line 58
    :goto_11
    return-void

    .line 56
    :cond_12
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mAllowances:Ljava/util/List;

    goto :goto_11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p0, p1, :cond_5

    .line 106
    :cond_4
    :goto_4
    return v1

    .line 102
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 103
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .line 106
    .local v0, "that":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPromptConfiguration:Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPromptConfiguration:Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-boolean v3, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mShouldApplyPolicyRetroactively:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mShouldApplyPolicyRetroactively:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3c
    move v1, v2

    goto :goto_4
.end method

.method public getAllowances()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "allowances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/management/allowance/Allowance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mAllowances:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageName"
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyShouldBeAppliedRetroactively()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "applyPolicyRetroactively"
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mShouldApplyPolicyRetroactively:Z

    return v0
.end method

.method public getPromptConfiguration()Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "promptConfiguration"
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPromptConfiguration:Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mPromptConfiguration:Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amazon/device/management/remoteconfig/PackageProperties;->mShouldApplyPolicyRetroactively:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
