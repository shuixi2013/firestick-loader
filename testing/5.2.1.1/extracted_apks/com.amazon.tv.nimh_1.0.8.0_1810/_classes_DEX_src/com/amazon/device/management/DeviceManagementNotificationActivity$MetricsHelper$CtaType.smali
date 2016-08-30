.class public final enum Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
.super Ljava/lang/Enum;
.source "DeviceManagementNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CtaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

.field public static final enum NEGATIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

.field public static final enum POSITIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;


# instance fields
.field private final mMetricPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 488
    new-instance v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    const-string v1, "POSITIVE"

    const-string v2, "Positive"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->POSITIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    .line 489
    new-instance v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    const-string v1, "NEGATIVE"

    const-string v2, "Negative"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->NEGATIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    .line 487
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    sget-object v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->POSITIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->NEGATIVE:Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->$VALUES:[Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "metricPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 499
    iput-object p3, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->mMetricPrefix:Ljava/lang/String;

    .line 500
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->getMetricPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMetricPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->mMetricPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    const-class v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;
    .registers 1

    .prologue
    .line 487
    sget-object v0, Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->$VALUES:[Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    invoke-virtual {v0}, [Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/management/DeviceManagementNotificationActivity$MetricsHelper$CtaType;

    return-object v0
.end method
