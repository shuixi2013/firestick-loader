.class public interface abstract Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
.super Ljava/lang/Object;
.source "RemoteConfiguration.java"


# static fields
.field public static final ORIGIN_DEFAULT:I = 0x1

.field public static final ORIGIN_OVERWRITTEN:I = 0x3

.field public static final ORIGIN_SYNCED:I = 0x2


# virtual methods
.method public abstract getAppConfigurationId()Ljava/lang/String;
.end method

.method public abstract getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
.end method

.method public abstract getEntityTag()Ljava/lang/String;
.end method

.method public abstract getOrigin()I
.end method

.method public abstract isUpdate()Z
.end method
