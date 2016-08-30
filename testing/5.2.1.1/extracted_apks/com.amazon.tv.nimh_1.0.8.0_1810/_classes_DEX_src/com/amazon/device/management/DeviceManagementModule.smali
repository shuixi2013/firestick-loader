.class public Lcom/amazon/device/management/DeviceManagementModule;
.super Ljava/lang/Object;
.source "DeviceManagementModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/DeviceManagementModule$DefaultEnrollmentStatusProvider;,
        Lcom/amazon/device/management/DeviceManagementModule$DefaultClock;,
        Lcom/amazon/device/management/DeviceManagementModule$Builder;
    }
.end annotation


# instance fields
.field private final mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

.field private final mClock:Lcom/amazon/device/management/hostbridge/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

.field private mIsInitialized:Z

.field private final mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

.field private final mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/MetricsFactory;Lcom/amazon/device/management/hostbridge/Clock;Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/device/management/allowance/AllowanceManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
    .param p3, "clock"    # Lcom/amazon/device/management/hostbridge/Clock;
    .param p4, "enrollmentStatusProvider"    # Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
    .param p5, "remoteConfigurationManagerFactory"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
    .param p6, "allowanceManager"    # Lcom/amazon/device/management/allowance/AllowanceManager;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementModule;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/amazon/device/management/DeviceManagementModule;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    .line 70
    iput-object p3, p0, Lcom/amazon/device/management/DeviceManagementModule;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    .line 71
    iput-object p4, p0, Lcom/amazon/device/management/DeviceManagementModule;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    .line 72
    iput-object p5, p0, Lcom/amazon/device/management/DeviceManagementModule;->mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    .line 73
    iput-object p6, p0, Lcom/amazon/device/management/DeviceManagementModule;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    .line 74
    return-void
.end method


# virtual methods
.method getAllowanceManager()Lcom/amazon/device/management/allowance/AllowanceManager;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    return-object v0
.end method

.method getClock()Lcom/amazon/device/management/hostbridge/Clock;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEnrollmentStatusProvider()Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    return-object v0
.end method

.method getMetricsFactory()Lcom/amazon/client/metrics/MetricsFactory;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    return-object v0
.end method

.method getRemoteConfigurationManagerFactory()Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementModule;->mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    return-object v0
.end method

.method public initialize()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 80
    iget-boolean v1, p0, Lcom/amazon/device/management/DeviceManagementModule;->mIsInitialized:Z

    if-eqz v1, :cond_6

    .line 98
    :goto_5
    return-void

    .line 83
    :cond_6
    iput-boolean v9, p0, Lcom/amazon/device/management/DeviceManagementModule;->mIsInitialized:Z

    .line 85
    new-instance v0, Lcom/amazon/device/management/dagger/DaggerModule;

    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementModule;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    iget-object v3, p0, Lcom/amazon/device/management/DeviceManagementModule;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    iget-object v4, p0, Lcom/amazon/device/management/DeviceManagementModule;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementModule;->mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    iget-object v6, p0, Lcom/amazon/device/management/DeviceManagementModule;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/management/dagger/DaggerModule;-><init>(Landroid/content/Context;Lcom/amazon/device/management/hostbridge/Clock;Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;Lcom/amazon/client/metrics/MetricsFactory;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/device/management/allowance/AllowanceManager;)V

    .line 88
    .local v0, "daggerModule":Lcom/amazon/device/management/dagger/DaggerModule;
    new-array v1, v9, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ldagger/ObjectGraph;->create([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v7

    .line 89
    .local v7, "objectGraph":Ldagger/ObjectGraph;
    invoke-static {v7}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->setObjectGraph(Ldagger/ObjectGraph;)V

    .line 91
    new-instance v1, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementModule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->schedulePeriodicDeviceManagement()V

    .line 95
    new-instance v8, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v8}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    .line 96
    .local v8, "simpleModule":Lcom/fasterxml/jackson/databind/module/SimpleModule;
    const-class v2, Lcom/amazon/device/management/allowance/Allowance;

    const-class v1, Lcom/amazon/device/management/allowance/AllowanceDeserializer;

    invoke-virtual {v7, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v8, v2, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 97
    const-class v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v7, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    goto :goto_5
.end method
