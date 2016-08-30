.class Lcom/amazon/content/common/remoteconfig/LruCacheMap;
.super Ljava/util/LinkedHashMap;
.source "LruCacheMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xa

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mMaxEntries:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "maxEntries"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/LruCacheMap;, "Lcom/amazon/content/common/remoteconfig/LruCacheMap<TK;TV;>;"
    const/16 v0, 0xa

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/content/common/remoteconfig/LruCacheMap;-><init>(IFZI)V

    .line 46
    return-void
.end method

.method public constructor <init>(IFZI)V
    .registers 7
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "removalOrder"    # Z
    .param p4, "maxEntries"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/LruCacheMap;, "Lcom/amazon/content/common/remoteconfig/LruCacheMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 62
    if-gtz p4, :cond_d

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value of maxEntries must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    iput p4, p0, Lcom/amazon/content/common/remoteconfig/LruCacheMap;->mMaxEntries:I

    .line 67
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/LruCacheMap;, "Lcom/amazon/content/common/remoteconfig/LruCacheMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/amazon/content/common/remoteconfig/LruCacheMap;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/content/common/remoteconfig/LruCacheMap;->mMaxEntries:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
