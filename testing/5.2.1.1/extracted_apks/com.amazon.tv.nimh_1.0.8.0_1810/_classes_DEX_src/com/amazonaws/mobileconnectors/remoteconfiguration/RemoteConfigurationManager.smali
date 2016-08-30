.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://arcus-uswest.amazon.com"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppConfigId:Ljava/lang/String;

.field private final mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

.field private final mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

.field private mLastSuccessfulSyncAttributeHash:I

.field private final mRemoteConfigurationFetcher:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;

.field private mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-class v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appConfigId"    # Ljava/lang/String;
    .param p3, "defaultConfig"    # Lorg/json/JSONObject;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->getOrCreateInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    move-result-object v4

    const-string v5, "https://arcus-uswest.amazon.com"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;Ljava/lang/String;)V
    .registers 15
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "appConfigId"    # Ljava/lang/String;
    .param p3, "config"    # Lorg/json/JSONObject;
    .param p4, "db"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    .param p5, "endpoint"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v5, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    .line 110
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    .line 284
    const-string v0, "appContext cannot be null"

    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string v0, "appConfigId cannot be null"

    invoke-static {p2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->verifyAppConfigId(Ljava/lang/String;)V

    .line 287
    const/4 v8, 0x0

    .line 289
    .local v8, "endpointUrl":Ljava/net/URL;
    :try_start_1c
    new-instance v8, Ljava/net/URL;

    .end local v8    # "endpointUrl":Ljava/net/URL;
    invoke-direct {v8, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_21} :catch_6c

    .line 294
    .restart local v8    # "endpointUrl":Ljava/net/URL;
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    .line 295
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    .line 296
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    .line 297
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    .line 298
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;

    invoke-direct {v0, p1, v8}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mRemoteConfigurationFetcher:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;

    .line 300
    if-eqz p3, :cond_6b

    .line 301
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->readRemoteConfiguration(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object v6

    .line 302
    .local v6, "currentConfig":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    if-eqz v6, :cond_4b

    .line 303
    invoke-interface {v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getOrigin()I

    move-result v0

    if-ne v0, v3, :cond_75

    .line 304
    :cond_4b
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Saving default configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    .line 306
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 305
    invoke-virtual {p4, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    .line 315
    .end local v6    # "currentConfig":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    :cond_6b
    :goto_6b
    return-void

    .line 290
    .end local v8    # "endpointUrl":Ljava/net/URL;
    :catch_6c
    move-exception v7

    .line 291
    .local v7, "e":Ljava/net/MalformedURLException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid endpoint"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 312
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .restart local v6    # "currentConfig":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .restart local v8    # "endpointUrl":Ljava/net/URL;
    :cond_75
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Skipping default configuration saving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method private constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)V
    .registers 5
    .param p1, "builder"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    .prologue
    .line 258
    # getter for: Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$200(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$300(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$400(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    .param p2, "x1"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->verifyAppConfigId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .param p1, "x1"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->syncOnCurrentThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    return-void
.end method

.method public static forAppId(Landroid/content/Context;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appConfigId"    # Ljava/lang/String;

    .prologue
    .line 354
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .registers 2
    .param p0, "appConfigId"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v0, "The App Configuration ID may not be null"

    invoke-static {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    # getter for: Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    return-object v0
.end method

.method private syncOnCurrentThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .registers 14
    .param p1, "syncCallback"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;

    .prologue
    .line 428
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->isSyncAllowedRightNow()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    .line 430
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getCause()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    .line 431
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_26

    .line 432
    :cond_1c
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getTimeToNextSyncInMS()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onThrottle(J)V

    .line 475
    :goto_25
    return-void

    .line 436
    :cond_26
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->readRemoteConfiguration(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object v7

    .line 438
    .local v7, "currentRemoteConfiguration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    const/4 v9, 0x0

    .line 439
    .local v9, "entityTag":Ljava/lang/String;
    if-eqz v7, :cond_35

    .line 440
    invoke-interface {v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getEntityTag()Ljava/lang/String;

    move-result-object v9

    .line 442
    :cond_35
    const/4 v10, 0x0

    .line 444
    .local v10, "fetchedRemoteConfiguration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    :try_start_36
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mRemoteConfigurationFetcher:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->openAttributes()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    move-result-object v3

    invoke-interface {v1, v2, v3, v9}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;->fetch(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    :try_end_41
    .catch Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RequestThrottledException; {:try_start_36 .. :try_end_41} :catch_62
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_74

    move-result-object v10

    .line 455
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    .line 456
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->updateSyncTimeAfterSuccess()V

    .line 458
    invoke-interface {v10}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 459
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v1, v10}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    .line 461
    invoke-interface {v10}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1

    .line 460
    invoke-interface {p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onConfigurationModified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V

    goto :goto_25

    .line 446
    :catch_62
    move-exception v11

    .line 447
    .local v11, "rte":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RequestThrottledException;
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->updateSyncTimeAfterThrottle(J)V

    .line 448
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getTimeToNextSyncInMS()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onThrottle(J)V

    goto :goto_25

    .line 450
    .end local v11    # "rte":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RequestThrottledException;
    :catch_74
    move-exception v8

    .line 451
    .local v8, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->updateSyncTimeAfterFailure()V

    .line 452
    invoke-interface {p1, v8}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_25

    .line 465
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7e
    invoke-interface {v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getAsJsonString()Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "currentJsonCfg":Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v6, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 468
    invoke-interface {v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getAppConfigurationId()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-interface {v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getOrigin()I

    move-result v3

    .line 470
    invoke-interface {v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getEntityTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 472
    .local v0, "renewedRemoteConfiguration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    .line 474
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1

    .line 473
    invoke-interface {p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onConfigurationUnmodified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V

    goto/16 :goto_25
.end method

.method private syncOnNewThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .registers 4
    .param p1, "syncCallback"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;

    .prologue
    .line 409
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 415
    return-void
.end method

.method private static verifyAppConfigId(Ljava/lang/String;)V
    .registers 4
    .param p0, "appConfigId"    # Ljava/lang/String;

    .prologue
    .line 328
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->fromArn(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 333
    return-void

    .line 329
    :catch_4
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/MalformedAppConfigIdException;

    const-string v2, "Invalid appConfigId ARN."

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/MalformedAppConfigIdException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized openAttributes()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    .registers 2

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->readConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public overwriteConfiguration(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "configurationJson"    # Lorg/json/JSONObject;

    .prologue
    .line 493
    const-string v2, "The Configuration cannot be null"

    invoke-static {p1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    .line 495
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 496
    .local v1, "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 502
    .local v0, "remoteConfiguration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    .line 503
    return-void
.end method

.method public sync(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .registers 3
    .param p1, "syncCallback"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;

    .prologue
    .line 396
    const-string v0, "ConfigurationSyncCallback cannot be null"

    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->syncOnNewThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    .line 398
    return-void
.end method
