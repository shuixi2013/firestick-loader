.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;
.super Ljava/lang/Object;
.source "ArcusThrottler.java"


# static fields
.field public static final CAUSE_FAILED_SYNC:I = 0x14

.field public static final CAUSE_NONE:I = 0x0

.field public static final CAUSE_SUCCESSFUL_SYNC:I = 0xa

.field public static final CAUSE_THROTTLED_SYNC:I = 0x1e

.field private static final DEFAULT_SYNC_JITTER_IN_MS:J = 0x1388L

.field private static final DEFAULT_TIME_BETWEEN_SYNCS_IN_MS:J = 0xdbba0L

.field private static final MAX_EXP_BACKOFF_WINDOW_SIZE_IN_MS:J = 0xdbba0L

.field private static final ONE_SECOND_MS:J = 0x3e8L


# instance fields
.field private mCause:I

.field private mNextSyncAttemptTime:J

.field private mSyncAttempts:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return-void
.end method

.method private getCurrentWindowSizeInMS()J
    .registers 6

    .prologue
    .line 87
    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    add-int/lit8 v4, v4, 0x1

    shl-long v0, v2, v4

    .line 88
    .local v0, "window":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_15

    const-wide/32 v2, 0xdbba0

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 89
    :cond_15
    const-wide/32 v0, 0xdbba0

    .line 91
    :cond_18
    return-wide v0
.end method

.method private getJitterInMS()J
    .registers 5

    .prologue
    .line 113
    const-wide v0, 0x40b3880000000000L    # 5000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private getRandomTimeInsideCurrentWindowInMS()J
    .registers 5

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getCurrentWindowSizeInMS()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public getCause()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return v0
.end method

.method public getTimeToNextSyncInMS()J
    .registers 7

    .prologue
    .line 167
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 168
    .local v0, "difference":J
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public isSyncAllowedRightNow()Z
    .registers 5

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getTimeToNextSyncInMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public updateSyncTimeAfterFailure()V
    .registers 5

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getCurrentWindowSizeInMS()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 140
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    .line 142
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 143
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getRandomTimeInsideCurrentWindowInMS()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    .line 144
    const/16 v0, 0x14

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    .line 145
    return-void
.end method

.method public updateSyncTimeAfterSuccess()V
    .registers 5

    .prologue
    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    .line 156
    const/16 v0, 0xa

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    .line 157
    return-void
.end method

.method public updateSyncTimeAfterThrottle(J)V
    .registers 8
    .param p1, "retryAfterInMS"    # J

    .prologue
    const-wide/32 v0, 0xdbba0

    .line 125
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_21

    .line 126
    :goto_9
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 128
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 129
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getJitterInMS()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    .line 130
    const/16 v0, 0x1e

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    .line 131
    return-void

    :cond_21
    move-wide p1, v0

    .line 125
    goto :goto_9
.end method
