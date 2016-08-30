.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DEST_PAD_MULTIPLIER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .registers 5

    const/4 v1, 0x0

    new-array v0, p2, [C

    if-lez p1, :cond_8

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_18
    return-object p1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v3

    array-length v2, v3

    move v0, v5

    move v1, v5

    :goto_c
    if-ge p2, v6, :cond_3f

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v4

    if-nez v4, :cond_1b

    :goto_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_1b
    array-length v7, v4

    sub-int v8, p2, v0

    add-int v9, v1, v8

    add-int/2addr v9, v7

    if-ge v2, v9, :cond_2c

    sub-int v2, v6, p2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    invoke-static {v3, v1, v2}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v3

    :cond_2c
    if-lez v8, :cond_54

    invoke-virtual {p1, v0, p2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int v0, v1, v8

    :goto_33
    if-lez v7, :cond_39

    invoke-static {v4, v5, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    :cond_39
    add-int/lit8 v1, p2, 0x1

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_18

    :cond_3f
    sub-int v4, v6, v0

    if-lez v4, :cond_4e

    add-int/2addr v4, v1

    if-ge v2, v4, :cond_4a

    invoke-static {v3, v1, v4}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v3

    :cond_4a
    invoke-virtual {p1, v0, v6, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v1, v4

    :cond_4e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_54
    move v0, v1

    goto :goto_33
.end method
