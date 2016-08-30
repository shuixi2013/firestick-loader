.class public final Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BootCompleteReceiver$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/amazon/device/management/BootCompleteReceiver;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/amazon/device/management/BootCompleteReceiver;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/amazon/device/management/BootCompleteReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private mSchedulingServiceHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 28
    const-string v0, "com.amazon.device.management.BootCompleteReceiver"

    const-string v1, "members/com.amazon.device.management.BootCompleteReceiver"

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/device/management/BootCompleteReceiver;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 38
    const-string v0, "com.amazon.device.management.DeviceManagementSchedulingService$ServiceHelper"

    const-class v1, Lcom/amazon/device/management/BootCompleteReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;->mSchedulingServiceHelper:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public get()Lcom/amazon/device/management/BootCompleteReceiver;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/amazon/device/management/BootCompleteReceiver;

    invoke-direct {v0}, Lcom/amazon/device/management/BootCompleteReceiver;-><init>()V

    .line 57
    .local v0, "result":Lcom/amazon/device/management/BootCompleteReceiver;
    invoke-virtual {p0, v0}, Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/BootCompleteReceiver;)V

    .line 58
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;->get()Lcom/amazon/device/management/BootCompleteReceiver;

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
    .line 47
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;->mSchedulingServiceHelper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public injectMembers(Lcom/amazon/device/management/BootCompleteReceiver;)V
    .registers 3
    .param p1, "object"    # Lcom/amazon/device/management/BootCompleteReceiver;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;->mSchedulingServiceHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    iput-object v0, p1, Lcom/amazon/device/management/BootCompleteReceiver;->mSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    .line 68
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 23
    check-cast p1, Lcom/amazon/device/management/BootCompleteReceiver;

    invoke-virtual {p0, p1}, Lcom/amazon/device/management/BootCompleteReceiver$$InjectAdapter;->injectMembers(Lcom/amazon/device/management/BootCompleteReceiver;)V

    return-void
.end method
