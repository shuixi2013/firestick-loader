.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;
.super Ljava/lang/Object;
.source "AndroidRemoteConfigurationFetcher.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;,
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;
    }
.end annotation


# static fields
.field private static final CHARSET_NAME_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_READ_TIMEOUT:I = 0x3a98

.field public static final DISABLE_CERT_CHECKING_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.sdk.disableCertChecking"

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HEADER_AMZ_TARGET:Ljava/lang/String; = "X-Amz-Target"

.field private static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final HTTP_OK_STATUS_CODE:I = 0xc8

.field private static final QUERY_CONFIGURATION_TARGET:Ljava/lang/String; = "RemoteConfigurationDistributionService.QueryConfiguration"

.field private static final REQUEST_KEY_APP_CONFIG_ID:Ljava/lang/String; = "appConfigId"

.field private static final REQUEST_KEY_CLIENT_ATTRIBUTES:Ljava/lang/String; = "clientAttributes"

.field private static final REQUEST_KEY_LAST_SEEN_ENTITY_TAG:Ljava/lang/String; = "lastSeenEntityTag"

.field private static final RESPONSE_KEY_CONFIGURATION:Ljava/lang/String; = "resultVariables"

.field private static final RESPONSE_KEY_ENTITY_TAG:Ljava/lang/String; = "entityTag"

.field private static final RESPONSE_KEY_UPDATED:Ljava/lang/String; = "updatedConfigurationAvailable"

.field private static final TAG:Ljava/lang/String;

.field private static final XAMZ_JSON_CONTENT_TYPE:Ljava/lang/String; = "application/x-amz-json-1.1"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndpoint:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endpoint"    # Ljava/net/URL;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-nez p1, :cond_d

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_d
    if-nez p2, :cond_17

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_17
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mContext:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mEndpoint:Ljava/net/URL;

    .line 184
    return-void
.end method

