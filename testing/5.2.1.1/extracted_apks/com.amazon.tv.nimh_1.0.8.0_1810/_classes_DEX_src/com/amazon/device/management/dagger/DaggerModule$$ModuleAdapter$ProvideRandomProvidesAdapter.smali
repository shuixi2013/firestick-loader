.class public final Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;
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
    name = "ProvideRandomProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Ljava/util/Random;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/util/Random;",
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
    .line 342
    const-string v0, "java.util.Random"

    const/4 v1, 0x1

    const-string v2, "com.amazon.device.management.dagger.DaggerModule"

    const-string v3, "provideRandom"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 343
    iput-object p1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;->setLibrary(Z)V

    .line 345
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;->get()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Random;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideRandomProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {v0}, Lcom/amazon/device/management/dagger/DaggerModule;->provideRandom()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method
