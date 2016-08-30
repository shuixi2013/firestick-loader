.class public Lcom/amazon/device/management/DeviceManagementSchedule;
.super Ljava/lang/Object;
.source "DeviceManagementSchedule.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEFAULT_LONG_VALUE:J = -0x1L

.field private static final KEY_LAST_ACTUAL_REFRESH_TIME:Ljava/lang/String; = "com.amazon.device.management.Schedule.LAST_ACTUAL_REFRESH_TIME"

.field private static final KEY_LAST_SCHEDULED_REFRESH_TIME:Ljava/lang/String; = "com.amazon.device.management.Schedule.LAST_SCHEDULED_REFRESH_TIME"

.field static final SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "com.amazon.device.management.Schedule"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/amazon/device/management/DeviceManagementSchedule;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private getOptionalLongFromSharedPreferences(Ljava/lang/String;)Lcom/google/common/base/Optional;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementSchedule;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 147
    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 149
    :goto_18
    return-object v1

    :cond_19
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_18
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/device/management/DeviceManagementSchedule;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.device.management.Schedule"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getLastActualRefreshTime()Lcom/google/common/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    const-string v0, "com.amazon.device.management.Schedule.LAST_ACTUAL_REFRESH_TIME"

    invoke-direct {p0, v0}, Lcom/amazon/device/management/DeviceManagementSchedule;->getOptionalLongFromSharedPreferences(Ljava/lang/String;)Lcom/google/common/base/Optional;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastScheduledRefreshTime()Lcom/google/common/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    const-string v0, "com.amazon.device.management.Schedule.LAST_SCHEDULED_REFRESH_TIME"

    invoke-direct {p0, v0}, Lcom/amazon/device/management/DeviceManagementSchedule;->getOptionalLongFromSharedPreferences(Ljava/lang/String;)Lcom/google/common/base/Optional;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastActualRefreshTime(J)V
    .registers 6
    .param p1, "timeInMillis"    # J

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementSchedule;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amazon.device.management.Schedule.LAST_ACTUAL_REFRESH_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 118
    monitor-exit p0

    return-void

    .line 115
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastScheduledRefreshTime(J)V
    .registers 6
    .param p1, "timeInMillis"    # J

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/amazon/device/management/DeviceManagementSchedule;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amazon.device.management.Schedule.LAST_SCHEDULED_REFRESH_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 100
    monitor-exit p0

    return-void

    .line 97
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
