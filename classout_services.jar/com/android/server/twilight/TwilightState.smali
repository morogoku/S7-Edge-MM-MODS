.class public Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mIsNight:Z

.field private final mTodaySunrise:J

.field private final mTodaySunset:J

.field private final mTomorrowSunrise:J

.field private final mYesterdaySunset:J


# direct methods
.method constructor <init>(ZJJJJ)V
    .registers 10
    .param p1, "isNight"    # Z
    .param p2, "yesterdaySunset"    # J
    .param p4, "todaySunrise"    # J
    .param p6, "todaySunset"    # J
    .param p8, "tomorrowSunrise"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, mIsNight:Z

    .line 38
    iput-wide p2, p0, mYesterdaySunset:J

    .line 39
    iput-wide p4, p0, mTodaySunrise:J

    .line 40
    iput-wide p6, p0, mTodaySunset:J

    .line 41
    iput-wide p8, p0, mTomorrowSunrise:J

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 89
    if-eqz p1, :cond_2a

    iget-boolean v0, p0, mIsNight:Z

    iget-boolean v1, p1, mIsNight:Z

    if-ne v0, v1, :cond_2a

    iget-wide v0, p0, mYesterdaySunset:J

    iget-wide v2, p1, mYesterdaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, mTodaySunrise:J

    iget-wide v2, p1, mTodaySunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, mTodaySunset:J

    iget-wide v2, p1, mTodaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, mTomorrowSunrise:J

    iget-wide v2, p1, mTomorrowSunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/server/twilight/TwilightState;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getTodaySunrise()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, mTodaySunrise:J

    return-wide v0
.end method

.method public getTodaySunset()J
    .registers 3

    .prologue
    .line 72
    iget-wide v0, p0, mTodaySunset:J

    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, mTomorrowSunrise:J

    return-wide v0
.end method

.method public getYesterdaySunset()J
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, mYesterdaySunset:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, mIsNight:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 104
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 105
    .local v0, "f":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYesterdaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, mYesterdaySunset:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTodaySunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, mTodaySunrise:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTodaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, mTodaySunset:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTomorrowSunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, mTomorrowSunrise:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
