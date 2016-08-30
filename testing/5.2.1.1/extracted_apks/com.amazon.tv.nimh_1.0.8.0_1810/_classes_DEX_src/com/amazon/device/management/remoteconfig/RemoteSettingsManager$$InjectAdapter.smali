.class public final Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "RemoteSettingsManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private clock:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/hostbridge/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private metricsHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private persistentStorageHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;",
            ">;"
        }
    .end annotation
.end field

.field private remoteConfigurationHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 27
    const-string v0, "com.amazon.device.management.remoteconfig.RemoteSettingsManager"

    const-string v1, "members/com.amazon.device.management.remoteconfig.RemoteSettingsManager"

    const/4 v2, 0x1

    const-class v3, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 37
    const-string v0, "com.amazon.device.management.hostbridge.Clock"

    const-class v1, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->clock:Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.amazon.device.management.remoteconfig.RemoteSettingsManager$MetricsHelper"

    const-class v1, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->metricsHelper:Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.amazon.device.management.remoteconfig.RemoteSettingsManager$PersistentStorageHelper"

    const-class v1, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->persistentStorageHelper:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.amazon.content.common.remoteconfig.RemoteConfigurationHelper<com.amazon.device.management.remoteconfig.RemoteSettings>"

    const-class v1, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->remoteConfigurationHelper:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
    .registers 6

    .prologue
    .line 61
    new-instance v0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

    iget-object v1, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->clock:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/management/hostbridge/Clock;

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->metricsHelper:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->persistentStorageHelper:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;

    iget-object v4, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->remoteConfigurationHelper:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;-><init>(Lcom/amazon/device/management/hostbridge/Clock;Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$MetricsHelper;Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)V

    .line 62
    .local v0, "result":Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->get()Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;

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
    .line 49
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->clock:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->metricsHelper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->persistentStorageHelper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$$InjectAdapter;->remoteConfigurationHelper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
