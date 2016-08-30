.class public Lcom/amazon/device/management/remoteconfig/TimeInterval;
.super Ljava/lang/Object;
.source "TimeInterval.java"


# instance fields
.field private final mEnd:J

.field private final mStart:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6
    .param p1, "start"    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "start"
        .end annotation
    .end param
    .param p3, "end"    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "end"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mStart:J

    .line 34
    iput-wide p3, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mEnd:J

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_5

    .line 65
    :cond_4
    :goto_4
    return v1

    .line 61
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 62
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/amazon/device/management/remoteconfig/TimeInterval;

    .line 65
    .local v0, "that":Lcom/amazon/device/management/remoteconfig/TimeInterval;
    iget-wide v4, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mStart:J

    iget-wide v6, v0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mStart:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_26

    iget-wide v4, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mEnd:J

    iget-wide v6, v0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mEnd:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4
.end method

.method public getEnd()J
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end"
    .end annotation

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mEnd:J

    return-wide v0
.end method

.method public getStart()J
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start"
    .end annotation

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mStart:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/amazon/device/management/remoteconfig/TimeInterval;->mEnd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