.method private buildRemoteConfiguration(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .registers 11
    .param p1, "appConfigId"    # Ljava/lang/String;
    .param p2, "serviceResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 426
    :try_start_0
    const-string v0, "updatedConfigurationAvailable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 427
    .local v5, "updated":Z
    const-string v0, "entityTag"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_26

    move-result-object v4

    .line 431
    .local v4, "entityTag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 433
    .local v1, "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    :try_start_d
    new-instance v6, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    const-string v0, "resultVariables"

    .line 434
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v6, v0, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1d} :catch_2f

    .end local v1    # "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .local v6, "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    move-object v1, v6

    .line 439
    .end local v6    # "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .restart local v1    # "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    :goto_1e
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    const/4 v3, 0x2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0

    .line 428
    .end local v1    # "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .end local v4    # "entityTag":Ljava/lang/String;
    .end local v5    # "updated":Z
    :catch_26
    move-exception v7

    .line 429
    .local v7, "e":Lorg/json/JSONException;
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v2, "Expected elements missing from the response"

    invoke-direct {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 436
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v1    # "configuration":Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .restart local v4    # "entityTag":Ljava/lang/String;
    .restart local v5    # "updated":Z
    :catch_2f
    move-exception v0

    goto :goto_1e
.end method

.method private buildRequestBody(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)[B
    .registers 10
    .param p1, "appConfigId"    # Ljava/lang/String;
    .param p2, "attributes"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    .param p3, "entityTag"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v3, "requestPayload":Lorg/json/JSONObject;
    :try_start_5
    const-string v4, "appConfigId"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v4, "lastSeenEntityTag"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    if-eqz p2, :cond_25

    .line 309
    invoke-interface {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->getAllAttributes()Ljava/util/Map;

    move-result-object v0

    .line 310
    .local v0, "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_25

    .line 311
    const-string v4, "clientAttributes"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 312
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_34

    .line 318
    .end local v0    # "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 319
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    return-object v4

    .line 315
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catch_34
    move-exception v2

    .line 316
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v5, "Error building request"

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private configureConnection(Ljava/net/HttpURLConnection;)V
    .registers 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/16 v1, 0x3a98

    .line 249
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 250
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 252
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1e

    move-object v0, p1

    .line 253
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 255
    .local v0, "https":Ljavax/net/ssl/HttpsURLConnection;
    const-string v1, "com.amazonaws.sdk.disableCertChecking"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 256
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->disableCertificateValidation(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 259
    .end local v0    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1e
    return-void
.end method

.method private disableCertificateValidation(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 8
    .param p1, "connection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    const/4 v5, 0x0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    if-nez v1, :cond_29

    .line 264
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;

    invoke-direct {v4, v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$1;)V

    aput-object v4, v2, v3

    .line 267
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_f
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 268
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1a
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_1a} :catch_2a

    .line 272
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 273
    new-instance v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;

    invoke-direct {v3, v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$1;)V

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 275
    .end local v2    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :cond_29
    return-void

    .line 269
    .restart local v2    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :catch_2a
    move-exception v0

    .line 270
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private isNetworkAvailable()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 217
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_e

    .line 222
    :cond_d
    :goto_d
    return v2

    .line 221
    :cond_e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 222
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d
.end method

.method private static openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 236
    :catch_7
    move-exception v0

    .line 237
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v2, "Unable to open connection"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readResponse(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .registers 15
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_21

    move-result v9

    .line 366
    .local v9, "statusCode":I
    const/16 v10, 0xc8

    if-eq v9, v10, :cond_2a

    .line 367
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request unsuccessful. Received code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 363
    .end local v9    # "statusCode":I
    :catch_21
    move-exception v3

    .line 364
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Unable to get response code."

    invoke-direct {v10, v11, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 370
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v9    # "statusCode":I
    :cond_2a
    const/4 v7, 0x0

    .line 371
    .local v7, "responseJson":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 372
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 374
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_2d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 375
    const-string v10, "gzip"

    const-string v11, "Content-Encoding"

    .line 376
    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 375
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 377
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 379
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_45
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v6, v1, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_4c} :catch_bd
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_4c} :catch_96
    .catchall {:try_start_2d .. :try_end_4c} :catchall_68

    .line 380
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 381
    .local v4, "readInt":I
    :try_start_4d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v8, "responseSB":Ljava/lang/StringBuilder;
    :goto_52
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_6f

    .line 383
    int-to-char v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5d} :catch_5e
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_5d} :catch_ba
    .catchall {:try_start_4d .. :try_end_5d} :catchall_b7

    goto :goto_52

    .line 386
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    .end local v8    # "responseSB":Ljava/lang/StringBuilder;
    :catch_5e
    move-exception v3

    move-object v5, v6

    .line 387
    .end local v4    # "readInt":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "ioe":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_60
    :try_start_60
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Error reading response."

    invoke-direct {v10, v11, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_68

    .line 391
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_68
    move-exception v10

    :goto_69
    if-eqz v5, :cond_a8

    .line 393
    :try_start_6b
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_9f

    .line 401
    :cond_6e
    :goto_6e
    throw v10

    .line 385
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "readInt":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    .restart local v8    # "responseSB":Ljava/lang/StringBuilder;
    :cond_6f
    :try_start_6f
    new-instance v7, Lorg/json/JSONObject;

    .end local v7    # "responseJson":Lorg/json/JSONObject;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_5e
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_78} :catch_ba
    .catchall {:try_start_6f .. :try_end_78} :catchall_b7

    .line 391
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_87

    .line 393
    :try_start_7a
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 405
    :cond_7d
    :goto_7d
    return-object v7

    .line 394
    :catch_7e
    move-exception v3

    .line 395
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Error closing response reader"

    invoke-direct {v10, v11, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 397
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_87
    if-eqz v1, :cond_7d

    .line 399
    :try_start_89
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_7d

    .line 400
    :catch_8d
    move-exception v3

    .line 401
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Error closing response stream"

    invoke-direct {v10, v11, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 388
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "readInt":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "responseSB":Ljava/lang/StringBuilder;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :catch_96
    move-exception v0

    .line 389
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    :goto_97
    :try_start_97
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Invalid response format."

    invoke-direct {v10, v11, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_68

    .line 394
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_9f
    move-exception v3

    .line 395
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Error closing response reader"

    invoke-direct {v10, v11, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 397
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_a8
    if-eqz v1, :cond_6e

    .line 399
    :try_start_aa
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_6e

    .line 400
    :catch_ae
    move-exception v3

    .line 401
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v10, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v11, "Error closing response stream"

    invoke-direct {v10, v11, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 391
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "readInt":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catchall_b7
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_69

    .line 388
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_ba
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_97

    .line 386
    .end local v4    # "readInt":I
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    :catch_bd
    move-exception v3

    goto :goto_60
.end method

.method private setHeaders(Ljava/net/HttpURLConnection;)V
    .registers 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 287
    const-string v0, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "X-Amz-Target"

    const-string v1, "RemoteConfigurationDistributionService.QueryConfiguration"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private writeRequest(Ljava/net/HttpURLConnection;[B)V
    .registers 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "body"    # [B

    .prologue
    .line 330
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 331
    array-length v2, p2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 335
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 336
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_22
    .catchall {:try_start_9 .. :try_end_13} :catchall_2b

    .line 340
    if-eqz v1, :cond_18

    .line 342
    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    .line 348
    :cond_18
    return-void

    .line 343
    :catch_19
    move-exception v0

    .line 344
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v3, "Error closing the connection\'s output"

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 337
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_22
    move-exception v0

    .line 338
    .restart local v0    # "ioe":Ljava/io/IOException;
    :try_start_23
    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v3, "Error writing the request"

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 340
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_2b
    move-exception v2

    if-eqz v1, :cond_31

    .line 342
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 344
    :cond_31
    throw v2

    .line 343
    :catch_32
    move-exception v0

    .line 344
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v3, "Error closing the connection\'s output"

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .registers 9
    .param p1, "appConfigId"    # Ljava/lang/String;
    .param p2, "attributes"    # Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    .param p3, "entityTag"    # Ljava/lang/String;

    .prologue
    .line 190
    if-nez p1, :cond_a

    .line 191
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The App Configuration ID may not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_a
    if-nez p2, :cond_14

    .line 194
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The attributes may not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_14
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_22

    .line 197
    new-instance v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v4, "There is no network connectivity."

    invoke-direct {v3, v4}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_22
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mEndpoint:Ljava/net/URL;

    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 200
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->configureConnection(Ljava/net/HttpURLConnection;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->setHeaders(Ljava/net/HttpURLConnection;)V

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->buildRequestBody(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)[B

    move-result-object v1

    .line 203
    .local v1, "requestBody":[B
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->writeRequest(Ljava/net/HttpURLConnection;[B)V

    .line 204
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->readResponse(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v2

    .line 205
    .local v2, "serviceResponse":Lorg/json/JSONObject;
    invoke-direct {p0, p1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->buildRemoteConfiguration(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object v3

    return-object v3
.end method
