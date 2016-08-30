.class public Lcom/amazon/device/management/PackageChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangedReceiver.java"


# instance fields
.field mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 40
    :cond_13
    :goto_13
    return-void

    .line 36
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 37
    .local v0, "packageUri":Landroid/net/Uri;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 38
    iget-object v1, p0, Lcom/amazon/device/management/PackageChangedReceiver;->mDeviceManagementServiceHelper:Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/management/DeviceManagementService$ServiceHelper;->startDeviceManagementService(Ljava/lang/String;)V

    goto :goto_13
.end method
