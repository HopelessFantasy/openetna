.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl;
    }
.end annotation


# instance fields
.field private finalizer:Ljava/lang/Object;

.field private impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/util/Timer$TimerImpl;

    const-string v1, "java.util.Timer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    .line 364
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/lang/Object;

    .line 388
    new-instance v0, Ljava/util/Timer$TimerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    .line 389
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "name"
    .parameter "isDaemon"

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/lang/Object;

    .line 377
    new-instance v0, Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, p1, p2}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    .line 378
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "isDaemon"

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/lang/Object;

    .line 351
    new-instance v0, Ljava/util/Timer$TimerImpl;

    const-string v1, "java.util.Timer"

    invoke-direct {v0, v1, p1}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    .line 353
    return-void
.end method

.method static synthetic access$100(Ljava/util/Timer;)Ljava/util/Timer$TimerImpl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    return-object v0
.end method

.method private scheduleImpl(Ljava/util/TimerTask;JJZ)V
    .registers 13
    .parameter "task"
    .parameter "delay"
    .parameter "period"
    .parameter "fixed"

    .prologue
    .line 568
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v2

    .line 569
    :try_start_3
    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-static {v3}, Ljava/util/Timer$TimerImpl;->access$300(Ljava/util/Timer$TimerImpl;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 570
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "K00f3"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 595
    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v3

    .line 573
    :cond_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v0, p2, v3

    .line 575
    .local v0, when:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_32

    .line 576
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K00f5"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 579
    :cond_32
    iget-object v3, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_17

    .line 580
    :try_start_35
    invoke-virtual {p1}, Ljava/util/TimerTask;->isScheduled()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 581
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "K00f6"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    :catchall_47
    move-exception v4

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_47

    :try_start_49
    throw v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_17

    .line 584
    :cond_4a
    :try_start_4a
    iget-boolean v4, p1, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v4, :cond_5a

    .line 585
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "K00f7"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 588
    :cond_5a
    iput-wide v0, p1, Ljava/util/TimerTask;->when:J

    .line 589
    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    .line 590
    iput-boolean p6, p1, Ljava/util/TimerTask;->fixedRate:Z

    .line 591
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_47

    .line 594
    :try_start_61
    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-static {v3, p1}, Ljava/util/Timer$TimerImpl;->access$400(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V

    .line 595
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_17

    .line 596
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->cancel()V

    .line 400
    return-void
.end method

.method public purge()I
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v1}, Ljava/util/Timer$TimerImpl;->purge()I

    move-result v1

    monitor-exit v0

    return v1

    .line 414
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .registers 11
    .parameter "task"
    .parameter "delay"

    .prologue
    .line 455
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_c

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 458
    :cond_c
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 459
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .registers 13
    .parameter "task"
    .parameter "delay"
    .parameter "period"

    .prologue
    const-wide/16 v1, 0x0

    .line 478
    cmp-long v0, p2, v1

    if-ltz v0, :cond_a

    cmp-long v0, p4, v1

    if-gtz v0, :cond_10

    .line 479
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 481
    :cond_10
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 482
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .registers 12
    .parameter "task"
    .parameter "when"

    .prologue
    const-wide/16 v4, 0x0

    .line 433
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_10

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 436
    :cond_10
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 437
    .local v7, delay:J
    cmp-long v0, v7, v4

    if-gez v0, :cond_28

    move-wide v2, v4

    :goto_1f
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 438
    return-void

    :cond_28
    move-wide v2, v7

    .line 437
    goto :goto_1f
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 14
    .parameter "task"
    .parameter "when"
    .parameter "period"

    .prologue
    const-wide/16 v4, 0x0

    .line 502
    cmp-long v0, p3, v4

    if-lez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_14

    .line 503
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 505
    :cond_14
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 506
    .local v7, delay:J
    cmp-long v0, v7, v4

    if-gez v0, :cond_2b

    move-wide v2, v4

    :goto_23
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 507
    return-void

    :cond_2b
    move-wide v2, v7

    .line 506
    goto :goto_23
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .registers 13
    .parameter "task"
    .parameter "delay"
    .parameter "period"

    .prologue
    const-wide/16 v1, 0x0

    .line 527
    cmp-long v0, p2, v1

    if-ltz v0, :cond_a

    cmp-long v0, p4, v1

    if-gtz v0, :cond_10

    .line 528
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 530
    :cond_10
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 531
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 14
    .parameter "task"
    .parameter "when"
    .parameter "period"

    .prologue
    const-wide/16 v4, 0x0

    .line 551
    cmp-long v0, p3, v4

    if-lez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_14

    .line 552
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 554
    :cond_14
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 555
    .local v7, delay:J
    cmp-long v0, v7, v4

    if-gez v0, :cond_2b

    move-wide v2, v4

    :goto_23
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 556
    return-void

    :cond_2b
    move-wide v2, v7

    .line 555
    goto :goto_23
.end method
