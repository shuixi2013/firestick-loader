.class public Lcom/amazon/device/management/DeviceManagementNotificationActivity;
.super Landroid/app/Activity;
.source "DeviceManagementNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;,
        Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;,
        Lcom/amazon/device/management/DeviceManagementNotificationActivity$ActivityHelper;
    }
.end annotation


# static fields
.field private static final EXTRA_DIALOG_CONFIGURATION_JSON:Ljava/lang/String; = "com.amazon.device.management.NotificationActivity.DIALOG_CONFIGURATION_JSON"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.device.management.NotificationActivity.PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "NotificationActivity"


# instance fields
.field mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 297
    return-void
.end method

.method private showPackageRemovedDialog(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/DialogConfiguration;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dialogToDisplay"    # Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 141
    if-nez p2, :cond_c

    .line 142
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    invoke-virtual {v5, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordNullDialogConfiguration(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->finish()V

    .line 189
    :goto_b
    return-void

    .line 147
    :cond_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p2}, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->getTitle()Lcom/amazon/device/management/remoteconfig/LocalizedString;

    move-result-object v4

    .line 151
    .local v4, "title":Lcom/amazon/device/management/remoteconfig/LocalizedString;
    if-eqz v4, :cond_1e

    .line 152
    invoke-virtual {v4}, Lcom/amazon/device/management/remoteconfig/LocalizedString;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    :cond_1e
    invoke-virtual {p2}, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->getBody()Lcom/amazon/device/management/remoteconfig/LocalizedString;

    move-result-object v0

    .line 157
    .local v0, "body":Lcom/amazon/device/management/remoteconfig/LocalizedString;
    if-eqz v0, :cond_2b

    .line 158
    invoke-virtual {v0}, Lcom/amazon/device/management/remoteconfig/LocalizedString;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    :cond_2b
    invoke-virtual {p2}, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->getPositiveCallToAction()Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    move-result-object v3

    .line 164
    .local v3, "positiveCta":Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->getText()Lcom/amazon/device/management/remoteconfig/LocalizedString;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 165
    invoke-virtual {v3}, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->getText()Lcom/amazon/device/management/remoteconfig/LocalizedString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/management/remoteconfig/LocalizedString;->get()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;

    sget-object v7, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->POSITIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    invoke-virtual {v3}, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v6, p0, v7, p1, v8}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;-><init>(Lcom/amazon/device/management/DeviceManagementNotificationActivity;Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 172
    :cond_50
    invoke-virtual {p2}, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;->getNegativeCallToAction()Lcom/amazon/device/management/remoteconfig/DialogCallToAction;

    move-result-object v2

    .line 173
    .local v2, "negativeCta":Lcom/amazon/device/management/remoteconfig/DialogCallToAction;
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->getText()Lcom/amazon/device/management/remoteconfig/LocalizedString;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 174
    invoke-virtual {v2}, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->getText()Lcom/amazon/device/management/remoteconfig/LocalizedString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/management/remoteconfig/LocalizedString;->get()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;

    sget-object v7, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->NEGATIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    invoke-virtual {v2}, Lcom/amazon/device/management/remoteconfig/DialogCallToAction;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v6, p0, v7, p1, v8}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$IntentOnClickListener;-><init>(Lcom/amazon/device/management/DeviceManagementNotificationActivity;Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 180
    :cond_75
    new-instance v5, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$1;-><init>(Lcom/amazon/device/management/DeviceManagementNotificationActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    invoke-virtual {v5, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget v5, Lcom/amazon/device/management/R$layout;->activity_notifier:I

    invoke-virtual {p0, v5}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 99
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v5, "com.amazon.device.management.NotificationActivity.PACKAGE_NAME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 101
    const-string v5, "NotificationActivity"

    const-string v6, "Started without the required parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    invoke-virtual {v5}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordStartedWithIncorrectParameters()V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->finish()V

    .line 126
    :goto_2e
    return-void

    .line 107
    :cond_2f
    const-string v5, "com.amazon.device.management.NotificationActivity.DIALOG_CONFIGURATION_JSON"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "dialogConfigurationJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 109
    const-string v5, "NotificationActivity"

    const-string v6, "Started without the required parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    invoke-virtual {v5}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordStartedWithIncorrectParameters()V

    .line 111
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->finish()V

    goto :goto_2e

    .line 117
    :cond_4b
    :try_start_4b
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v6, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;

    invoke-virtual {v5, v1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_55} :catch_59

    .line 125
    .local v0, "configuration":Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
    invoke-direct {p0, v4, v0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->showPackageRemovedDialog(Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/DialogConfiguration;)V

    goto :goto_2e

    .line 118
    .end local v0    # "configuration":Lcom/amazon/device/management/remoteconfig/DialogConfiguration;
    :catch_59
    move-exception v2

    .line 119
    .local v2, "ex":Ljava/io/IOException;
    const-string v5, "NotificationActivity"

    const-string v6, "Caught IOException while parsing parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v5, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->mMetricsHelper:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;

    invoke-virtual {v5, v4}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;->recordIoExceptionDeserializingDialogConfiguration(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity;->finish()V

    goto :goto_2e
.end method
