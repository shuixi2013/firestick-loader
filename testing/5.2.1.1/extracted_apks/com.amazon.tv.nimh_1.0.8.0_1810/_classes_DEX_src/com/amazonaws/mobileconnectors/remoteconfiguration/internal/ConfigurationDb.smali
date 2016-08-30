.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
.super Ljava/lang/Object;
.source "ConfigurationDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;,
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$ConfigurationTable;
    }
.end annotation


# static fields
.field private static final COL_ENTITY_TAG:I = 0x2

.field private static final COL_ORIGIN:I = 0x3

.field private static final COL_TIMESTAMP:I = 0x1

.field private static final COL_VALUE:I = 0x0

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DB_NAME:Ljava/lang/String; = "ConfigurationCache.db"

.field private static final PROJECTION_CONFIGURATION:[Ljava/lang/String;

.field private static final PROJECTION_REMOTE_CONFIGURATION:[Ljava/lang/String;

.field private static final SQL_CREATE_CONFIGURATION_TABLE:Ljava/lang/String; = "CREATE TABLE configuration (_id INTEGER PRIMARY KEY, json TEXT, origin INTEGER NOT NULL CHECK (origin IN (1,2,3)), timestamp INTEGER, entity_tag TEXT);"

.field private static final TAG:Ljava/lang/String;

.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dbHelper:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private openCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->TAG:Ljava/lang/String;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "json"

    aput-object v1, v0, v2

    const-string v1, "timestamp"

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_CONFIGURATION:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "json"

    aput-object v1, v0, v2

    const-string v1, "timestamp"

    aput-object v1, v0, v3

    const-string v1, "entity_tag"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "origin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_REMOTE_CONFIGURATION:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appConfigId"    # Ljava/lang/String;
    .param p3, "dbHelper"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->dbHelper:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    .line 135
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized closeDatabase()V
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    .line 139
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 141
    :cond_12
    monitor-exit p0

    return-void

    .line 138
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private configurationFromCursor(Landroid/database/Cursor;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 357
    if-eqz p1, :cond_a

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    .line 358
    :cond_a
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;

    const-string v2, "Configuration not found"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_12
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x0

    .line 363
    .local v0, "timestamp":Ljava/util/Date;
    :goto_19
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v1

    .line 361
    .end local v0    # "timestamp":Ljava/util/Date;
    :cond_23
    new-instance v0, Ljava/util/Date;

    .line 362
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_19
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/Integer;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .param p4, "eTag"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_22

    .line 372
    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_c
    if-eqz p2, :cond_28

    .line 377
    const-string v1, "origin"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    :goto_13
    if-eqz p3, :cond_2e

    .line 382
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    :goto_1a
    if-eqz p4, :cond_34

    .line 387
    const-string v1, "entity_tag"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_21
    return-object v0

    .line 374
    :cond_22
    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_c

    .line 379
    :cond_28
    const-string v1, "origin"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_13

    .line 384
    :cond_2e
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1a

    .line 389
    :cond_34
    const-string v1, "entity_tag"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public static getOrCreateInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appConfigId"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "filteredAppConfig":Ljava/lang/String;
    sget-object v5, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    monitor-enter v5

    .line 115
    :try_start_b
    sget-object v4, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    .line 116
    .local v0, "db":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    if-nez v0, :cond_28

    .line 117
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$1;)V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_39

    .line 119
    .local v1, "dbHelper":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    :try_start_1b
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catch Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/DowngradeException; {:try_start_1b .. :try_end_1e} :catch_2a
    .catchall {:try_start_1b .. :try_end_1e} :catchall_39

    .line 125
    :goto_1e
    :try_start_1e
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    .end local v0    # "db":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    invoke-direct {v0, p0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;)V

    .line 126
    .restart local v0    # "db":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    sget-object v4, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1    # "dbHelper":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    :cond_28
    monitor-exit v5

    return-object v0

    .line 120
    .restart local v1    # "dbHelper":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    :catch_2a
    move-exception v3

    .line 122
    .local v3, "sqle":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/DowngradeException;
    # invokes: Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->getDbFileNameFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 123
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    .end local v1    # "dbHelper":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$1;)V

    .restart local v1    # "dbHelper":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    goto :goto_1e

    .line 129
    .end local v0    # "db":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    .end local v1    # "dbHelper":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    .end local v3    # "sqle":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/DowngradeException;
    :catchall_39
    move-exception v4

    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_39

    throw v4
.end method

.method private hasConfiguration(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 225
    const-string v1, "configuration"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v8, "1"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 235
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 236
    .local v10, "result":Z
    if-eqz v9, :cond_20

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 238
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_20
    return v10
.end method

.method private declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 509
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->dbHelper:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 511
    :cond_12
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 508
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private remoteConfigurationFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "appConfigurationId"    # Ljava/lang/String;

    .prologue
    .line 335
    if-nez p1, :cond_4

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    .line 339
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->configurationFromCursor(Landroid/database/Cursor;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1

    const/4 v2, 0x3

    .line 341
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v2, 0x2

    .line 342
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_3
.end method

.method private declared-synchronized saveConfiguration(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V
    .registers 11
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "origin"    # I
    .param p3, "timestamp"    # Ljava/lang/Long;
    .param p4, "etag"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    const-string v0, "configuration cannot be null"

    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    const-string v0, "timestamp cannot be null for non-default configuration"

    invoke-static {p3, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_c
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfigurationPrivate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_28

    .line 188
    if-eqz v1, :cond_23

    .line 189
    :try_start_20
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 191
    :cond_23
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_32

    .line 193
    monitor-exit p0

    return-void

    .line 188
    :catchall_28
    move-exception v0

    if-eqz v1, :cond_2e

    .line 189
    :try_start_2b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 191
    :cond_2e
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    throw v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_32

    .line 179
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveConfigurationPrivate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "configuration"    # Ljava/lang/String;
    .param p3, "origin"    # I
    .param p4, "timestamp"    # Ljava/lang/Long;
    .param p5, "eTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p2, v2, p4, p5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->getContentValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 204
    .local v1, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->hasConfiguration(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 205
    const-string v2, "configuration"

    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "rowsUpdated":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    .line 210
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows while was intending to update one and only one row in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_3d
    sget-object v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated 1 row in configuration table,\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 215
    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "rowsUpdated":I
    :goto_59
    return-void

    .line 218
    :cond_5a
    const-string v2, "configuration"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 219
    sget-object v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted 1 row into configuration table,\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method


# virtual methods
.method declared-synchronized deleteConfiguration()V
    .registers 5

    .prologue
    .line 515
    monitor-enter p0

    const/4 v0, 0x0

    .line 517
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 519
    const-string v1, "configuration"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    sget-object v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->TAG:Ljava/lang/String;

    const-string v2, "Deleted rows from configuration table"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    .line 525
    if-eqz v0, :cond_1f

    .line 526
    :try_start_1c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    :cond_1f
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_2e

    .line 530
    monitor-exit p0

    return-void

    .line 525
    :catchall_24
    move-exception v1

    if-eqz v0, :cond_2a

    .line 526
    :try_start_27
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    :cond_2a
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    throw v1
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2e

    .line 515
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    monitor-enter p0

    const/4 v0, 0x0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 253
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 255
    const-string v1, "configuration"

    sget-object v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_CONFIGURATION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 264
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 265
    invoke-direct {p0, v8}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->configurationFromCursor(Landroid/database/Cursor;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_3d

    move-result-object v1

    .line 270
    if-eqz v8, :cond_2b

    .line 271
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_2b
    if-eqz v0, :cond_30

    .line 274
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 276
    :cond_30
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_4c

    .line 265
    monitor-exit p0

    return-object v1

    .line 267
    :cond_35
    :try_start_35
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;

    const-string v2, "Configuration not found"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 270
    :catchall_3d
    move-exception v1

    if-eqz v8, :cond_43

    .line 271
    :try_start_40
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_43
    if-eqz v0, :cond_48

    .line 274
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 276
    :cond_48
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    throw v1
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_4c

    .line 250
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readRemoteConfiguration(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .registers 12
    .param p1, "appConfigurationId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 292
    monitor-enter p0

    const/4 v0, 0x0

    .line 293
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 295
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 297
    const-string v1, "configuration"

    sget-object v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_REMOTE_CONFIGURATION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 305
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 306
    if-eqz v8, :cond_36

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 307
    invoke-direct {p0, v8, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->remoteConfigurationFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_45

    move-result-object v1

    .line 310
    if-eqz v8, :cond_2c

    .line 311
    :try_start_29
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_2c
    if-eqz v0, :cond_31

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    :cond_31
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_54

    .line 318
    :goto_34
    monitor-exit p0

    return-object v1

    .line 310
    :cond_36
    if-eqz v8, :cond_3b

    .line 311
    :try_start_38
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_3b
    if-eqz v0, :cond_40

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    :cond_40
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    move-object v1, v9

    .line 318
    goto :goto_34

    .line 310
    :catchall_45
    move-exception v1

    if-eqz v8, :cond_4b

    .line 311
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_4b
    if-eqz v0, :cond_50

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    :cond_50
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    throw v1
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_54

    .line 292
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V
    .registers 6
    .param p1, "remoteConfiguration"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    .prologue
    .line 151
    if-nez p1, :cond_a

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The RemoteConfiguration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_a
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    if-nez v0, :cond_18

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The contained Configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_18
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Configuration\'s timestamp may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2a
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getAsJsonString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getOrigin()I

    move-result v1

    .line 162
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 163
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getEntityTag()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V

    .line 164
    return-void
.end method
