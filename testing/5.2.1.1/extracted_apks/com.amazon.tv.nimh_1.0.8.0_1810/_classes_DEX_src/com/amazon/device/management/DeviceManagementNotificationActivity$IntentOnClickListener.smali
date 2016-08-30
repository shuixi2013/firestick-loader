.class Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;
.super Ljava/lang/Object;
.source "DeviceManagementNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentOnClickListener"
.end annotation


# instance fields
.field private final mCtaType:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

.field private final mIntent:Landroid/content/Intent;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/device/management/DeviceManagementNotificationActivity;Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5
    .param p1    # Lcom/amazon/device/management/DeviceManagementNotificationActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ctaType"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mCtaType:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    .line 268
    iput-object p3, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mPackageName:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mIntent:Landroid/content/Intent;

    .line 270
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    iget-object v1, v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mCtaType:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    iget-object v3, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordCtaOnClick(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_21

    .line 280
    :try_start_f
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    iget-object v1, v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mCtaType:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    iget-object v3, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordActivityStarted(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_21} :catch_27

    .line 287
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    invoke-virtual {v1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->finish()V

    .line 288
    return-void

    .line 282
    :catch_27
    move-exception v0

    .line 283
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "NotificationActivity"

    const-string v2, "Unable to start the CTA Activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    iget-object v1, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->this$0:Lcom/amazon/device/management/DeviceManagementNotificationActivity;

    iget-object v1, v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    iget-object v2, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mCtaType:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    iget-object v3, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordFailureToStartActivity(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;)V

    goto :goto_21
.end method
