.class public abstract Lcom/amazon/device/management/allowance/Allowance;
.super Ljava/lang/Object;
.source "Allowance.java"


# instance fields
.field private final mDefaultState:Lcom/amazon/device/management/allowance/AllowanceState;


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/allowance/AllowanceState;)V
    .registers 2
    .param p1, "defaultState"    # Lcom/amazon/device/management/allowance/AllowanceState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/device/management/allowance/Allowance;->mDefaultState:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 54
    return-void
.end method


# virtual methods
.method public final allowed(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;
    .registers 4
    .param p1, "closure"    # Lcom/amazon/device/management/allowance/AllowanceClosure;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/amazon/device/management/allowance/Allowance;->computeAllowance(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;

    move-result-object v0

    .line 93
    .local v0, "computedAllowance":Lcom/amazon/device/management/allowance/AllowanceState;
    sget-object v1, Lcom/amazon/device/management/allowance/AllowanceState;->DEFERRED:Lcom/amazon/device/management/allowance/AllowanceState;

    invoke-virtual {v1, v0}, Lcom/amazon/device/management/allowance/AllowanceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 94
    iget-object v0, p0, Lcom/amazon/device/management/allowance/Allowance;->mDefaultState:Lcom/amazon/device/management/allowance/AllowanceState;

    .line 96
    .end local v0    # "computedAllowance":Lcom/amazon/device/management/allowance/AllowanceState;
    :cond_e
    return-object v0
.end method

.method protected abstract computeAllowance(Lcom/amazon/device/management/allowance/AllowanceClosure;)Lcom/amazon/device/management/allowance/AllowanceState;
    .param p1    # Lcom/amazon/device/management/allowance/AllowanceClosure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getAbsentBehavior()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "absentBehavior"
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/device/management/allowance/Allowance;->mDefaultState:Lcom/amazon/device/management/allowance/AllowanceState;

    invoke-virtual {v0}, Lcom/amazon/device/management/allowance/AllowanceState;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
