.class public final Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "DaggerModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideRemoteConfigurationHelperProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
        "<",
        "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
        ">;>;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
        "<",
        "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
        ">;>;"
    }
.end annotation


# instance fields
.field private managerFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/device/management/dagger/DaggerModule;

.field private remoteSettingsDeserializer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/dagger/DaggerModule;)V
    .registers 6
    .param p1, "module"    # Lcom/amazon/device/management/dagger/DaggerModule;

    .prologue
    .line 374
    const-string v0, "com.amazon.content.common.remoteconfig.RemoteConfigurationHelper<com.amazon.device.management.remoteconfig.RemoteSettings>"

    const/4 v1, 0x1

    const-string v2, "com.amazon.device.management.dagger.DaggerModule"

    const-string v3, "provideRemoteConfigurationHelper"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 375
    iput-object p1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->setLibrary(Z)V

    .line 377
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 386
    const-string v0, "com.amazon.content.common.remoteconfig.RemoteConfigurationManagerFactory"

    const-class v1, Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->managerFactory:Ldagger/internal/Binding;

    .line 387
    const-string v0, "com.amazon.device.management.remoteconfig.RemoteSettingsDeserializer"

    const-class v1, Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->remoteSettingsDeserializer:Ldagger/internal/Binding;

    .line 388
    return-void
.end method

.method public get()Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper",
            "<",
            "Lcom/amazon/device/management/remoteconfig/RemoteSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v2, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->managerFactory:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    iget-object v1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->remoteSettingsDeserializer:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/management/dagger/DaggerModule;->provideRemoteConfigurationHelper(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/device/management/remoteconfig/RemoteSettingsDeserializer;)Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->get()Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

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
    .line 396
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->managerFactory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRemoteConfigurationHelperProvidesAdapter;->remoteSettingsDeserializer:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method
