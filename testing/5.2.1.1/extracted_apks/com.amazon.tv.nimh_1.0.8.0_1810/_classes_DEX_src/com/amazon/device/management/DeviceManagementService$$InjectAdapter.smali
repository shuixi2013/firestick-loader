.class public final Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DeviceManagementService$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/amazon/device/management/DeviceManagementService;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/device/management/DeviceManagementService;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/amazon/device/management/DeviceManagementService;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllowanceManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/allowance/AllowanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/hostbridge/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceManagementNotificationActivityHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceManagementSchedulingServiceHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mEnrollmentStatusProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricsHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSettingsManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 35
    const-string v0, "com.amazon.device.management.DeviceManagementService"

    const-string v1, "members/com.amazon.device.management.DeviceManagementService"

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/device/management/DeviceManagementService;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 45
    const-string v0, "com.amazon.device.management.hostbridge.Clock"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mClock:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.amazon.device.management.DeviceManagementNotificationActivity$ActivityHelper"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mDeviceManagementNotificationActivityHelper:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.amazon.device.management.DeviceManagementSchedulingService$ServiceHelper"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mDeviceManagementSchedulingServiceHelper:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.amazon.device.management.hostbridge.EnrollmentStatusProvider"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mEnrollmentStatusProvider:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.amazon.device.management.DeviceManagementService$MetricsHelper"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mMetricsHelper:Ldagger/internal/Binding;

    .line 50
    const-string v0, "android.content.pm.PackageManager"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mPackageManager:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.amazon.device.management.remoteconfig.RemoteSettingsManager"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mRemoteSettingsManager:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.amazon.device.management.allowance.AllowanceManager"

    const-class v1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mAllowanceManager:Ldagger/internal/Binding;

    .line 53
    return-void
.end method

.method public get()Lcom/amazon/device/management/DeviceManagementService;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/amazon/device/management/DeviceManagementService;

    invoke-direct {v0}, Lcom/amazon/device/management/DeviceManagementService;-><init>()V

    .line 78
    .local v0, "result":Lcom/amazon/device/management/DeviceManagementService;
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/DeviceManagementService;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->get()Lcom/amazon/device/management/DeviceManagementService;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mClock:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mDeviceManagementNotificationActivityHelper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mDeviceManagementSchedulingServiceHelper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mEnrollmentStatusProvider:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mMetricsHelper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mPackageManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mRemoteSettingsManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mAllowanceManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public injectMembers(Lcom/amazon/device/management/DeviceManagementService;)V
    .registers 3
    .param p1, "object"    # Lcom/amazon/device/management/DeviceManagementService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mClock:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/hostbridge/Clock;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    .line 89
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mDeviceManagementNotificationActivityHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mDeviceManagementNotificationActivityHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;

    .line 90
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mDeviceManagementSchedulingServiceHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mDeviceManagementSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    .line 91
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mEnrollmentStatusProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mEnrollmentStatusProvider:Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;

    .line 92
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mMetricsHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementService$MetricsHelper;

    .line 93
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mPackageManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mRemoteSettingsManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    .line 95
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->mAllowanceManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/allowance/AllowanceManager;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementService;->mAllowanceManager:Lcom/amazon/device/management/allowance/AllowanceManager;

    .line 96
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 23
    check-cast p1, Lcom/amazon/device/management/DeviceManagementService;

    invoke-virtual {p0, p1}, Lcom/amazon/device/management/DeviceManagementService$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/DeviceManagementService;)V

    return-void
.end method
