.class Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;
.super Ljava/lang/Object;
.source "RemoteSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistentStorageHelper"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEFAULT_LAST_SUCCESSFUL_REFRESH_TIME:J = 0x0L

.field private static final KEY_LAST_SUCCESSFUL_REFRESH_TIME:Ljava/lang/String; = "com.amazon.device.management.remoteconfig.Manager.LAST_SUCCESSFUL_REFRESH_TIME"

.field static final SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "com.amazon.device.management.remoteconfig.Manager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;->mContext:Landroid/content/Context;

    .line 218
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.device.management.remoteconfig.Manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getLastSuccessfulRefreshTime()J
    .registers 5

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.amazon.device.management.remoteconfig.Manager.LAST_SUCCESSFUL_REFRESH_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSuccessfulRefreshTime(J)V
    .registers 6
    .param p1, "timeInMillis"    # J

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/amazon/device/management/remoteconfig/RemoteSettingsManager$PersistentStorageHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amazon.device.management.remoteconfig.Manager.LAST_SUCCESSFUL_REFRESH_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 245
    monitor-exit p0

    return-void

    .line 241
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
