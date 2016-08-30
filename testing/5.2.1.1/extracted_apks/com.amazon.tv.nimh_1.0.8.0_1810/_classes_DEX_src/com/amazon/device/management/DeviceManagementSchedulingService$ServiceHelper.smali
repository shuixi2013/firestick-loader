.class public Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;
.super Ljava/lang/Object;
.source "DeviceManagementSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementSchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->mContext:Landroid/content/Context;

    .line 280
    return-void
.end method

.method private getBaseIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/amazon/device/management/DeviceManagementSchedulingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public reschedulePeriodicDeviceManagement(J)V
    .registers 6
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.device.management.SchedulingService.ACTUAL_REFRESH_TIME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 306
    return-void
.end method

.method public schedulePeriodicDeviceManagement()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    return-void
.end method
