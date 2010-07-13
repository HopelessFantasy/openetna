.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field cancelled:Z

.field fixedRate:Z

.field final lock:Ljava/lang/Object;

.field period:J

.field private scheduledTime:J

.field when:J


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 97
    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_4
    iget-boolean v2, p0, Ljava/util/TimerTask;->cancelled:Z

    if-nez v2, :cond_16

    iget-wide v2, p0, Ljava/util/TimerTask;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    move v0, v6

    .line 99
    .local v0, willRun:Z
    :goto_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/TimerTask;->cancelled:Z

    .line 100
    monitor-exit v1

    return v0

    .line 98
    .end local v0           #willRun:Z
    :cond_16
    const/4 v2, 0x0

    move v0, v2

    goto :goto_11

    .line 101
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method getWhen()J
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-wide v1, p0, Ljava/util/TimerTask;->when:J

    monitor-exit v0

    return-wide v1

    .line 54
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isScheduled()Z
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 73
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_5
    iget-wide v1, p0, Ljava/util/TimerTask;->when:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_11

    iget-wide v1, p0, Ljava/util/TimerTask;->scheduledTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_14

    :cond_11
    const/4 v1, 0x1

    :goto_12
    monitor-exit v0

    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_12

    .line 75
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-wide v1, p0, Ljava/util/TimerTask;->scheduledTime:J

    monitor-exit v0

    return-wide v1

    .line 115
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setScheduledTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 61
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iput-wide p1, p0, Ljava/util/TimerTask;->scheduledTime:J

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
