.class Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;
.super Lcom/amazon/device/management/metrics/MetricsHelper;
.source "DeviceManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetricsHelper"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final ANY_BLACKLISTED_PACKAGE_INSTALLED_METRIC:Ljava/lang/String; = "BlacklistedPackageInstalled"

.field private static final ANY_PACKAGE_DISABLED_SUCCESSFULLY_METRIC:Ljava/lang/String; = "PackageDisabledSuccessfully"

.field private static final ANY_PACKAGE_DISABLE_ATTEMPTED_METRIC:Ljava/lang/String; = "PackageDisabled"

.field private static final ERROR_SERIALIZING_DIALOG_CONFIGURATION:Ljava/lang/String; = "ErrorSerializingDialogConfiguration"

.field private static final LOG_TAG:Ljava/lang/String; = "DvcMgmtSvcMetricsHelper"

.field static final METRICS_CLASS_NAME:Ljava/lang/String; = "DeviceManagementService"

.field private static final NAMED_BLACKLISTED_PACKAGE_INSTALLED_METRIC_FORMAT:Ljava/lang/String; = "BlacklistedPackageInstalled-%s"

.field private static final NAMED_PACKAGE_DISABLED_SUCCESSFULLY_METRIC_FORMAT:Ljava/lang/String; = "PackageDisabledSuccessfully-%s"

.field private static final NAMED_PACKAGE_DISABLE_ATTEMPTED_METRIC_FORMAT:Ljava/lang/String; = "PackageDisabled-%s"

.field private static final REMOTE_SETTINGS_VERSION:Ljava/lang/String; = "RemoteSettingsVersion"

.field private static final TIMER_SINCE_LAST_REMOTE_SETTINGS_REFRESH:Ljava/lang/String; = "TimeSinceLastRemoteSettingsRefresh"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/MetricsFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 517
    const-string v0, "DvcMgmtSvcMetricsHelper"

    const-string v1, "DeviceManagementService"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/device/management/metrics/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/client/metrics/MetricsFactory;Ljava/lang/String;)V

    .line 518
    return-void
.end method


# virtual methods
.method public recordBlacklistedPackageInstalled(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string v0, "BlacklistedPackageInstalled"

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 555
    const-string v0, "BlacklistedPackageInstalled-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 559
    :cond_1a
    return-void
.end method

.method public recordErrorSerializingDialogConfiguration()V
    .registers 2

    .prologue
    .line 566
    const-string v0, "ErrorSerializingDialogConfiguration"

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public recordPackageDisableAttempted(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string v0, "PackageDisabled"

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 530
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 531
    const-string v0, "PackageDisabled-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 533
    :cond_1a
    return-void
.end method

.method public recordPackageDisabledSuccessfully(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string v0, "PackageDisabledSuccessfully"

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 542
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 543
    const-string v0, "PackageDisabledSuccessfully-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 545
    :cond_1a
    return-void
.end method

.method public recordRemoteSettingsVersion(J)V
    .registers 8
    .param p1, "version"    # J

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 576
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-string v1, "RemoteSettingsVersion"

    long-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 577
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 578
    return-void
.end method

.method public recordTimeSinceLastFetch(J)V
    .registers 8
    .param p1, "millisSinceLastUpdate"    # J

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 588
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-string v1, "TimeSinceLastRemoteSettingsRefresh"

    long-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 589
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 590
    return-void
.end method
