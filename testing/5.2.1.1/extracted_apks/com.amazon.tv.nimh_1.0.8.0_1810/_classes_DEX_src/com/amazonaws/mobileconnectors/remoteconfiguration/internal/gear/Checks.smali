.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;
.super Ljava/lang/Object;
.source "Checks.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgument(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p0, :cond_8

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    if-nez p0, :cond_8

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_8
    return-void
.end method
