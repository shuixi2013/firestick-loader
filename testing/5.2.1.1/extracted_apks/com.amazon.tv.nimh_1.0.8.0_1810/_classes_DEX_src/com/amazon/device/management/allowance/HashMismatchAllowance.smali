.class public Lcom/amazon/device/management/allowance/HashMismatchAllowance;
.super Lcom/amazon/device/management/allowance/Allowance;
.source "HashMismatchAllowance.java"


# static fields
.field public static final HASH_MISMATCH_ALLOWANCE_NAME:Ljava/lang/String; = "hashMismatch"

.field private static final TAG:Ljava/lang/String; = "HashMismatchAllowance"


# instance fields
.field private final mFileHash:Ljava/lang/String;

.field private final mHashFunction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "absentBehavior"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "absentBehavior"
        .end annotation
    .end param
    .param p2, "fileHash"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "fileHash"
        .end annotation
    .end param
    .param p3, "hashFunction"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "hashFunction"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Lcom/amazon/device/management/allowance/AllowanceState;->fromString(Ljava/lang/String;)Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/management/allowance/Allowance;-><init>(Lcom/amazon/device/management/allowance/AllowanceState;)V

    .line 72
    iput-object p2, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mFileHash:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mHashFunction:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public computeAllowance(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 10
    .param p1, "closure"    # Lcom/amazon/device/management/allowance/AllowanceClosure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v5, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mFileHash:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 79
    const-string v5, "HashMismatchAllowance"

    const-string v6, "Empty file hash; falling back to default behavior."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v5, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 101
    :goto_11
    return-object v5

    .line 83
    :cond_12
    iget-object v5, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mHashFunction:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 84
    const-string v5, "HashMismatchAllowance"

    const-string v6, "Empty hash function; falling back to default behavior."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v5, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_11

    .line 88
    :cond_24
    invoke-static {}, Lcom/amazon/device/management/allowance/HashFunctionManager;->getInstance()Lcom/amazon/device/management/allowance/HashFunctionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mHashFunction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/amazon/device/management/allowance/HashFunctionManager;->getHashFunction(Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v3

    .line 89
    .local v3, "function":Lcom/google/common/hash/HashFunction;
    if-nez v3, :cond_3a

    .line 90
    const-string v5, "HashMismatchAllowance"

    const-string v6, "Nonexistent hash function; falling back to default behavior."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v5, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_11

    .line 94
    :cond_3a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazon/device/management/allowance/AllowanceClosure;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "apkFile":Ljava/io/File;
    :try_start_45
    invoke-static {v0, v3}, Lcom/google/common/io/Files;->hash(Ljava/io/File;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;

    move-result-object v1

    .line 97
    .local v1, "apkHash":Lcom/google/common/hash/HashCode;
    iget-object v5, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mFileHash:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base32()Lcom/google/common/io/BaseEncoding;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 98
    .local v4, "match":Z
    if-eqz v4, :cond_60

    sget-object v5, Lcom/amazon/device/management/allowance/AllowanceState;->BLOCK:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_11

    :cond_60
    sget-object v5, Lcom/amazon/device/management/allowance/AllowanceState;->ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_62} :catch_63

    goto :goto_11

    .line 99
    .end local v1    # "apkHash":Lcom/google/common/hash/HashCode;
    .end local v4    # "match":Z
    :catch_63
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "HashMismatchAllowance"

    const-string v6, "Unable to read the APK file to validate hash mismatch. Falling back to default behavior."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v5, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_11
.end method

.method public getFileHash()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fileHash"
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mFileHash:Ljava/lang/String;

    return-object v0
.end method

.method public getHashFunction()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hashFunction"
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/device/management/allowance/HashMismatchAllowance;->mHashFunction:Ljava/lang/String;

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
    .line 133
    const-string v0, "hashMismatch"

    return-object v0
.end method
