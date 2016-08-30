.class public Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;
.super Ljava/lang/Object;
.source "DeviceManagementNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 214
    return-void
.end method


# virtual methods
.method public startActivity(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/DialogConfiguration;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dialogConfiguration"    # Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "packageName must be non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_17
    const-string v2, "com.amazon.device.management.NotificationActivity.PACKAGE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "serializedDialogConfiguration":Ljava/lang/String;
    const-string v2, "com.amazon.device.management.NotificationActivity.DIALOG_CONFIGURATION_JSON"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
