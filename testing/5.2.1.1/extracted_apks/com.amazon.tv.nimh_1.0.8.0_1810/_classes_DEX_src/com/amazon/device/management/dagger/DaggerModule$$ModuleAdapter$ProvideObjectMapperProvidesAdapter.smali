.class public final Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;
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
    name = "ProvideObjectMapperProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
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
    .line 265
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    const/4 v1, 0x1

    const-string v2, "com.amazon.device.management.dagger.DaggerModule"

    const-string v3, "provideObjectMapper"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;->setLibrary(Z)V

    .line 268
    return-void
.end method


# virtual methods
.method public get()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;->module:Lcom/amazon/device/management/dagger/DaggerModule;

    invoke-virtual {v0}, Lcom/amazon/device/management/dagger/DaggerModule;->provideObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/amazon/device/management/dagger/DaggerModule$$ModuleAdapter$ProvideObjectMapperProvidesAdapter;->get()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method
