.class Lcom/amazon/device/management/DeviceManagementModule$DefaultEnrollmentStatusProvider;
.super Ljava/lang/Object;
.source "DeviceManagementModule.java"

# interfaces
.implements Lcom/amazon/device/management/hostbridge/EnrollmentStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/DeviceManagementModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultEnrollmentStatusProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnrolled()Z
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method
