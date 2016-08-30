.class public Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;
.super Ljava/lang/Object;
.source "DeviceManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementService;
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
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->mContext:Landroid/content/Context;

    .line 378
    return-void
.end method

.method private getBaseIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/amazon/device/management/DeviceManagementService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getPendingIntentToStartDeviceManagementService()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.device.management.ManagementService.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "scheduled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getPendingIntentToStartDeviceManagementServiceForNetworkRetry()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 396
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.device.management.ManagementService.RETRY_WITH_AVAILABLE_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "scheduled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public startDeviceManagementService(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.device.management.ManagementService.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v1, "scheduled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 411
    return-void
.end method

.method public startDeviceManagementServiceAndFetch()V
    .registers 4

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.device.management.ManagementService.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "scheduled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 422
    return-void
.end method
