.class Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$ConfigurationTable;
.super Ljava/lang/Object;
.source "ConfigurationDb.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationTable"
.end annotation


# static fields
.field private static final COLUMN_ENTITY_TAG:Ljava/lang/String; = "entity_tag"

.field private static final COLUMN_JSON:Ljava/lang/String; = "json"

.field private static final COLUMN_ORIGIN:Ljava/lang/String; = "origin"

.field private static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TABLE_NAME:Ljava/lang/String; = "configuration"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
