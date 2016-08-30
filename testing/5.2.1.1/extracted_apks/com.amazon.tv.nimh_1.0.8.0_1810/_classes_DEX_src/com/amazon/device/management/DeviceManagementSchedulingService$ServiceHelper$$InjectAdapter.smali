.class public final Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DeviceManagementSchedulingService$ServiceHelper$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 24
    const-string v0, "com.amazon.device.management.DeviceManagementSchedulingService$ServiceHelper"

    const-string v1, "members/com.amazon.device.management.DeviceManagementSchedulingService$ServiceHelper"

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 34
    const-string v0, "android.content.Context"

    const-class v1, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper$$InjectAdapter;->context:Ldagger/internal/Binding;

    .line 35
    return-void
.end method

.method public get()Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "result":Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper$$InjectAdapter;->get()Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

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
    .line 43
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
