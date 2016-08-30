.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;


# static fields
.field private static final KEY_APP_IDENTIFIER:Ljava/lang/String; = "_applicationIdentifier"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "_applicationVersion"

.field private static final KEY_COUNTRY:Ljava/lang/String; = "_localeCountryCode"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "_localeLanguage"

.field private static final KEY_PLATFORM:Ljava/lang/String; = "_platform"

.field private static final MAX_ALLOWED_CUSTOM_ATTRIBUTES:I = 0x64

.field private static final PLATFORM_ANDROID:Ljava/lang/String; = "Android"

.field private static final PLATFORM_FIRE_OS:Ljava/lang/String; = "FireOS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageVersion:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageVersion:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method private addStandardAttributesTo(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "_platform"

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "_localeLanguage"

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "_localeCountryCode"

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "_applicationIdentifier"

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "_applicationVersion"

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private declared-synchronized getObjectPrivate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "attrKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_1
    const-string v1, "attrKey cannot be null"

    invoke-static {p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const-string v1, "The class cannot be null"

    invoke-static {p2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getStandardAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "value":Ljava/lang/Object;
    :goto_17
    if-eqz v0, :cond_60

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_5d

    move-result-object v1

    .line 215
    :goto_27
    monitor-exit p0

    return-object v1

    .line 206
    .end local v0    # "value":Ljava/lang/Object;
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    .line 207
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    .line 212
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_30
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve value associated with attrKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_5d

    .line 204
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_60
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private getStandardAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_70

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_86

    .line 237
    sget-object v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized standard attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "result":Ljava/lang/Object;
    :goto_24
    return-object v0

    .line 220
    .restart local v0    # "result":Ljava/lang/Object;
    :sswitch_25
    const-string v2, "_platform"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :sswitch_2f
    const-string v2, "_localeLanguage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_39
    const-string v2, "_localeCountryCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_9

    :sswitch_43
    const-string v2, "_applicationIdentifier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_9

    :sswitch_4d
    const-string v2, "_applicationVersion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x4

    goto :goto_9

    .line 222
    :pswitch_57
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "result":Ljava/lang/String;
    goto :goto_24

    .line 225
    .local v0, "result":Ljava/lang/Object;
    :pswitch_5c
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "result":Ljava/lang/String;
    goto :goto_24

    .line 228
    .local v0, "result":Ljava/lang/Object;
    :pswitch_61
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "result":Ljava/lang/String;
    goto :goto_24

    .line 231
    .local v0, "result":Ljava/lang/Object;
    :pswitch_66
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "result":Ljava/lang/String;
    goto :goto_24

    .line 234
    .local v0, "result":Ljava/lang/Object;
    :pswitch_6b
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v0

    .line 235
    .local v0, "result":Ljava/lang/Integer;
    goto :goto_24

    .line 220
    :sswitch_data_70
    .sparse-switch
        -0x767da3f9 -> :sswitch_4d
        -0x5d2f860f -> :sswitch_2f
        -0x2f545a96 -> :sswitch_39
        -0x1f6b94e6 -> :sswitch_43
        0x752299d2 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_57
        :pswitch_5c
        :pswitch_61
        :pswitch_66
        :pswitch_6b
    .end packed-switch
.end method

.method private static final nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "left"    # Ljava/lang/Object;
    .param p1, "right"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 344
    if-ne p0, p1, :cond_4

    .line 350
    :cond_3
    :goto_3
    return v0

    .line 347
    :cond_4
    if-nez p0, :cond_a

    .line 348
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 350
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method private static final nullSafeHash(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 373
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/Boolean;

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6
    .param p1, "attrKey"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/Double;

    .prologue
    .line 118
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 119
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/Integer;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/Long;

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public declared-synchronized addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "attrKey"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/Object;

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    const-string v1, "attrKey cannot be null"

    invoke-static {p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x1

    :goto_f
    const-string v2, "Custom attributes cannot begin with _"

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2b

    .line 196
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;

    const-string v2, "Custom attributes limit 100 reached"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_26

    .line 192
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1

    .line 193
    :cond_29
    const/4 v1, 0x0

    goto :goto_f

    .line 198
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 199
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_26

    .line 201
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 309
    if-ne p0, p1, :cond_5

    .line 310
    const/4 v1, 0x1

    .line 333
    :cond_4
    :goto_4
    return v1

    .line 312
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    move-object v0, p1

    .line 316
    check-cast v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;

    .line 318
    .local v0, "that":Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public declared-synchronized getAllAttributes()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addStandardAttributesTo(Ljava/util/Map;)V

    .line 159
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 157
    .end local v0    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 152
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getObjectPrivate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getObjectPrivate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 136
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getObjectPrivate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 141
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getObjectPrivate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageVersionCode()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method protected getPackageVersionCode(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, "result":Ljava/lang/Integer;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_2f

    move-result-object v1

    .line 304
    :goto_12
    return-object v1

    .line 301
    :catch_13
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    :goto_14
    sget-object v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2f
    move-exception v0

    goto :goto_14
.end method

.method protected getPlatform()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    const-string v0, "Android"

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getObjectPrivate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 355
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v0

    .line 356
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 357
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 358
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 359
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 360
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 361
    return v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "attrKey"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    const-string v1, "attrKey cannot be null"

    invoke-static {p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    :goto_f
    const-string v2, "Unable to delete attributes with _ prefix"

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_32

    move-result v1

    if-nez v1, :cond_21

    .line 183
    const/4 v1, 0x0

    .line 188
    :goto_1d
    monitor-exit p0

    return-object v1

    .line 180
    :cond_1f
    const/4 v1, 0x0

    goto :goto_f

    .line 186
    :cond_21
    :try_start_21
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 187
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_32

    move-result-object v1

    goto :goto_1d

    .line 179
    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method
