.class public Lcom/amazon/device/management/allowance/DefaultAllowance;
.super Lcom/amazon/device/management/allowance/Allowance;
.source "DefaultAllowance.java"


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/allowance/AllowanceState;)V
    .registers 2
    .param p1, "defaultState"    # Lcom/amazon/device/management/allowance/AllowanceState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/device/management/allowance/Allowance;-><init>(Lcom/amazon/device/management/allowance/AllowanceState;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "defaultState"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "absentBehavior"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/amazon/device/management/allowance/AllowanceState;->fromString(Ljava/lang/String;)Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/management/allowance/DefaultAllowance;-><init>(Lcom/amazon/device/management/allowance/AllowanceState;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected computeAllowance(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 3
    .param p1, "closure"    # Lcom/amazon/device/management/allowance/AllowanceClosure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    sget-object v0, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    return-object v0
.end method
