.class public Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;
.super Ljava/lang/Object;
.source "DefaultRemoteConfigurationManagerFactory.java"

# interfaces
.implements Lcom/amazon/content/common/remoteconfig/RemoteConfigurationManagerFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefRmtCfgMgrFactory"


# instance fields
.field final mAppConfigurationId:Ljava/lang/String;

.field final mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

.field final mContext:Landroid/content/Context;

.field final mDefaultConfiguration:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appConfigurationIdStringRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appConfigurationIdStringRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "defaultConfigStringRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appConfigurationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appConfigurationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultConfigurationJsonString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-static {p1, p3}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->safelyParseJsonOrReturnNull(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appConfigurationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultConfiguration"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    new-instance v0, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    invoke-direct {v0}, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;)V

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appConfigurationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultConfiguration"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "concurrencyUtils"    # Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mAppConfigurationId:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mDefaultConfiguration:Lorg/json/JSONObject;

    .line 137
    iput-object p4, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    .line 138
    return-void
.end method

.method private static safelyParseJsonOrReturnNull(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 181
    :goto_7
    return-object v4

    .line 173
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_13} :catch_49
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_5e

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 174
    :try_start_15
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_3b
    .catchall {:try_start_15 .. :try_end_1c} :catchall_56

    .line 173
    .local v2, "reader":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 175
    :try_start_1d
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_26} :catch_6b
    .catchall {:try_start_1d .. :try_end_26} :catchall_8b

    .line 176
    if-eqz v2, :cond_2d

    if-eqz v4, :cond_52

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_36
    .catchall {:try_start_2a .. :try_end_2d} :catchall_56

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_34

    if-eqz v4, :cond_67

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_59
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_34} :catch_49
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_5e

    :cond_34
    :goto_34
    move-object v4, v5

    goto :goto_7

    :catch_36
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_37
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_56

    goto :goto_2d

    .line 173
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_3b
    move-exception v5

    :try_start_3c
    throw v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 176
    :catchall_3d
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_41
    if-eqz v1, :cond_48

    if-eqz v6, :cond_87

    :try_start_45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_82
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_5e

    :cond_48
    :goto_48
    :try_start_48
    throw v5
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_49} :catch_49
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_5e

    .end local v1    # "is":Ljava/io/InputStream;
    :catch_49
    move-exception v0

    .line 177
    .local v0, "ex":Lorg/json/JSONException;
    const-string v5, "DefRmtCfgMgrFactory"

    const-string v6, "Error parsing the default JSON, falling back to null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 176
    .end local v0    # "ex":Lorg/json/JSONException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_3b
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_2d

    .end local v2    # "reader":Ljava/io/InputStreamReader;
    :catchall_56
    move-exception v5

    move-object v6, v4

    goto :goto_41

    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :catch_59
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_5a
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_5d} :catch_49
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_34

    .line 179
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_5e
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "DefRmtCfgMgrFactory"

    const-string v6, "IOException when parsing the default json; please check your path."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 176
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :cond_67
    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_6a} :catch_49
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_5e

    goto :goto_34

    .line 173
    :catch_6b
    move-exception v5

    :try_start_6c
    throw v5
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 176
    :catchall_6d
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_71
    if-eqz v2, :cond_78

    if-eqz v6, :cond_7e

    :try_start_75
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_56

    :cond_78
    :goto_78
    :try_start_78
    throw v5

    :catch_79
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_78

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_7e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_81} :catch_3b
    .catchall {:try_start_78 .. :try_end_81} :catchall_56

    goto :goto_78

    .end local v2    # "reader":Ljava/io/InputStreamReader;
    :catch_82
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_83
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_48

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_8a} :catch_49
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8a} :catch_5e

    goto :goto_48

    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :catchall_8b
    move-exception v5

    move-object v6, v4

    goto :goto_71
.end method


# virtual methods
.method public getRemoteConfigurationManager()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mConcurrencyUtils:Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;

    invoke-virtual {v1}, Lcom/amazon/content/common/remoteconfig/ConcurrencyUtils;->assertNotOnMainThread()V

    .line 148
    iget-object v1, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mAppConfigurationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->forAppId(Landroid/content/Context;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    move-result-object v0

    .line 151
    .local v0, "builder":Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    iget-object v1, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mDefaultConfiguration:Lorg/json/JSONObject;

    if-eqz v1, :cond_16

    .line 152
    iget-object v1, p0, Lcom/amazon/content/common/remoteconfig/DefaultRemoteConfigurationManagerFactory;->mDefaultConfiguration:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->withDefaultConfiguration(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    .line 155
    :cond_16
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->createOrGet()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v1

    return-object v1
.end method
