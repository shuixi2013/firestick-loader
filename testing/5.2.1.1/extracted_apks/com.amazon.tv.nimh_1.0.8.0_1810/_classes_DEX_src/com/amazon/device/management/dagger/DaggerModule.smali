.class public Lcom/amazon/device/management/dagger/DaggerModule;
.super Ljava/lang/Object;
.source "DaggerModule.java"


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/amazon/device/management/BootCompleteReceiver;,
        Lcom/amazon/device/management/ConnectivityChangeReceiver;,
        Lcom/amazon/device/management/PackageChangedReceiver;,
        Lcom/amazon/device/management/PackageInstalledReceiver;,
        Lcom/amazon/device/management/DeviceManagementSchedulingService;,
        Lcom/amazon/device/management/DeviceManagementNotificationActivity;,
        Lcom/amazon/device/management/DeviceManagementService;,
        Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;,
        Lcom/amazon/device/management/allowance/AllowanceDeserializer;,
        Lcom/fasterxml/jackson/databind/ObjectMapper;
    }
.end annotation


# instance fields
.field private final mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mClock:Lcom/amazon/device/management/hostbridge/Clock;

.field private final mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

.field private final mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

.field private final mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/management/hostbridge/Clock;Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;Lcom/amazon/client/metrics/MetricsFactory;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/device/management/allowance/AllowanceManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clock"    # Lcom/amazon/device/management/hostbridge/Clock;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "enrollmentStatusProvider"    # Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "metricsFactory"    # Lcom/amazon/client/metrics/MetricsFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "remoteConfigurationManagerFactory"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "allowanceManager"    # Lcom/amazon/device/management/allowance/AllowanceManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mApplicationContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    .line 88
    iput-object p3, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    .line 89
    iput-object p4, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    .line 90
    iput-object p5, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    .line 91
    iput-object p6, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    .line 92
    return-void
.end method


# virtual methods
.method public provideAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 96
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method public provideAllowanceManager()Lcom/amazon/device/management/allowance/AllowanceManager;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    return-object v0
.end method

.method public provideApplicationContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public provideClock()Lcom/amazon/device/management/hostbridge/Clock;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    return-object v0
.end method

.method public provideConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 111
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public provideEnrollmentStatusProvider()Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    return-object v0
.end method

.method public provideMetricsFactory()Lcom/amazon/client/metrics/MetricsFactory;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mMetricsFactory:Lcom/amazon/client/metrics/MetricsFactory;

    return-object v0
.end method

.method public provideObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public providePackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public provideRandom()Ljava/util/Random;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method public provideRemoteConfigurationHelper(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;)Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
    .registers 4
    .param p1, "managerFactory"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
    .param p2, "remoteSettingsDeserializer"    # Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;",
            ")",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    invoke-direct {v0, p1, p2}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/content/common/remoteconfig/JsonDeserializer;)V

    return-object v0
.end method

.method public provideRemoteConfigurationManagerFactory()Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule;->mRemoteConfigurationManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    return-object v0
.end method
