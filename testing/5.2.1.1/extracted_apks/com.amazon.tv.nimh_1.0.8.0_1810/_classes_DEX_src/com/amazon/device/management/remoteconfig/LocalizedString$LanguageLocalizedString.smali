.class public final Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;
.super Ljava/lang/Object;
.source "LocalizedString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/management/remoteconfig/LocalizedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageLocalizedString"
.end annotation


# instance fields
.field private final mCountryMap:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "default"
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
            value = "country"
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
            "Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "countryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mDefaultString:Ljava/lang/String;

    .line 154
    if-nez p2, :cond_e

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mCountryMap:Ljava/util/Map;

    .line 165
    :goto_d
    return-void

    .line 157
    :cond_e
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 158
    .local v0, "countryMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1a

    .line 163
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;>;"
    :cond_3a
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mCountryMap:Ljava/util/Map;

    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-ne p0, p1, :cond_5

    .line 226
    :cond_4
    :goto_4
    return v1

    .line 222
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 223
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 225
    check-cast v0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;

    .line 226
    .local v0, "that":Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;
    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mDefaultString:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mDefaultString:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mCountryMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mCountryMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public get(Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mCountryMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;

    .line 175
    .local v1, "countryLocalizedStringObj":Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;
    if-nez v1, :cond_3a

    .line 189
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move-object v0, v2

    .line 210
    :cond_36
    :goto_36
    return-object v0

    .line 193
    :cond_37
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mDefaultString:Ljava/lang/String;

    goto :goto_36

    .line 197
    :cond_3a
    invoke-virtual {v1, p1}, Lcom/amazon/device/management/remoteconfig/LocalizedString$CountryLocalizedString;->get(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "countryLocalizedString":Ljava/lang/String;
    if-nez v0, :cond_36

    .line 203
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    move-object v0, v2

    .line 205
    goto :goto_36

    .line 207
    :cond_62
    iget-object v0, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mDefaultString:Ljava/lang/String;

    goto :goto_36
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mDefaultString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/management/remoteconfig/LocalizedString$LanguageLocalizedString;->mCountryMap:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
