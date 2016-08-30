.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;
.super Ljava/lang/Object;
.source "Arn.java"


# instance fields
.field private final account:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "vendor"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->vendor:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->region:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->account:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->type:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->id:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static fromArn(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;
    .registers 9
    .param p0, "arnS"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x2

    .line 19
    const-string v0, ":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "arn":[Ljava/lang/String;
    array-length v0, v6

    if-eq v0, v1, :cond_13

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ARN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_13
    const/4 v0, 0x5

    aget-object v0, v6, v0

    const-string v1, "[:/]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, "rel":[Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;

    aget-object v1, v6, v2

    const/4 v2, 0x3

    aget-object v2, v6, v2

    const/4 v3, 0x4

    aget-object v3, v6, v3

    const/4 v4, 0x0

    aget-object v4, v7, v4

    const/4 v5, 0x1

    aget-object v5, v7, v5

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public toArn()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28
    const-string v0, "arn:aws:%s:%s:%s:%s:%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->vendor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->region:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->account:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
