.class Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;
.super Lcom/amazon/device/management/metrics/MetricsHelper;
.source "DeviceManagementNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetricsHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final CTA_CLICKED_METRIC:Ljava/lang/String; = "CtaClicked"

.field private static final CTA_FAILED_TO_START_ACTIVITY_METRIC:Ljava/lang/String; = "CtaFailureToStartActivity"

.field private static final CTA_STARTED_ACTIVITY_METRIC:Ljava/lang/String; = "CtaStartedActivity"

.field private static final IO_EXCEPTION_ON_DIALOG_CONFIGURATION:Ljava/lang/String; = "IoExceptionDeserializingDialogConfiguration"

.field private static final LOG_TAG:Ljava/lang/String; = "DvcMgmtNtfctnMetrics"

.field static final METRICS_CLASS_NAME:Ljava/lang/String; = "DeviceManagementNotificationActivity"

.field private static final NOTIFICATION_ACTIVITY_STARTED_WITH_INCORRECT_PARAMS:Ljava/lang/String; = "StartedWithIncorrectParameters"

.field private static final NOTIFICATION_DISMISSED_METRIC:Ljava/lang/String; = "Dismissed"

.field private static final NULL_DIALOG_CONFIGURATION:Ljava/lang/String; = "NullDialogConfiguration"

.field private static final SPECIFIC_METRIC_SEPARATOR:Ljava/lang/String; = "-"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/MetricsFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 379
    const-string v0, "DvcMgmtNtfctnMetrics"

    const-string v1, "DeviceManagementNotificationActivity"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/device/management/metrics/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/client/metrics/MetricsFactory;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private recordGenericAndPackageSpecificCtaMetrics(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctaType"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "genericMetricName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->getMetricPrefix()Ljava/lang/String;
    invoke-static {p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->access$000(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private recordGenericAndPackageSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "genericMetricName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "packageSpecificMetricName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 481
    return-void
.end method


# virtual methods
.method public recordActivityStarted(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctaType"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 436
    const-string v0, "CtaStartedActivity"

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificCtaMetrics(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public recordCtaOnClick(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctaType"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 426
    const-string v0, "CtaClicked"

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificCtaMetrics(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public recordFailureToStartActivity(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctaType"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 446
    const-string v0, "CtaFailureToStartActivity"

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificCtaMetrics(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public recordIoExceptionDeserializingDialogConfiguration(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 397
    const-string v0, "IoExceptionDeserializingDialogConfiguration"

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public recordNotificationDismissed(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 416
    const-string v0, "Dismissed"

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public recordNullDialogConfiguration(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 407
    const-string v0, "NullDialogConfiguration"

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordGenericAndPackageSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public recordStartedWithIncorrectParameters()V
    .registers 2

    .prologue
    .line 387
    const-string v0, "StartedWithIncorrectParameters"

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->incrementCounterAndRecord(Ljava/lang/String;)V

    .line 388
    return-void
.end method
