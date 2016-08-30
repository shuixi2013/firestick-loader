.class public Lcom/amazon/tv/nimh/NIMHApplication;
.super Landroid/app/Application;
.source "NIMHApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    new-instance v1, Lcom/amazon/device/management/DeviceManagementModule$Builder;

    invoke-direct {v1}, Lcom/amazon/device/management/DeviceManagementModule$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/amazon/device/management/DeviceManagementModule$Builder;->withContext(Landroid/content/Context;)Lcom/amazon/device/management/DeviceManagementModule$Builder;

    move-result-object v2

    const-string v1, "com.amazon.client.metrics.api"

    invoke-virtual {p0, v1}, Lcom/amazon/tv/nimh/NIMHApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/MetricsFactory;

    invoke-virtual {v2, v1}, Lcom/amazon/device/management/DeviceManagementModule$Builder;->withMetricsFactory(Lcom/amazon/client/metrics/MetricsFactory;)Lcom/amazon/device/management/DeviceManagementModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/management/DeviceManagementModule$Builder;->build()Lcom/amazon/device/management/DeviceManagementModule;

    move-result-object v0

    .line 25
    .local v0, "module":Lcom/amazon/device/management/DeviceManagementModule;
    invoke-virtual {v0}, Lcom/amazon/device/management/DeviceManagementModule;->initialize()V

    .line 26
    return-void
.end method
