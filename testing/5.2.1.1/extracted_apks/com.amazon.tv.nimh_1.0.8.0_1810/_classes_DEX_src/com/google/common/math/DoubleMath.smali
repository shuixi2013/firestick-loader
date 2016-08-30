.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$1;,
        Lcom/google/common/math/DoubleMath$MeanAccumulator;
    }
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .registers 7

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/16 v0, 0xaa

    if-le p0, v0, :cond_c

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_b
    return-wide v0

    :cond_c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    and-int/lit8 v0, p0, -0x10

    add-int/lit8 v0, v0, 0x1

    :goto_12
    if-gt v0, p0, :cond_19

    int-to-double v4, v0

    mul-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_19
    sget-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v1, p0, 0x4

    aget-wide v0, v0, v1

    mul-double/2addr v0, v2

    goto :goto_b
.end method

.method public static fuzzyCompare(DDD)I
    .registers 8

    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    cmpg-double v0, p0, p2

    if-gez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_7

    :cond_e
    cmpl-double v0, p0, p2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_7
.end method

.method public static fuzzyEquals(DDD)Z
    .registers 10

    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_21

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_21

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static isMathematicalInteger(D)Z
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isPowerOfTwo(D)Z
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static log2(D)D
    .registers 6

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-lez v0, :cond_28

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_f
    const-string v3, "x must be positive and finite"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v3

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v0

    if-nez v0, :cond_2a

    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    :goto_27
    return v0

    :cond_28
    move v0, v2

    goto :goto_f

    :cond_2a
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_7e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_3b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_42
    move v1, v2

    :cond_43
    :goto_43
    if-eqz v1, :cond_7b

    add-int/lit8 v0, v3, 0x1

    goto :goto_27

    :pswitch_48
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v0

    if-eqz v0, :cond_43

    move v1, v2

    goto :goto_43

    :pswitch_50
    if-gez v3, :cond_5b

    move v0, v1

    :goto_53
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    if-nez v4, :cond_5d

    :goto_59
    and-int/2addr v1, v0

    goto :goto_43

    :cond_5b
    move v0, v2

    goto :goto_53

    :cond_5d
    move v1, v2

    goto :goto_59

    :pswitch_5f
    if-ltz v3, :cond_6a

    move v0, v1

    :goto_62
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    if-nez v4, :cond_6c

    :goto_68
    and-int/2addr v1, v0

    goto :goto_43

    :cond_6a
    move v0, v2

    goto :goto_62

    :cond_6c
    move v1, v2

    goto :goto_68

    :pswitch_6e
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v4

    mul-double/2addr v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_43

    move v1, v2

    goto :goto_43

    :cond_7b
    move v0, v3

    goto :goto_27

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_42
        :pswitch_48
        :pswitch_50
        :pswitch_5f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    new-instance v1, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_a

    :cond_1e
    invoke-virtual {v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    new-instance v1, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_6

    :cond_1a
    invoke-virtual {v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs mean([D)D
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    new-instance v1, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-wide v4, p0, v0

    invoke-virtual {v1, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs mean([I)D
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    new-instance v1, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_13

    aget v3, p0, v0

    int-to-double v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs mean([J)D
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    new-instance v1, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_13

    aget-wide v4, p0, v0

    long-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#isMathematicalInteger, com.google.common.math.DoubleUtils"
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "input is infinite or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_25
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_2c
    :goto_2c
    :pswitch_2c
    return-wide p0

    :pswitch_2d
    cmpl-double v0, p0, v6

    if-gez v0, :cond_2c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_2c

    sub-double/2addr p0, v2

    goto :goto_2c

    :pswitch_39
    cmpg-double v0, p0, v6

    if-lez v0, :cond_2c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_2c

    add-double/2addr p0, v2

    goto :goto_2c

    :pswitch_45
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    add-double/2addr p0, v0

    goto :goto_2c

    :pswitch_51
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    goto :goto_2c

    :pswitch_56
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6a

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    add-double/2addr p0, v0

    goto :goto_2c

    :cond_6a
    move-wide p0, v0

    goto :goto_2c

    :pswitch_6c
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2c

    move-wide p0, v0

    goto :goto_2c

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_39
        :pswitch_2c
        :pswitch_45
        :pswitch_51
        :pswitch_56
        :pswitch_6c
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate, java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v4

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1f

    move v2, v0

    :goto_10
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_21

    :goto_16
    and-int/2addr v0, v2

    if-eqz v0, :cond_23

    double-to-long v0, v4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    move v2, v1

    goto :goto_10

    :cond_21
    move v0, v1

    goto :goto_16

    :cond_23
    invoke-static {v4, v5}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, -0x34

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_1e

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1e
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v4

    const-wide v2, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1c

    move v2, v0

    :goto_10
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1e

    :goto_16
    and-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    double-to-int v0, v4

    return v0

    :cond_1c
    move v2, v1

    goto :goto_10

    :cond_1e
    move v0, v1

    goto :goto_16
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v4

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1c

    move v2, v0

    :goto_10
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1e

    :goto_16
    and-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    double-to-long v0, v4

    return-wide v0

    :cond_1c
    move v2, v1

    goto :goto_10

    :cond_1e
    move v0, v1

    goto :goto_16
.end method
