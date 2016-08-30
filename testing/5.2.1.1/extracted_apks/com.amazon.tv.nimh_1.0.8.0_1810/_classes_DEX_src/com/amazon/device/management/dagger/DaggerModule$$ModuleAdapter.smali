.class public final Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "DaggerModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAllowanceManagerProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationManagerFactoryProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvidePackageManagerProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideMetricsFactoryProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideEnrollmentStatusProviderProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideConnectivityManagerProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideClockProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;,
        Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/amazon/device/management/dagger/DaggerModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.amazon.device.management.BootCompleteReceiver"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "members/com.amazon.device.management.ConnectivityChangeReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "members/com.amazon.device.management.PackageChangedReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "members/com.amazon.device.management.PackageInstalledReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "members/com.amazon.device.management.DeviceManagementSchedulingService"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "members/com.amazon.device.management.DeviceManagementNotificationActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "members/com.amazon.device.management.DeviceManagementService"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "members/com.amazon.device.management.remoteconfig.RemoteSettingsManager"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "members/com.amazon.device.management.allowance.AllowanceDeserializer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "members/com.fasterxml.jackson.databind.ObjectMapper"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 19
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 22
    const-class v1, Lcom/amazon/device/management/dagger/DaggerModule;

    sget-object v2, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v6, 0x1

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/amazon/device/management/dagger/DaggerModule;)V
    .registers 5
    .param p1, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p2, "module"    # Lcom/amazon/device/management/dagger/DaggerModule;

    .prologue
    .line 31
    const-string v0, "android.app.AlarmManager"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 32
    const-string v0, "android.content.Context"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 33
    const-string v0, "com.amazon.device.management.hostbridge.Clock"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideClockProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideClockProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 34
    const-string v0, "android.net.ConnectivityManager"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideConnectivityManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideConnectivityManagerProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 35
    const-string v0, "com.amazon.device.management.hostbridge.EnrollmentStatusProvider"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideEnrollmentStatusProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideEnrollmentStatusProviderProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 36
    const-string v0, "com.amazon.client.metrics.MetricsFactory"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideMetricsFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideMetricsFactoryProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 37
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 38
    const-string v0, "android.content.pm.PackageManager"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvidePackageManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvidePackageManagerProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 39
    const-string v0, "java.util.Random"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.amazon.content.common.remoteconfig.RemoteConfigurationHelper<com.amazon.device.management.remoteconfig.RemoteSettings>"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.amazon.content.common.remoteconfig.RemoteConfigurationManagerFactory"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationManagerFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationManagerFactoryProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.amazon.device.management.allowance.AllowanceManager"

    new-instance v1, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAllowanceManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAllowanceManagerProvidesAdapter;-><init>(Lcom/amazon/device/management/dagger/DaggerModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 43
    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 16
    check-cast p2, Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/amazon/device/management/dagger/DaggerModule;)V

    return-void
.end method
