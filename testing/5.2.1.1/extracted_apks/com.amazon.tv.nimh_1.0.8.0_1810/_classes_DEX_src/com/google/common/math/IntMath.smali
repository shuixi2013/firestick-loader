.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/IntMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0xa

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    :array_2c
    .array-data 1
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
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 4
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
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_72
    .array-data 4
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
    .end array-data

    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-gt p1, p0, :cond_38

    move v0, v1

    :goto_f
    const-string v3, "k (%s) > n (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_29

    sub-int p1, p0, p1

    :cond_29
    sget-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v0, v0

    if-ge p1, v0, :cond_34

    sget-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v0, v0, p1

    if-le p0, v0, :cond_3a

    :cond_34
    const v1, 0x7fffffff

    :goto_37
    :pswitch_37
    return v1

    :cond_38
    move v0, v2

    goto :goto_f

    :cond_3a
    packed-switch p1, :pswitch_data_50

    const-wide/16 v0, 0x1

    :goto_3f
    if-ge v2, p1, :cond_4e

    sub-int v3, p0, v2

    int-to-long v4, v3

    mul-long/2addr v0, v4

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    div-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :pswitch_4c
    move v1, p0

    goto :goto_37

    :cond_4e
    long-to-int v1, v0

    goto :goto_37

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_37
        :pswitch_4c
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .registers 6

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    long-to-int v0, v2

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static checkedMultiply(II)I
    .registers 6

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    long-to-int v0, v2

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static checkedPow(II)I
    .registers 7

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    packed-switch p0, :pswitch_data_64

    move v2, v0

    :goto_c
    packed-switch p1, :pswitch_data_72

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_62

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v2

    move v4, v2

    :goto_18
    shr-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_60

    const v2, -0xb504

    if-gt v2, p0, :cond_5c

    move v3, v0

    :goto_22
    const v2, 0xb504

    if-gt p0, v2, :cond_5e

    move v2, v0

    :goto_28
    and-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-int/2addr p0, p0

    move v2, v4

    goto :goto_c

    :pswitch_2f
    if-nez p1, :cond_32

    :cond_31
    :goto_31
    :pswitch_31
    return v0

    :cond_32
    move v0, v1

    goto :goto_31

    :pswitch_34
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_31

    move v0, v2

    goto :goto_31

    :pswitch_3a
    const/16 v2, 0x1f

    if-ge p1, v2, :cond_3f

    move v1, v0

    :cond_3f
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    shl-int/2addr v0, p1

    goto :goto_31

    :pswitch_44
    const/16 v3, 0x20

    if-ge p1, v3, :cond_49

    move v1, v0

    :cond_49
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_52

    shl-int/2addr v0, p1

    goto :goto_31

    :cond_52
    shl-int v0, v2, p1

    goto :goto_31

    :pswitch_55
    move v0, v2

    goto :goto_31

    :pswitch_57
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    goto :goto_31

    :cond_5c
    move v3, v1

    goto :goto_22

    :cond_5e
    move v2, v1

    goto :goto_28

    :cond_60
    move v2, v4

    goto :goto_c

    :cond_62
    move v4, v2

    goto :goto_18

    :pswitch_data_64
    .packed-switch -0x2
        :pswitch_44
        :pswitch_34
        :pswitch_2f
        :pswitch_31
        :pswitch_3a
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_55
        :pswitch_57
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .registers 6

    int-to-long v0, p0

    int-to-long v2, p1

    sub-long v2, v0, v2

    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    long-to-int v0, v2

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    div-int v2, p0, p1

    mul-int v3, p1, v2

    sub-int v3, p0, v3

    if-nez v3, :cond_18

    :goto_17
    return v2

    :cond_18
    xor-int v4, p0, p1

    shr-int/lit8 v4, v4, 0x1f

    or-int/lit8 v5, v4, 0x1

    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_70

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_2f
    if-nez v3, :cond_3b

    :goto_31
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_34
    move v0, v1

    :cond_35
    :goto_35
    :pswitch_35
    if-eqz v0, :cond_6d

    add-int v0, v2, v5

    :goto_39
    move v2, v0

    goto :goto_17

    :cond_3b
    move v0, v1

    goto :goto_31

    :pswitch_3d
    if-gtz v5, :cond_35

    move v0, v1

    goto :goto_35

    :pswitch_41
    if-ltz v5, :cond_35

    move v0, v1

    goto :goto_35

    :pswitch_45
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v3, v4

    if-nez v3, :cond_69

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v3, :cond_62

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v3, :cond_65

    move v4, v0

    :goto_5a
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_67

    move v3, v0

    :goto_5f
    and-int/2addr v3, v4

    if-eqz v3, :cond_63

    :cond_62
    move v1, v0

    :cond_63
    move v0, v1

    goto :goto_35

    :cond_65
    move v4, v1

    goto :goto_5a

    :cond_67
    move v3, v1

    goto :goto_5f

    :cond_69
    if-gtz v3, :cond_35

    move v0, v1

    goto :goto_35

    :cond_6d
    move v0, v2

    goto :goto_39

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_34
        :pswitch_41
        :pswitch_35
        :pswitch_3d
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 2

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    :goto_e
    return v0

    :cond_f
    const v0, 0x7fffffff

    goto :goto_e
