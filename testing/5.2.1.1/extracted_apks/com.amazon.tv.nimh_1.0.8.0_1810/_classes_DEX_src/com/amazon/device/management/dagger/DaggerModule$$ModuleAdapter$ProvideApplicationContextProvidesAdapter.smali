.class public final Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;
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
    name = "ProvideApplicationContextProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Landroid/content/Context;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/device/management/dagger/DaggerModule;


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/dagger/DaggerModule;)V
    .registers 6
    .param p1, "module"    # Lcom/amazon/device/management/dagger/DaggerModule;

    .prologue
    const/4 v3, 0x0

    .line 107
    const-string v0, "android.content.Context"

    const-string v1, "com.amazon.device.management.dagger.DaggerModule"

    const-string v2, "provideApplicationContext"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    .line 109
    invoke-virtual {p0, v3}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;->setLibrary(Z)V

    .line 110
    return-void
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {v0}, Lcom/amazon/device/management/dagger/DaggerModule;->provideApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
