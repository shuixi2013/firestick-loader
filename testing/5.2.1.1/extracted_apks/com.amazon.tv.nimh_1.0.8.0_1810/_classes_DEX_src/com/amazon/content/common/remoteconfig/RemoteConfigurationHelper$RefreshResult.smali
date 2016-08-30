.class Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;
.super Ljava/lang/Object;
.source "RemoteConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    }
.end annotation


# instance fields
.field private final mCause:Ljava/lang/Exception;

.field private final mExitStatus:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;


# direct methods
.method public constructor <init>(Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exitStatus"    # Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;->mExitStatus:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    .line 249
    iput-object p2, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;->mCause:Ljava/lang/Exception;

    .line 250
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Exception;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;->mCause:Ljava/lang/Exception;

    return-object v0
.end method

.method public getStatus()Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult;->mExitStatus:Lcom/amazon/content/common/remoteconfig/RemoteConfigurationHelper$RefreshResult$ExitStatus;

    return-object v0
.end method
