.class public final Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ConnectivityChangeReceiver$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/amazon/device/management/ConnectivityChangeReceiver;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/device/management/ConnectivityChangeReceiver;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/amazon/device/management/ConnectivityChangeReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlarmManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/app/AlarmManager;",
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

.field private mConnectivityManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceManagementServiceHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;",
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
    .line 33
    const-string v0, "com.amazon.device.management.ConnectivityChangeReceiver"

    const-string v1, "members/com.amazon.device.management.ConnectivityChangeReceiver"

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 43
    const-string v0, "android.app.AlarmManager"

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mAlarmManager:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.amazon.device.management.hostbridge.Clock"

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mClock:Ldagger/internal/Binding;

    .line 45
    const-string v0, "android.net.ConnectivityManager"

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mConnectivityManager:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.amazon.device.management.DeviceManagementService$ServiceHelper"

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mDeviceManagementServiceHelper:Ldagger/internal/Binding;

    .line 47
    const-string v0, "android.content.pm.PackageManager"

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mPackageManager:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.amazon.device.management.remoteconfig.RemoteSettingsManager"

    const-class v1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mRemoteSettingsManager:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public get()Lcom/amazon/device/management/ConnectivityChangeReceiver;
    .registers 2

    .prologue
    .line 71
    new-instance v0, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-direct {v0}, Lcom/amazon/device/management/ConnectivityChangeReceiver;-><init>()V

    .line 72
    .local v0, "result":Lcom/amazon/device/management/ConnectivityChangeReceiver;
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/ConnectivityChangeReceiver;)V

    .line 73
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->get()Lcom/amazon/device/management/ConnectivityChangeReceiver;

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
    .line 57
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mAlarmManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mClock:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mConnectivityManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mDeviceManagementServiceHelper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mPackageManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mRemoteSettingsManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public injectMembers(Lcom/amazon/device/management/ConnectivityChangeReceiver;)V
    .registers 3
    .param p1, "object"    # Lcom/amazon/device/management/ConnectivityChangeReceiver;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mAlarmManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 83
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mClock:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/hostbridge/Clock;

    iput-object v0, p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mClock:Lcom/amazon/device/management/hostbridge/Clock;

    .line 84
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mConnectivityManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mDeviceManagementServiceHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;

    iput-object v0, p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;

    .line 86
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mPackageManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    iget-object v0, p0, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->mRemoteSettingsManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    iput-object v0, p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;->mRemoteSettingsManager:Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    .line 88
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 23
    check-cast p1, Lcom/amazon/device/management/ConnectivityChangeReceiver;

    invoke-virtual {p0, p1}, Lcom/amazon/device/management/ConnectivityChangeReceiver$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/ConnectivityChangeReceiver;)V

    return-void
.end method
