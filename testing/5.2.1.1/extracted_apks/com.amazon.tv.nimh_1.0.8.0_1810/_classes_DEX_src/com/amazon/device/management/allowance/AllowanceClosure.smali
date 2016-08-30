.class public Lcom/amazon/device/management/allowance/AllowanceClosure;
.super Ljava/lang/Object;
.source "AllowanceClosure.java"


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mContext:Landroid/content/Context;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/device/management/allowance/AllowanceClosure;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/amazon/device/management/allowance/AllowanceClosure;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    iput-object p3, p0, Lcom/amazon/device/management/allowance/AllowanceClosure;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 42
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/management/allowance/AllowanceClosure;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/device/management/allowance/AllowanceClosure;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/device/management/allowance/AllowanceClosure;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method
