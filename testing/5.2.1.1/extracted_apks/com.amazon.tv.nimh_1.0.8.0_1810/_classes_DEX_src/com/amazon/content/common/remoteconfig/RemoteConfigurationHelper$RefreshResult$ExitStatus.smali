.class final enum Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
.super Ljava/lang/Enum;
.source "RemoteConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

.field public static final enum CONFIGURATION_MODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

.field public static final enum CONFIGURATION_UNMODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

.field public static final enum FAILURE:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

.field public static final enum THROTTLED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    new-instance v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const-string v1, "CONFIGURATION_MODIFIED"

    invoke-direct {v0, v1, v2}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->CONFIGURATION_MODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    .line 273
    new-instance v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const-string v1, "CONFIGURATION_UNMODIFIED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->CONFIGURATION_UNMODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    .line 274
    new-instance v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const-string v1, "THROTTLED"

    invoke-direct {v0, v1, v4}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->THROTTLED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    .line 275
    new-instance v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->FAILURE:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    .line 271
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    sget-object v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->CONFIGURATION_MODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->CONFIGURATION_UNMODIFIED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->THROTTLED:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->FAILURE:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->$VALUES:[Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    const-class v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    .registers 1

    .prologue
    .line 271
    sget-object v0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->$VALUES:[Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    invoke-virtual {v0}, [Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    return-object v0
.end method
