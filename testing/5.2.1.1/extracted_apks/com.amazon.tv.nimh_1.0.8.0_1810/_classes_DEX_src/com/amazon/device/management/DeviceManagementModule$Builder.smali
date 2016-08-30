.class public Lcom/amazon/device/management/DeviceManagementModule$Builder;
.super Ljava/lang/Object;
.source "DeviceManagementModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowanceManager:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/amazon/device/management/allowance/AllowanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/amazon/device/management/hostbridge/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnrollmentStatusProvider:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

.field private mRemoteConfigurationManagerFactory:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mClock:Lcom/google/common/base/Optional;

    .line 169
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mEnrollmentStatusProvider:Lcom/google/common/base/Optional;

    .line 170
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mRemoteConfigurationManagerFactory:Lcom/google/common/base/Optional;

    .line 171
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mAllowanceManager:Lcom/google/common/base/Optional;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/device/management/DeviceManagementModule;
    .registers 10

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must pass in a Context when creating a DeviceManagementModule."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_c
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    if-nez v0, :cond_18

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must pass in a MetricsFactory when creating a DeviceManagementModule."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_18
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mClock:Lcom/google/common/base/Optional;

    new-instance v1, Lcom/amazon/device/management/DeviceManagementModule$DefaultClock;

    invoke-direct {v1}, Lcom/amazon/device/management/DeviceManagementModule$DefaultClock;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/management/hostbridge/Clock;

    .line 261
    .local v3, "clock":Lcom/amazon/device/management/hostbridge/Clock;
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mEnrollmentStatusProvider:Lcom/google/common/base/Optional;

    new-instance v1, Lcom/amazon/device/management/DeviceManagementModule$DefaultEnrollmentStatusProvider;

    invoke-direct {v1}, Lcom/amazon/device/management/DeviceManagementModule$DefaultEnrollmentStatusProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    .line 262
    .local v4, "esp":Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mRemoteConfigurationManagerFactory:Lcom/google/common/base/Optional;

    new-instance v1, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mContext:Landroid/content/Context;

    sget v7, Lcom/amazon/device/management/R$string;->com_amazon_device_management_arcus_app_configuration_id:I

    sget v8, Lcom/amazon/device/management/R$string;->com_amazon_device_management_arcus_app_default_configuration_asset_name:I

    invoke-direct {v1, v2, v7, v8}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    .line 268
    .local v5, "remoteConfigFactory":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mAllowanceManager:Lcom/google/common/base/Optional;

    const-string v1, "signatureMatch"

    const-class v2, Lcom/amazon/device/management/allowance/SignatureMatchAllowance;

    invoke-static {v1, v2}, Lcom/amazon/device/management/allowance/AllowanceManager;->of(Ljava/lang/String;Ljava/lang/Class;)Lcom/amazon/device/management/allowance/AllowanceManager;

    move-result-object v1

    const-string v2, "hashMismatch"

    const-class v7, Lcom/amazon/device/management/allowance/HashMismatchAllowance;

    invoke-virtual {v1, v2, v7}, Lcom/amazon/device/management/allowance/AllowanceManager;->and(Ljava/lang/String;Ljava/lang/Class;)Lcom/amazon/device/management/allowance/AllowanceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/device/management/allowance/AllowanceManager;

    .line 272
    .local v6, "allowanceManager":Lcom/amazon/device/management/allowance/AllowanceManager;
    new-instance v0, Lcom/amazon/device/management/DeviceManagementModule;

    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/management/DeviceManagementModule;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/MetricsFactory;Lcom/amazon/device/management/hostbridge/Clock;Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/device/management/allowance/AllowanceManager;)V

    return-object v0
.end method

.method public withAllowanceManager(Lcom/amazon/device/management/allowance/AllowanceManager;)Lcom/amazon/device/management/DeviceManagementModule$Builder;
    .registers 3
    .param p1, "allowanceManager"    # Lcom/amazon/device/management/allowance/AllowanceManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mAllowanceManager:Lcom/google/common/base/Optional;

    .line 242
    return-object p0
.end method

.method public withClock(Lcom/amazon/device/management/hostbridge/Clock;)Lcom/amazon/device/management/DeviceManagementModule$Builder;
    .registers 3
    .param p1, "clock"    # Lcom/amazon/device/management/hostbridge/Clock;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mClock:Lcom/google/common/base/Optional;

    .line 203
    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/device/management/DeviceManagementModule$Builder;
    .registers 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mContext:Landroid/content/Context;

    .line 181
    return-object p0
.end method

.method public withEnrollmentStatusProvider(Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;)Lcom/amazon/device/management/DeviceManagementModule$Builder;
    .registers 3
    .param p1, "enrollmentStatusProvider"    # Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mEnrollmentStatusProvider:Lcom/google/common/base/Optional;

    .line 216
    return-object p0
.end method

.method public withMetricsFactory(Lcom/amazon/client/metrics/MetricsFactory;)Lcom/amazon/device/management/DeviceManagementModule$Builder;
    .registers 2
    .param p1, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    .line 191
    return-object p0
.end method

.method public withRemoteConfigurationManagerFactory(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;)Lcom/amazon/device/management/DeviceManagementModule$Builder;
    .registers 3
    .param p1, "remoteConfigFactory"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule$Builder;->mRemoteConfigurationManagerFactory:Lcom/google/common/base/Optional;

    .line 228
    return-object p0
.end method
