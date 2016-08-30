.class public Lcom/amazon/device/management/remoteconfig/RemoteSettings;
.super Ljava/lang/Object;
.source "RemoteSettings.java"


# static fields
.field static final DEFAULT_NEXT_FETCH_INTERVAL_MS:Lcom/amazon/device/management/remoteconfig/TimeInterval;

.field private static final MINIMUM_NEXT_FETCH_INTERVAL_MS:J

.field private static final MINIMUM_NEXT_FETCH_INTERVAL_WIDTH_MS:J


# instance fields
.field private final mBlacklistedPackageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/management/remoteconfig/PackageProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFetchIntervalMs:Lcom/amazon/device/management/remoteconfig/TimeInterval;

.field private final mVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->MINIMUM_NEXT_FETCH_INTERVAL_MS:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->MINIMUM_NEXT_FETCH_INTERVAL_WIDTH_MS:J

    .line 45
    new-instance v0, Lcom/amazon/device/management/remoteconfig/TimeInterval;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x16

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1a

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amazon/device/management/remoteconfig/TimeInterval;-><init>(JJ)V

    sput-object v0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->DEFAULT_NEXT_FETCH_INTERVAL_MS:Lcom/amazon/device/management/remoteconfig/TimeInterval;

    return-void
.end method

.method constructor <init>(JLcom/amazon/device/management/remoteconfig/TimeInterval;Ljava/util/List;)V
    .registers 8
    .param p1, "version"    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "version"
        .end annotation
    .end param
    .param p3, "nextFetchIntervalMs"    # Lcom/amazon/device/management/remoteconfig/TimeInterval;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "nextFetchIntervalMs"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "blacklistedPackageProperties"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/device/management/remoteconfig/TimeInterval;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/management/remoteconfig/PackageProperties;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "blacklistedPkgProps":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1, p2}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->validateVersion(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mVersion:J

    .line 69
    invoke-static {p3}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->validateNextFetchIntervalMs(Lcom/amazon/device/management/remoteconfig/TimeInterval;)Lcom/amazon/device/management/remoteconfig/TimeInterval;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mNextFetchIntervalMs:Lcom/amazon/device/management/remoteconfig/TimeInterval;

    .line 70
    invoke-static {p4}, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->generateBlacklist(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mBlacklistedPackageProperties:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private static generateBlacklist(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/management/remoteconfig/PackageProperties;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/management/remoteconfig/PackageProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "inputPackageProperties":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 164
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 181
    :goto_c
    return-object v4

    .line 167
    :cond_d
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 168
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/PackageProperties;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/management/remoteconfig/PackageProperties;

    .line 169
    .local v3, "packageProperties":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    if-eqz v3, :cond_15

    .line 173
    invoke-virtual {v3}, Lcom/amazon/device/management/remoteconfig/PackageProperties;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 178
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_15

    .line 181
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageProperties":Lcom/amazon/device/management/remoteconfig/PackageProperties;
    :cond_31
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    goto :goto_c
.end method

.method private getBlacklistedPackagePropertiesList()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "blacklistedPackageProperties"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/management/remoteconfig/PackageProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mBlacklistedPackageProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static validateNextFetchIntervalMs(Lcom/amazon/device/management/remoteconfig/TimeInterval;)Lcom/amazon/device/management/remoteconfig/TimeInterval;
    .registers 9
    .param p0, "inputNextFetchIntervalMs"    # Lcom/amazon/device/management/remoteconfig/TimeInterval;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    if-nez p0, :cond_5

    .line 133
    sget-object p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->DEFAULT_NEXT_FETCH_INTERVAL_MS:Lcom/amazon/device/management/remoteconfig/TimeInterval;

    .line 146
    .end local p0    # "inputNextFetchIntervalMs":Lcom/amazon/device/management/remoteconfig/TimeInterval;
    .local v0, "windowEnd":J
    .local v2, "windowStart":J
    :cond_4
    :goto_4
    return-object p0

    .line 137
    .end local v0    # "windowEnd":J
    .end local v2    # "windowStart":J
    .restart local p0    # "inputNextFetchIntervalMs":Lcom/amazon/device/management/remoteconfig/TimeInterval;
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/TimeInterval;->getStart()J

    move-result-wide v2

    .line 138
    .restart local v2    # "windowStart":J
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/TimeInterval;->getEnd()J

    move-result-wide v0

    .line 141
    .restart local v0    # "windowEnd":J
    sget-wide v4, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->MINIMUM_NEXT_FETCH_INTERVAL_MS:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1b

    sub-long v4, v0, v2

    sget-wide v6, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->MINIMUM_NEXT_FETCH_INTERVAL_WIDTH_MS:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 143
    :cond_1b
    sget-object p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->DEFAULT_NEXT_FETCH_INTERVAL_MS:Lcom/amazon/device/management/remoteconfig/TimeInterval;

    goto :goto_4
.end method

.method private static validateVersion(J)J
    .registers 2
    .param p0, "inputVersion"    # J

    .prologue
    .line 118
    return-wide p0
.end method


# virtual methods
.method public getBlacklistedPackageProperties()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/management/remoteconfig/PackageProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mBlacklistedPackageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getNextFetchIntervalMs()Lcom/amazon/device/management/remoteconfig/TimeInterval;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nextFetchIntervalMs"
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mNextFetchIntervalMs:Lcom/amazon/device/management/remoteconfig/TimeInterval;

    return-object v0
.end method

.method public getVersion()J
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "version"
    .end annotation

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/amazon/device/management/remoteconfig/RemoteSettings;->mVersion:J

    return-wide v0
.end method
