.class public Lcom/amazon/device/management/allowance/SignatureMatchAllowance;
.super Lcom/amazon/device/management/allowance/Allowance;
.source "SignatureMatchAllowance.java"


# static fields
.field public static final SIGNATURE_MATCH_ALLOWANCE_NAME:Ljava/lang/String; = "signatureMatch"

.field private static final TAG:Ljava/lang/String; = "SgntreMatchAllowance"


# instance fields
.field private final mHashFunction:Ljava/lang/String;

.field private final mSignatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "absentBehavior"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "absentBehavior"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "signatures"
        .end annotation
    .end param
    .param p3, "hashFunction"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "hashFunction"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/amazon/device/management/allowance/AllowanceState;->fromString(Ljava/lang/String;)Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/management/allowance/Allowance;-><init>(Lcom/amazon/device/management/allowance/AllowanceState;)V

    .line 52
    iput-object p2, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mSignatures:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mHashFunction:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public computeAllowance(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 14
    .param p1, "closure"    # Lcom/amazon/device/management/allowance/AllowanceClosure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    iget-object v10, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mSignatures:Ljava/util/List;

    if-nez v10, :cond_e

    .line 63
    const-string v10, "SgntreMatchAllowance"

    const-string v11, "Nonexistent signature value; falling back to default behavior."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v10, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 87
    :goto_d
    return-object v10

    .line 67
    :cond_e
    iget-object v10, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mHashFunction:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 68
    const-string v10, "SgntreMatchAllowance"

    const-string v11, "Empty hash function; falling back to default behavior."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v10, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_d

    .line 72
    :cond_20
    invoke-static {}, Lcom/amazon/device/management/allowance/HashFunctionManager;->getInstance()Lcom/amazon/device/management/allowance/HashFunctionManager;

    move-result-object v10

    iget-object v11, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mHashFunction:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/amazon/device/management/allowance/HashFunctionManager;->getHashFunction(Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v3

    .line 73
    .local v3, "function":Lcom/google/common/hash/HashFunction;
    if-nez v3, :cond_36

    .line 74
    const-string v10, "SgntreMatchAllowance"

    const-string v11, "Nonexistent hash function; falling back to default behavior."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v10, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_d

    .line 78
    :cond_36
    invoke-virtual {p1}, Lcom/amazon/device/management/allowance/AllowanceClosure;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 79
    .local v1, "appSignatures":[Landroid/content/pm/Signature;
    new-instance v5, Landroid/util/ArraySet;

    array-length v10, v1

    invoke-direct {v5, v10}, Landroid/util/ArraySet;-><init>(I)V

    .line 80
    .local v5, "hashedAppSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_45
    if-ge v6, v7, :cond_63

    aget-object v9, v2, v6

    .line 81
    .local v9, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-interface {v3, v10}, Lcom/google/common/hash/HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    .line 82
    .local v0, "actualSignature":Lcom/google/common/hash/HashCode;
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base32()Lcom/google/common/io/BaseEncoding;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 85
    .end local v0    # "actualSignature":Lcom/google/common/hash/HashCode;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    :cond_63
    iget-object v10, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mSignatures:Ljava/util/List;

    invoke-static {v10}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    .line 86
    .local v4, "hashedAllowanceSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 87
    .local v8, "match":Z
    if-eqz v8, :cond_72

    sget-object v10, Lcom/amazon/device/management/allowance/AllowanceState;->ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_d

    :cond_72
    sget-object v10, Lcom/amazon/device/management/allowance/AllowanceState;->BLOCK:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_d
.end method

.method public getHashFunction()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hashFunction"
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mHashFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "signatures"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;->mSignatures:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "allowanceType"
    .end annotation

    .prologue
    .line 122
    const-string v0, "signatureMatch"

    return-object v0
.end method
