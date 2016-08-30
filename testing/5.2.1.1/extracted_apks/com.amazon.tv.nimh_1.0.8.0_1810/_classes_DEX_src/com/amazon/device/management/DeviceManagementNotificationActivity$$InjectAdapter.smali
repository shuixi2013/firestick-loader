.class public final Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DeviceManagementNotificationActivity$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/amazon/device/management/DeviceManagementNotificationActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/device/management/DeviceManagementNotificationActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/amazon/device/management/DeviceManagementNotificationActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mMetricsHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectMapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 29
    const-string v0, "com.amazon.device.management.DeviceManagementNotificationActivity"

    const-string v1, "members/com.amazon.device.management.DeviceManagementNotificationActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 39
    const-string v0, "com.amazon.device.management.DeviceManagementNotificationActivity$MetricsHelper"

    const-class v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->mMetricsHelper:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    const-class v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->mObjectMapper:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lcom/amazon/device/management/DeviceManagementNotificationActivity;
    .registers 2

    .prologue
    .line 59
    new-instance v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-direct {v0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;-><init>()V

    .line 60
    .local v0, "result":Lcom/amazon/device/management/DeviceManagementNotificationActivity;
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/DeviceManagementNotificationActivity;)V

    .line 61
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->get()Lcom/amazon/device/management/DeviceManagementNotificationActivity;

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
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->mMetricsHelper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->mObjectMapper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public injectMembers(Lcom/amazon/device/management/DeviceManagementNotificationActivity;)V
    .registers 3
    .param p1, "object"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->mMetricsHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    .line 71
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->mObjectMapper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    iput-object v0, p1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 72
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 23
    check-cast p1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-virtual {p0, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/DeviceManagementNotificationActivity;)V

    return-void
.end method
