.class public final Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;
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
    name = "ProvideAlarmManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Landroid/app/AlarmManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/app/AlarmManager;",
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

.field private final module:Lcom/amazon/device/management/dagger/DaggerModule;


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/dagger/DaggerModule;)V
    .registers 6
    .param p1, "module"    # Lcom/amazon/device/management/dagger/DaggerModule;

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v0, "android.app.AlarmManager"

    const-string v1, "com.amazon.device.management.dagger.DaggerModule"

    const-string v2, "provideAlarmManager"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    .line 63
    invoke-virtual {p0, v3}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->setLibrary(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 73
    const-string v0, "android.content.Context"

    const-class v1, Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->context:Ldagger/internal/Binding;

    .line 74
    return-void
.end method

.method public get()Landroid/app/AlarmManager;
    .registers 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/amazon/device/management/dagger/DaggerModule;->provideAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->get()Landroid/app/AlarmManager;

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
    .line 82
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideAlarmManagerProvidesAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
