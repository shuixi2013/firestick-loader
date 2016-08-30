.class Lcom/amazon/device/management/DeviceManagementModule$DefaultClock;
.super Ljava/lang/Object;
.source "DeviceManagementModule.java"

# interfaces
.implements Lcom/amazon/device/management/hostbridge/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultClock"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .registers 3

    .prologue
    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()Ljava/util/Date;
    .registers 5

    .prologue
    .line 295
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementModule$DefaultClock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
