.class Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;
.super Lcom/amazon/device/management/metrics/MetricsHelper;
.source "RemoteSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetricsHelper"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RmtSttngsMgrMetricsHlpr"

.field static final METRICS_CLASS_NAME:Ljava/lang/String; = "RemoteSettingsManager"

.field private static final METRIC_ASYNC_REFRESH_FAILURE_TIMER:Ljava/lang/String; = "AsyncRefreshFailureTime"

.field private static final METRIC_ASYNC_REFRESH_SUCCESS_TIMER:Ljava/lang/String; = "AsyncRefreshSuccessTime"

.field private static final METRIC_SYNC_REFRESH_FAILURE_TIMER:Ljava/lang/String; = "SyncRefreshFailureTime"

.field private static final METRIC_SYNC_REFRESH_SUCCESS_TIMER:Ljava/lang/String; = "SyncRefreshSuccessTime"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/MetricsFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 326
    const-string v0, "RmtSttngsMgrMetricsHlpr"

    const-string v1, "RemoteSettingsManager"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/device/management/metrics/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/client/metrics/MetricsFactory;Ljava/lang/String;)V

    .line 327
    return-void
.end method


# virtual methods
.method public recordAsyncRefreshFailure(J)V
    .registers 8
    .param p1, "elapsedMillisDuringRefresh"    # J

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 337
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-string v1, "AsyncRefreshFailureTime"

    long-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 339
    return-void
.end method

.method public recordAsyncRefreshSuccess(J)V
    .registers 8
    .param p1, "elapsedMillisDuringRefresh"    # J

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 349
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-string v1, "AsyncRefreshSuccessTime"

    long-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 351
    return-void
.end method

.method public recordSyncRefreshFailure(J)V
    .registers 8
    .param p1, "elapsedMillisDuringRefresh"    # J

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 361
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-string v1, "SyncRefreshFailureTime"

    long-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 363
    return-void
.end method

.method public recordSyncRefreshSuccess(J)V
    .registers 8
    .param p1, "elapsedMillisDuringRefresh"    # J

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 373
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-string v1, "SyncRefreshSuccessTime"

    long-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 374
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 375
    return-void
.end method
