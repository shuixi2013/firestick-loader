.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final mManagers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppConfigId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDefaultConfiguration:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appConfigId"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    .line 165
    if-nez p1, :cond_14

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_14
    if-nez p2, :cond_1e

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The App Configuration ID may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1e
    # invokes: Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->verifyAppConfigId(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->access$000(Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method static synthetic access$200(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Lorg/json/JSONObject;
    .registers 2
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private ensureBuilderReady()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_c
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The App Configuration ID may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_18
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    if-nez v0, :cond_24

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The default configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_24
    return-void
.end method


# virtual methods
.method public createOrGet()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .registers 5

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An App Configuration ID must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_c
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 222
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->ensureBuilderReady()V

    .line 223
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_26
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    return-object v0
.end method

.method public withDefaultConfiguration(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    .registers 4
    .param p1, "defaultConfiguration"    # Lorg/json/JSONObject;

    .prologue
    .line 185
    if-nez p1, :cond_a

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The default configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_a
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    .line 190
    return-object p0
.end method
