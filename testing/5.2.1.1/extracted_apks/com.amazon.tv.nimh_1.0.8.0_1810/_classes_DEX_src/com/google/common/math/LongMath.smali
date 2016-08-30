.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final factorials:[J

.field static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x13

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    new-array v0, v1, [J

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_aa

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_fa

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_152

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_19a

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    return-void

    nop

    :array_36
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5a
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_aa
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_fa
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_152
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_19a
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .registers 16

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v3, 0x2

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-gt p1, p0, :cond_44

    move v0, v1

    :goto_12
    const-string v6, "k (%s) > n (%s)"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_2b

    sub-int p1, p0, p1

    :cond_2b
    packed-switch p1, :pswitch_data_b2

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_4a

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v0, p0

    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v2, v2, p1

    sget-object v4, Lcom/google/common/math/LongMath;->factorials:[J

    sub-int v5, p0, p1

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    div-long/2addr v0, v2

    :cond_43
    :goto_43
    return-wide v0

    :cond_44
    move v0, v2

    goto :goto_12

    :pswitch_46
    move-wide v0, v4

    goto :goto_43

    :pswitch_48
    int-to-long v0, p0

    goto :goto_43

    :cond_4a
    sget-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v0, v0

    if-ge p1, v0, :cond_55

    sget-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v0, v0, p1

    if-le p0, v0, :cond_5b

    :cond_55
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_43

    :cond_5b
    sget-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v0, v0

    if-ge p1, v0, :cond_74

    sget-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v0, v0, p1

    if-gt p0, v0, :cond_74

    add-int/lit8 v2, p0, -0x1

    int-to-long v0, p0

    :goto_69
    if-gt v3, p1, :cond_43

    int-to-long v4, v2

    mul-long/2addr v0, v4

    int-to-long v4, v3

    div-long/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_74
    int-to-long v0, p0

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v6

    add-int/lit8 v2, p0, -0x1

    int-to-long v0, p0

    move v7, v3

    move v10, v6

    move v11, v2

    move-wide v2, v0

    move-wide v0, v4

    :goto_83
    if-gt v7, p1, :cond_ad

    add-int v8, v10, v6

    const/16 v9, 0x3f

    if-ge v8, v9, :cond_a2

    int-to-long v8, v11

    mul-long/2addr v8, v2

    int-to-long v2, v7

    mul-long/2addr v4, v2

    add-int v2, v10, v6

    move v12, v2

    move-wide v2, v4

    move-wide v4, v8

    move-wide v8, v0

    move v0, v12

    :goto_96
    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v7, v11, -0x1

    move v10, v0

    move v11, v7

    move v7, v1

    move-wide v0, v8

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    goto :goto_83

    :cond_a2
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v4

    int-to-long v2, v11

    int-to-long v0, v7

    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v0

    move v0, v6

    goto :goto_96

    :cond_ad
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v0

    goto :goto_43

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_46
        :pswitch_48
    .end packed-switch
.end method

.method public static checkedAdd(JJ)J
    .registers 14
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-long v4, p0, p2

    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-gez v2, :cond_18

    move v2, v0

    :goto_d
    xor-long v6, p0, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1a

    :goto_13
    or-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v4

    :cond_18
    move v2, v1

    goto :goto_d

    :cond_1a
    move v0, v1

    goto :goto_13
.end method

.method public static checkedMultiply(JJ)J
    .registers 14
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    xor-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long v4, p2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x41

    if-le v0, v3, :cond_24

    mul-long v0, p0, p2

    :goto_23
    return-wide v0

    :cond_24
    const/16 v3, 0x40

    if-lt v0, v3, :cond_4e

    move v0, v1

    :goto_29
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    cmp-long v0, p0, v8

    if-ltz v0, :cond_50

    move v3, v1

    :goto_31
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p2, v4

    if-eqz v0, :cond_52

    move v0, v1

    :goto_38
    or-int/2addr v0, v3

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long v4, p0, p2

    cmp-long v0, p0, v8

    if-eqz v0, :cond_48

    div-long v6, v4, p0

    cmp-long v0, v6, p2

    if-nez v0, :cond_49

    :cond_48
    move v2, v1

    :cond_49
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    move-wide v0, v4

    goto :goto_23

    :cond_4e
    move v0, v2

    goto :goto_29

    :cond_50
    move v3, v2

    goto :goto_31

    :cond_52
    move v0, v2

    goto :goto_38
.end method

.method public static checkedPow(JI)J
    .registers 13
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v0, 0x1

    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-wide/16 v6, -0x2

    cmp-long v6, p0, v6

    if-ltz v6, :cond_26

    move v7, v4

    :goto_12
    const-wide/16 v8, 0x2

    cmp-long v6, p0, v8

    if-gtz v6, :cond_28

    move v6, v4

    :goto_19
    and-int/2addr v6, v7

    if-eqz v6, :cond_54

    long-to-int v6, p0

    packed-switch v6, :pswitch_data_80

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_26
    move v7, v5

    goto :goto_12

    :cond_28
    move v6, v5

    goto :goto_19

    :pswitch_2a
    if-nez p2, :cond_2d

    :cond_2c
    :goto_2c
    :pswitch_2c
    return-wide v0

    :cond_2d
    const-wide/16 v0, 0x0

    goto :goto_2c

    :pswitch_30
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2c

    move-wide v0, v2

    goto :goto_2c

    :pswitch_36
    const/16 v2, 0x3f

    if-ge p2, v2, :cond_40

    move v2, v4

    :goto_3b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    shl-long/2addr v0, p2

    goto :goto_2c

    :cond_40
    move v2, v5

    goto :goto_3b

    :pswitch_42
    const/16 v6, 0x40

    if-ge p2, v6, :cond_4f

    :goto_46
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_51

    shl-long/2addr v0, p2

    goto :goto_2c

    :cond_4f
    move v4, v5

    goto :goto_46

    :cond_51
    shl-long v0, v2, p2

    goto :goto_2c

    :cond_54
    :goto_54
    packed-switch p2, :pswitch_data_8e

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_7d

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    move-wide v2, v0

    :goto_60
    shr-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_7b

    const-wide v0, 0xb504f333L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_79

    move v0, v4

    :goto_6e
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long/2addr p0, p0

    move-wide v0, v2

    goto :goto_54

    :pswitch_74
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    goto :goto_2c

    :cond_79
    move v0, v5

    goto :goto_6e

    :cond_7b
    move-wide v0, v2

    goto :goto_54

    :cond_7d
    move-wide v2, v0

    goto :goto_60

    nop

    :pswitch_data_80
    .packed-switch -0x2
        :pswitch_42
        :pswitch_30
        :pswitch_2a
        :pswitch_2c
        :pswitch_36
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_74
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .registers 14
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sub-long v4, p0, p2

    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-ltz v2, :cond_18

    move v2, v0

    :goto_d
    xor-long v6, p0, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1a

    :goto_13
    or-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v4

    :cond_18
    move v2, v1

    goto :goto_d

    :cond_1a
    move v0, v1

    goto :goto_13
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .registers 15
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    div-long v2, p0, p2

    mul-long v0, p2, v2

    sub-long v0, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_10

    :goto_f
    return-wide v2

    :cond_10
    xor-long v4, p0, p2

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    long-to-int v4, v4

    or-int/lit8 v5, v4, 0x1

    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_86

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_29
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :goto_30
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_33
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_83

    int-to-long v0, v5

    add-long/2addr v0, v2

    :goto_38
    move-wide v2, v0

    goto :goto_f

    :cond_3a
    const/4 v0, 0x0

    goto :goto_30

    :pswitch_3c
    const/4 v0, 0x1

    goto :goto_34

    :pswitch_3e
    if-lez v5, :cond_42

    const/4 v0, 0x1

    goto :goto_34

    :cond_42
    const/4 v0, 0x0

    goto :goto_34

    :pswitch_44
    if-gez v5, :cond_48

    const/4 v0, 0x1

    goto :goto_34

    :cond_48
    const/4 v0, 0x0

    goto :goto_34

    :pswitch_4a
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_79

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, v0, :cond_72

    const/4 v0, 0x1

    :goto_5f
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, v1, :cond_74

    const/4 v1, 0x1

    move v4, v1

    :goto_65
    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_77

    const/4 v1, 0x1

    :goto_6f
    and-int/2addr v1, v4

    or-int/2addr v0, v1

    goto :goto_34

    :cond_72
    const/4 v0, 0x0

    goto :goto_5f

    :cond_74
    const/4 v1, 0x0

    move v4, v1

    goto :goto_65

    :cond_77
    const/4 v1, 0x0

    goto :goto_6f

    :cond_79
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_81

    const/4 v0, 0x1

    goto :goto_34

    :cond_81
    const/4 v0, 0x0

    goto :goto_34

    :cond_83
    move-wide v0, v2

    goto :goto_38

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_29
        :pswitch_33
        :pswitch_44
        :pswitch_3c
        :pswitch_3e
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public static factorial(I)J
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v0, p0

    :goto_e
    return-wide v0

    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_e
.end method

.method static fitsInInt(J)Z
    .registers 4

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static gcd(JJ)J
    .registers 12

    const-wide/16 v2, 0x0

    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    cmp-long v0, p0, v2

    if-nez v0, :cond_11

    :goto_10
    return-wide p2

    :cond_11
    cmp-long v0, p2, v2

    if-nez v0, :cond_17

    move-wide p2, p0

    goto :goto_10

    :cond_17
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shr-long v2, p0, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    shr-long v0, p2, v5

    :goto_23
    cmp-long v6, v2, v0

    if-eqz v6, :cond_36

    sub-long/2addr v2, v0

    const/16 v6, 0x3f

    shr-long v6, v2, v6

    and-long/2addr v6, v2

    sub-long/2addr v2, v6

    sub-long/2addr v2, v6

    add-long/2addr v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr v2, v6

    goto :goto_23

    :cond_36
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-long p2, v2, v0

    goto :goto_10
.end method

.method public static isPowerOfTwo(J)Z
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p0, v6

    if-lez v2, :cond_14

    move v2, v0

    :goto_9
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_16

    :goto_12
    and-int/2addr v0, v2

    return v0

    :cond_14
    move v2, v1

    goto :goto_9

    :cond_16
    move v0, v1

    goto :goto_12
.end method

.method static lessThanBranchFree(JJ)I
    .registers 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v2, -0x1

    sub-long v0, p0, p2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .registers 9
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v1

    sget-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v0, v1

    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_3a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_1e
    cmp-long v0, p0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_23
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_26
    move v0, v1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_23

    :pswitch_2a
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_27

    :pswitch_30
    sget-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v2, v0, v1

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_27

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_2a
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method static log10Floor(J)I
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .registers 7

    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_18
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_1f
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    :goto_25
    return v0

    :pswitch_26
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    goto :goto_25

    :pswitch_31
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide v2, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v2, v0

    rsub-int/lit8 v0, v0, 0x3f

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_25

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_26
        :pswitch_26
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public static mean(JJ)J
    .registers 10

    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .registers 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    rem-long v0, p0, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_15

    :goto_14
    return-wide v0

    :cond_15
    add-long/2addr v0, p2

    goto :goto_14
.end method

.method static multiplyFraction(JJJ)J
    .registers 10

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    div-long v0, p2, p4

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    div-long v2, p0, v0

    div-long v0, p4, v0

    div-long v0, p2, v0

    mul-long/2addr v0, v2

    goto :goto_8
.end method

.method public static pow(JI)J
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const/16 v6, 0x40

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x1

    const-string v4, "exponent"

    invoke-static {v4, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-wide/16 v4, -0x2

    cmp-long v4, v4, p0

    if-gtz v4, :cond_40

    const-wide/16 v4, 0x2

    cmp-long v4, p0, v4

    if-gtz v4, :cond_40

    long-to-int v4, p0

    packed-switch v4, :pswitch_data_56

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_21
    if-nez p2, :cond_24

    :cond_23
    :goto_23
    :pswitch_23
    return-wide v0

    :cond_24
    move-wide v0, v2

    goto :goto_23

    :pswitch_26
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_23

    const-wide/16 v0, -0x1

    goto :goto_23

    :pswitch_2d
    if-ge p2, v6, :cond_31

    shl-long v2, v0, p2

    :cond_31
    move-wide v0, v2

    goto :goto_23

    :pswitch_33
    if-ge p2, v6, :cond_3e

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_3b

    shl-long/2addr v0, p2

    goto :goto_23

    :cond_3b
    shl-long/2addr v0, p2

    neg-long v0, v0

    goto :goto_23

    :cond_3e
    move-wide v0, v2

    goto :goto_23

    :cond_40
    move-wide v6, v0

    move-wide v4, p0

    :goto_42
    packed-switch p2, :pswitch_data_64

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_54

    move-wide v2, v0

    :goto_4a
    mul-long/2addr v6, v2

    mul-long/2addr v4, v4

    shr-int/lit8 p2, p2, 0x1

    goto :goto_42

    :pswitch_4f
    move-wide v0, v6

    goto :goto_23

    :pswitch_51
    mul-long v0, v6, v4

    goto :goto_23

    :cond_54
    move-wide v2, v4

    goto :goto_4a

    :pswitch_data_56
    .packed-switch -0x2
        :pswitch_33
        :pswitch_26
        :pswitch_21
        :pswitch_23
        :pswitch_2d
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_51
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .registers 13
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v8, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "x"

    invoke-static {v2, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v2

    if-eqz v2, :cond_16

    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    :goto_15
    return-wide v0

    :cond_16
    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long v4, v2, v2

    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_60

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_2f
    cmp-long v4, v4, p0

    if-nez v4, :cond_38

    :goto_33
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    move-wide v0, v2

    goto :goto_15

    :cond_38
    move v0, v1

    goto :goto_33

    :pswitch_3a
    cmp-long v0, p0, v4

    if-gez v0, :cond_41

    sub-long v0, v2, v8

    goto :goto_15

    :cond_41
    move-wide v0, v2

    goto :goto_15

    :pswitch_43
    cmp-long v0, p0, v4

    if-lez v0, :cond_4a

    add-long v0, v2, v8

    goto :goto_15

    :cond_4a
    move-wide v0, v2

    goto :goto_15

    :pswitch_4c
    cmp-long v4, p0, v4

    if-gez v4, :cond_5d

    :goto_50
    int-to-long v0, v0

    sub-long v0, v2, v0

    mul-long v2, v0, v0

    add-long/2addr v2, v0

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_15

    :cond_5d
    move v0, v1

    goto :goto_50

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3a
        :pswitch_3a
        :pswitch_43
        :pswitch_43
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method
