.class Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;
.super Ljava/lang/Object;
.source "DeviceManagementNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/management/DeviceManagementNotificationActivity;->showPackageRemovedDialog(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/DialogConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/management/DeviceManagementNotificationActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    iput-object p2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    iget-object v0, v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordNotificationDismissed(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-virtual {v0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->finish()V

    .line 185
    return-void
.end method