.end method

.method public static gcd(II)I
    .registers 7

    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-nez p0, :cond_d

    :goto_c
    return p1

    :cond_d
    if-nez p1, :cond_11

    move p1, p0

    goto :goto_c

    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shr-int v1, p0, v2

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shr-int v0, p1, v3

    :goto_1d
    if-eq v1, v0, :cond_2c

    sub-int/2addr v1, v0

    shr-int/lit8 v4, v1, 0x1f

    and-int/2addr v4, v1

    sub-int/2addr v1, v4

    sub-int/2addr v1, v4

    add-int/2addr v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr v1, v4

    goto :goto_1d

    :cond_2c
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int p1, v1, v0

    goto :goto_c
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_c

    move v2, v0

    :goto_5
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_e

    :goto_a
    and-int/2addr v0, v2

    return v0

    :cond_c
    move v2, v1

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_a
.end method

.method static lessThanBranchFree(II)I
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sub-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    sget-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v0, v1

    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_1e
    if-ne p0, v0, :cond_26

    const/4 v0, 0x1

    :goto_21
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_24
    move v0, v1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_21

    :pswitch_28
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_25

    :pswitch_2e
    sget-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v0, v0, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_25

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_24
        :pswitch_24
        :pswitch_28
        :pswitch_28
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 3

    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 4

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_16
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_1d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    :goto_23
    return v0

    :pswitch_24
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    goto :goto_23

    :pswitch_2d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    rsub-int/lit8 v0, v0, 0x1f

    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_23

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1d
        :pswitch_1d
        :pswitch_24
        :pswitch_24
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 4

    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .registers 5

    if-gtz p1, :cond_21

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    rem-int v0, p0, p1

    if-ltz v0, :cond_26

    :goto_25
    return v0

    :cond_26
    add-int/2addr v0, p1

    goto :goto_25
.end method

.method public static pow(II)I
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    const/16 v3, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "exponent"

    invoke-static {v2, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    packed-switch p0, :pswitch_data_40

    move v3, v0

    move v2, p0

    :goto_e
    packed-switch p1, :pswitch_data_4e

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3e

    move v1, v0

    :goto_16
    mul-int/2addr v3, v1

    mul-int/2addr v2, v2

    shr-int/lit8 p1, p1, 0x1

    goto :goto_e

    :pswitch_1b
    if-nez p1, :cond_1e

    :cond_1d
    :goto_1d
    :pswitch_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d

    :pswitch_20
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1d

    const/4 v0, -0x1

    goto :goto_1d

    :pswitch_26
    if-ge p1, v3, :cond_2a

    shl-int v1, v0, p1

    :cond_2a
    move v0, v1

    goto :goto_1d

    :pswitch_2c
    if-ge p1, v3, :cond_37

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_34

    shl-int/2addr v0, p1

    goto :goto_1d

    :cond_34
    shl-int/2addr v0, p1

    neg-int v0, v0

    goto :goto_1d

    :cond_37
    move v0, v1

    goto :goto_1d

    :pswitch_39
    move v0, v3

    goto :goto_1d

    :pswitch_3b
    mul-int v0, v2, v3

    goto :goto_1d

    :cond_3e
    move v1, v2

    goto :goto_16

    :pswitch_data_40
    .packed-switch -0x2
        :pswitch_2c
        :pswitch_20
        :pswitch_1b
        :pswitch_1d
        :pswitch_26
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_3b
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_1a
    mul-int v0, v1, v1

    if-ne v0, p0, :cond_24

    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_22
    move v0, v1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_1f

    :pswitch_26
    mul-int v0, v1, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_23

    :pswitch_2e
    mul-int v0, v1, v1

    add-int/2addr v0, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_23

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_22
        :pswitch_22
        :pswitch_26
        :pswitch_26
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
