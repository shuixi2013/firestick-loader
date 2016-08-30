.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$FastMatcher;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "no precomputation is done in GWT"
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return-void
.end method

.method private checkFilter(I)Z
    .registers 6

    const-wide/16 v2, 0x1

    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    and-long/2addr v0, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static chooseTableSize(I)I
    .registers 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x2

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    :goto_d
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    shl-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 12

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    invoke-static {v0}, Lcom/google/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v1, v0, [C

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    :goto_19
    const/4 v0, -0x1

    if-eq v5, v0, :cond_38

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v2, v8

    invoke-static {v5}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v0

    and-int/2addr v0, v6

    :goto_25
    aget-char v7, v1, v0

    if-nez v7, :cond_34

    int-to-char v7, v5

    aput-char v7, v1, v0

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    goto :goto_19

    :cond_34
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v6

    goto :goto_25

    :cond_38
    new-instance v0, Lcom/google/common/base/SmallCharMatcher;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v0
.end method

.method static smear(I)I
    .registers 4

    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public matches(C)Z
    .registers 7

    const/4 v2, 0x0

    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    invoke-static {p1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v0

    and-int v1, v0, v3

    move v0, v1

    :cond_1a
    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-nez v4, :cond_22

    move v0, v2

    goto :goto_5

    :cond_22
    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-ne v4, p1, :cond_2a

    const/4 v0, 0x1

    goto :goto_5

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v3

    if-ne v0, v1, :cond_1a

    move v0, v2

    goto :goto_5
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_8
    iget-object v1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_17

    aget-char v3, v1, v0

    if-eqz v3, :cond_14

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method
