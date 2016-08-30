.class public final Lcom/amazon/device/management/remoteconfig/LocalizedString;
.super Ljava/lang/Object;
.source "LocalizedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;,
        Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;
    }
.end annotation


# instance fields
.field private final mDefaultString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "default"
    .end annotation
.end field

.field private final mLanguageMap:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "language"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "defaultString"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "default"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "language"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "languageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mDefaultString:Ljava/lang/String;

    .line 47
    if-nez p2, :cond_e

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mLanguageMap:Ljava/util/Map;

    .line 64
    :goto_d
    return-void

    .line 50
    :cond_e
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 51
    .local v2, "languageMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;>;"
    new-instance v4, Ljava/util/Locale;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1a

    .line 62
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;>;"
    :cond_43
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mLanguageMap:Ljava/util/Map;

    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_5

    .line 115
    :cond_4
    :goto_4
    return v1

    .line 111
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 112
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/amazon/device/management/remoteconfig/LocalizedString;

    .line 115
    .local v0, "that":Lcom/amazon/device/management/remoteconfig/LocalizedString;
    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mDefaultString:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mDefaultString:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mLanguageMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mLanguageMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/management/remoteconfig/LocalizedString;->get(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mLanguageMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;

    .line 83
    .local v1, "languageLocalizedStringObj":Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;
    if-nez v1, :cond_17

    .line 84
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mDefaultString:Ljava/lang/String;

    .line 91
    :cond_16
    :goto_16
    return-object v0

    .line 87
    :cond_17
    invoke-virtual {v1, p1}, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->get(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "languageLocalizedString":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 89
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mDefaultString:Ljava/lang/String;

    goto :goto_16
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mDefaultString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString;->mLanguageMap:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/amazon/device/management/remoteconfig/LocalizedString;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
