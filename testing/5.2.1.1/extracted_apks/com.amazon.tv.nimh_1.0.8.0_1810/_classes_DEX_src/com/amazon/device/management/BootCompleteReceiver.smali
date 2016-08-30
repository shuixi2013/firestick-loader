.class public Lcom/amazon/device/management/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# instance fields
.field mSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-static {}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/amazon/device/management/BootCompleteReceiver;->mSchedulingServiceHelper:Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;

    invoke-virtual {v0}, Lcom/amazon/device/management/DeviceManagementSchedulingService$ServiceHelper;->schedulePeriodicDeviceManagement()V

    .line 36
    return-void
.end method
