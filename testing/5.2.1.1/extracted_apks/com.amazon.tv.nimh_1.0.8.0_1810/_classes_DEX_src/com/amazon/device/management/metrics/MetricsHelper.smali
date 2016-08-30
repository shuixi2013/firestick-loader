.class public abstract Lcom/amazon/device/management/metrics/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# static fields
.field private static final PROGRAM_NAME_DEBUG_SUFFIX:Ljava/lang/String; = "_debug"


# instance fields
.field private final mApplicationIsDebuggable:Z

.field private final mClassName:Ljava/lang/String;

.field private final mLogTag:Ljava/lang/String;

.field private final mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

.field private final mProgramName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/client/metrics/MetricsFactory;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_d

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logTag must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1b
    if-nez p3, :cond_25

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metricsFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_25
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "className must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_33
    iput-object p2, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mLogTag:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    .line 72
    iput-object p4, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mClassName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    :goto_44
    iput-boolean v0, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mApplicationIsDebuggable:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mApplicationIsDebuggable:Z

    if-eqz v0, :cond_66

    const-string v0, "_debug"

    :goto_59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mProgramName:Ljava/lang/String;

    .line 77
    return-void

    .line 75
    :cond_64
    const/4 v0, 0x0

    goto :goto_44

    .line 76
    :cond_66
    const-string v0, ""

    goto :goto_59
.end method


# virtual methods
.method protected createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mProgramName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mClassName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/client/metrics/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    return-object v0
.end method

.method protected incrementCounterAndRecord(Ljava/lang/String;)V
    .registers 6
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/amazon/device/management/metrics/MetricsHelper;->createMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object v0

    .line 128
    .local v0, "metricEvent":Lcom/amazon/client/metrics/MetricEvent;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, p1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/metrics/MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 130
    return-void
.end method

.method protected recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;)V
    .registers 3
    .param p1, "metricEvent"    # Lcom/amazon/client/metrics/MetricEvent;

    .prologue
    .line 96
    sget-object v0, Lcom/amazon/client/metrics/Priority;->NORMAL:Lcom/amazon/client/metrics/Priority;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/management/metrics/MetricsHelper;->recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;Lcom/amazon/client/metrics/Priority;)V

    .line 97
    return-void
.end method

.method protected recordMetricEvent(Lcom/amazon/client/metrics/MetricEvent;Lcom/amazon/client/metrics/Priority;)V
    .registers 9
    .param p1, "metricEvent"    # Lcom/amazon/client/metrics/MetricEvent;
    .param p2, "priority"    # Lcom/amazon/client/metrics/Priority;

    .prologue
    .line 106
    iget-boolean v3, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mApplicationIsDebuggable:Z

    if-eqz v3, :cond_37

    .line 107
    invoke-interface {p1}, Lcom/amazon/client/metrics/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "dataPoints":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/client/metrics/DataPoint;>;"
    if-eqz v1, :cond_37

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/DataPoint;

    .line 110
    .local v0, "dataPoint":Lcom/amazon/client/metrics/DataPoint;
    iget-object v3, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Debug Only] Recording data point: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/client/metrics/DataPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 115
    .end local v0    # "dataPoint":Lcom/amazon/client/metrics/DataPoint;
    .end local v1    # "dataPoints":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/client/metrics/DataPoint;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_37
    iget-object v3, p0, Lcom/amazon/device/management/metrics/MetricsHelper;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    invoke-interface {v3, p1, p2}, Lcom/amazon/client/metrics/MetricsFactory;->record(Lcom/amazon/client/metrics/MetricEvent;Lcom/amazon/client/metrics/Priority;)V

    .line 116
    return-void
.end method
