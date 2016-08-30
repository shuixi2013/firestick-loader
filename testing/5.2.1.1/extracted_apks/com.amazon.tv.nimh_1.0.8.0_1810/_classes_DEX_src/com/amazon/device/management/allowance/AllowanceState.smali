.class public final enum Lcom/amazon/device/management/allowance/AllowanceState;
.super Ljava/lang/Enum;
.source "AllowanceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/management/allowance/AllowanceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/management/allowance/AllowanceState;

.field public static final enum ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;

.field public static final enum BLOCK:Lcom/amazon/device/management/allowance/AllowanceState;

.field public static final enum DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazon/device/management/allowance/AllowanceState;

    const-string v1, "ALLOW"

    const-string v2, "allow"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/device/management/allowance/AllowanceState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/management/allowance/AllowanceState;->ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 26
    new-instance v0, Lcom/amazon/device/management/allowance/AllowanceState;

    const-string v1, "BLOCK"

    const-string v2, "block"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/device/management/allowance/AllowanceState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/management/allowance/AllowanceState;->BLOCK:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 33
    new-instance v0, Lcom/amazon/device/management/allowance/AllowanceState;

    const-string v1, "DEFERRED"

    const-string v2, "deferred"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazon/device/management/allowance/AllowanceState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/device/management/allowance/AllowanceState;

    sget-object v1, Lcom/amazon/device/management/allowance/AllowanceState;->ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/management/allowance/AllowanceState;->BLOCK:Lcom/amazon/device/management/allowance/AllowanceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/device/management/allowance/AllowanceState;->$VALUES:[Lcom/amazon/device/management/allowance/AllowanceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/amazon/device/management/allowance/AllowanceState;->mTitle:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 6
    .param p0, "from"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-static {}, Lcom/amazon/device/management/allowance/AllowanceState;->values()[Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v0

    .local v0, "arr$":[Lcom/amazon/device/management/allowance/AllowanceState;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 58
    .local v3, "value":Lcom/amazon/device/management/allowance/AllowanceState;
    iget-object v4, v3, Lcom/amazon/device/management/allowance/AllowanceState;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 63
    .end local v3    # "value":Lcom/amazon/device/management/allowance/AllowanceState;
    :goto_12
    return-object v3

    .line 57
    .restart local v3    # "value":Lcom/amazon/device/management/allowance/AllowanceState;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 63
    .end local v3    # "value":Lcom/amazon/device/management/allowance/AllowanceState;
    :cond_16
    sget-object v3, Lcom/amazon/device/management/allowance/AllowanceState;->ALLOW:Lcom/amazon/device/management/allowance/AllowanceState;

    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/management/allowance/AllowanceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/allowance/AllowanceState;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/amazon/device/management/allowance/AllowanceState;->$VALUES:[Lcom/amazon/device/management/allowance/AllowanceState;

    invoke-virtual {v0}, [Lcom/amazon/device/management/allowance/AllowanceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/management/allowance/AllowanceState;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/device/management/allowance/AllowanceState;->mTitle:Ljava/lang/String;

    return-object v0
.end method
