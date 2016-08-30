.class public Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
.super Ljava/lang/Object;
.source "RemoteConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$1;,
        Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;,
        Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;,
        Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_CACHED_CONFIGURATIONS:I = 0x5


# instance fields
.field private mBackingManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

.field private final mBackingManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

.field private final mCachedConfigurations:Lcom/amazon/content/common/remoteconfig/LruCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/content/common/remoteconfig/LruCacheMap",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation
.end field

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

.field private final mConfigurationDeserializer:Lcom/amazon/content/common/remoteconfig/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/content/common/remoteconfig/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/content/common/remoteconfig/JsonDeserializer;)V
    .registers 9
    .param p1, "remoteConfigurationManagerFactory"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/amazon/content/common/remoteconfig/JsonDeserializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;",
            "Lcom/amazon/content/common/remoteconfig/JsonDeserializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    .local p2, "jsonDeserializer":Lcom/amazon/content/common/remoteconfig/JsonDeserializer;, "Lcom/amazon/content/common/remoteconfig/JsonDeserializer<TT;>;"
    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/amazon/content/common/remoteconfig/LruCacheMap;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Lcom/amazon/content/common/remoteconfig/LruCacheMap;-><init>(I)V

    new-instance v5, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    invoke-direct {v5}, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/content/common/remoteconfig/JsonDeserializer;Ljava/util/concurrent/Executor;Lcom/amazon/content/common/remoteconfig/LruCacheMap;Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;)V

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;Lcom/amazon/content/common/remoteconfig/JsonDeserializer;Ljava/util/concurrent/Executor;Lcom/amazon/content/common/remoteconfig/LruCacheMap;Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;)V
    .registers 7
    .param p1, "backingManagerFactory"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/amazon/content/common/remoteconfig/JsonDeserializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/amazon/content/common/remoteconfig/LruCacheMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "concurrencyUtils"    # Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;",
            "Lcom/amazon/content/common/remoteconfig/JsonDeserializer",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/amazon/content/common/remoteconfig/LruCacheMap",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;TT;>;",
            "Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    .local p2, "jsonDeserializer":Lcom/amazon/content/common/remoteconfig/JsonDeserializer;, "Lcom/amazon/content/common/remoteconfig/JsonDeserializer<TT;>;"
    .local p4, "configurationCache":Lcom/amazon/content/common/remoteconfig/LruCacheMap;, "Lcom/amazon/content/common/remoteconfig/LruCacheMap<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    .line 105
    iput-object p2, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mConfigurationDeserializer:Lcom/amazon/content/common/remoteconfig/JsonDeserializer;

    .line 106
    iput-object p3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 107
    iput-object p4, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCachedConfigurations:Lcom/amazon/content/common/remoteconfig/LruCacheMap;

    .line 108
    iput-object p5, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Lcom/amazon/content/common/remoteconfig/LruCacheMap;
    .registers 2
    .param p0, "x0"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCachedConfigurations:Lcom/amazon/content/common/remoteconfig/LruCacheMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .param p0, "x0"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private declared-synchronized getConfigurationFromLockedManager(Ljava/util/Map;)Ljava/lang/Object;
    .registers 13
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    .local p1, "configAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    invoke-virtual {v9}, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;->assertNotOnMainThread()V

    .line 185
    invoke-direct {p0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->lazilyInitializeBackingManager()V

    .line 188
    iget-object v9, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v9}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->openAttributes()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    move-result-object v2

    .line 189
    .local v2, "backingManagerAttributes":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v1, "addedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 191
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    .local v5, "entryKey":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 193
    .local v6, "entryValue":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_46

    .line 194
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    check-cast v6, Ljava/lang/String;

    .end local v6    # "entryValue":Ljava/lang/Object;
    invoke-interface {v2, v5, v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_43

    goto :goto_20

    .line 184
    .end local v1    # "addedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "backingManagerAttributes":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "entryKey":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_43
    move-exception v9

    monitor-exit p0

    throw v9

    .line 196
    .restart local v1    # "addedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v2    # "backingManagerAttributes":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "entryKey":Ljava/lang/String;
    .restart local v6    # "entryValue":Ljava/lang/Object;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_46
    :try_start_46
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_53

    .line 197
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "entryValue":Ljava/lang/Object;
    invoke-interface {v2, v5, v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_20

    .line 199
    .restart local v6    # "entryValue":Ljava/lang/Object;
    :cond_53
    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_60

    .line 200
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    check-cast v6, Ljava/lang/Long;

    .end local v6    # "entryValue":Ljava/lang/Object;
    invoke-interface {v2, v5, v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_20

    .line 202
    .restart local v6    # "entryValue":Ljava/lang/Object;
    :cond_60
    instance-of v9, v6, Ljava/lang/Double;

    if-eqz v9, :cond_6d

    .line 203
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    check-cast v6, Ljava/lang/Double;

    .end local v6    # "entryValue":Ljava/lang/Object;
    invoke-interface {v2, v5, v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_20

    .line 205
    .restart local v6    # "entryValue":Ljava/lang/Object;
    :cond_6d
    instance-of v9, v6, Ljava/lang/Boolean;

    if-eqz v9, :cond_20

    .line 206
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "entryValue":Ljava/lang/Object;
    invoke-interface {v2, v5, v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_20

    .line 212
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "entryKey":Ljava/lang/String;
    :cond_7a
    iget-object v9, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v9}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->openConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v3

    .line 213
    .local v3, "currentConfiguration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    iget-object v9, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mConfigurationDeserializer:Lcom/amazon/content/common/remoteconfig/JsonDeserializer;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getAsJsonString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/amazon/content/common/remoteconfig/JsonDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 216
    .local v8, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, "addedKey":Ljava/lang/String;
    invoke-interface {v2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_46 .. :try_end_9d} :catchall_43

    goto :goto_8e

    .line 220
    .end local v0    # "addedKey":Ljava/lang/String;
    :cond_9e
    monitor-exit p0

    return-object v8
.end method

.method private lazilyInitializeBackingManager()V
    .registers 2

    .prologue
    .line 227
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    if-nez v0, :cond_c

    .line 228
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManagerFactory:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;

    invoke-interface {v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;->getRemoteConfigurationManager()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    .line 230
    :cond_c
    return-void
.end method


# virtual methods
.method public getConfiguration()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->getConfiguration(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConfiguration(Ljava/util/Map;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    .local p1, "configurationAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    invoke-virtual {v3}, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;->assertNotOnMainThread()V

    .line 135
    invoke-direct {p0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->lazilyInitializeBackingManager()V

    .line 137
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 138
    .local v1, "objectLocalConfigurationAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCachedConfigurations:Lcom/amazon/content/common/remoteconfig/LruCacheMap;

    invoke-virtual {v3, v1}, Lcom/amazon/content/common/remoteconfig/LruCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "cachedConfiguration":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_20

    .line 140
    invoke-direct {p0, v1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->getConfigurationFromLockedManager(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "result":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCachedConfigurations:Lcom/amazon/content/common/remoteconfig/LruCacheMap;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/content/common/remoteconfig/LruCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    .line 144
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :goto_1e
    monitor-exit p0

    return-object v2

    :cond_20
    move-object v2, v0

    goto :goto_1e

    .line 134
    .end local v0    # "cachedConfiguration":Ljava/lang/Object;, "TT;"
    .end local v1    # "objectLocalConfigurationAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized refreshFromNetwork(Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V
    .registers 7
    .param p1, "response"    # Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    .local p0, "this":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    invoke-virtual {v3}, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;->assertNotOnMainThread()V

    .line 155
    invoke-direct {p0}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->lazilyInitializeBackingManager()V

    .line 157
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 158
    .local v0, "currentlyRunningRefreshFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;>;"
    if-nez v0, :cond_33

    .line 159
    new-instance v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;-><init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$1;)V

    .line 160
    .local v1, "newCallback":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    invoke-virtual {v1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 161
    .local v2, "newCallbackFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;>;"
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCurrentlyRunningRefreshFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    new-instance v3, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;

    invoke-direct {v3, v2, p1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V

    iget-object v4, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 166
    iget-object v3, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mBackingManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->sync(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_3e

    .line 173
    .end local v1    # "newCallback":Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$ListenableConfigurationSyncCallback;, "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper<TT;>.ListenableConfigurationSyncCallback;"
    .end local v2    # "newCallbackFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;>;"
    :goto_31
    monitor-exit p0

    return-void

    .line 168
    :cond_33
    :try_start_33
    new-instance v3, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;

    invoke-direct {v3, v0, p1}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshCompleteListener;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/amazon/content/common/remoteconfig/callback/ResponseCallback;)V

    iget-object v4, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    goto :goto_31

    .line 154
    .end local v0    # "currentlyRunningRefreshFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;>;"
    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3
.end method
