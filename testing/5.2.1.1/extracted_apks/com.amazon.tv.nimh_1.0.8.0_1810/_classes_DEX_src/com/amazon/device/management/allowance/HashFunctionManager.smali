.class public final Lcom/amazon/device/management/allowance/HashFunctionManager;
.super Ljava/lang/Object;
.source "HashFunctionManager.java"


# static fields
.field private static final SHA_256_FUNCTION_KEY:Ljava/lang/String; = "sha256"

.field private static final SHA_512_FUNCTION_KEY:Ljava/lang/String; = "sha512"

.field private static sInstance:Lcom/amazon/device/management/allowance/HashFunctionManager;


# instance fields
.field private final mHashFunctionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/hash/HashFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/amazon/device/management/allowance/HashFunctionManager;

    invoke-direct {v0}, Lcom/amazon/device/management/allowance/HashFunctionManager;-><init>()V

    sput-object v0, Lcom/amazon/device/management/allowance/HashFunctionManager;->sInstance:Lcom/amazon/device/management/allowance/HashFunctionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "sha256"

    invoke-static {}, Lcom/google/common/hash/Hashing;->sha256()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "sha512"

    invoke-static {}, Lcom/google/common/hash/Hashing;->sha512()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/allowance/HashFunctionManager;->mHashFunctionMap:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/management/allowance/HashFunctionManager;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/amazon/device/management/allowance/HashFunctionManager;->sInstance:Lcom/amazon/device/management/allowance/HashFunctionManager;

    return-object v0
.end method


# virtual methods
.method public getHashFunction(Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/device/management/allowance/HashFunctionManager;->mHashFunctionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashFunction;

    return-object v0
.end method
