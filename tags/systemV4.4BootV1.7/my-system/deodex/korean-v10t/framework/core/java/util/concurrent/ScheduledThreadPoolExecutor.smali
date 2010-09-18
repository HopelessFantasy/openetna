.class public Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$1;,
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;,
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    }
.end annotation


# static fields
.field private static final NANO_ORIGIN:J

.field private static final sequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile executeExistingDelayedTasksAfterShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->NANO_ORIGIN:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .parameter "corePoolSize"

    .prologue
    .line 228
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$1;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 230
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .registers 11
    .parameter "corePoolSize"
    .parameter "handler"

    .prologue
    .line 260
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$1;)V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 262
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 11
    .parameter "corePoolSize"
    .parameter "threadFactory"

    .prologue
    .line 244
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$1;)V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 246
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 13
    .parameter "corePoolSize"
    .parameter "threadFactory"
    .parameter "handler"

    .prologue
    .line 279
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$1;)V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 281
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$201(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method private cancelUnwantedTasks()V
    .registers 9

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    move-result v4

    .line 194
    .local v4, keepDelayed:Z
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    move-result v5

    .line 195
    .local v5, keepPeriodic:Z
    if-nez v4, :cond_14

    if-nez v5, :cond_14

    .line 196
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 210
    :cond_13
    :goto_13
    return-void

    .line 197
    :cond_14
    if-nez v4, :cond_18

    if-eqz v5, :cond_13

    .line 198
    :cond_18
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 199
    .local v2, entries:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    array-length v7, v2

    if-ge v3, v7, :cond_40

    .line 200
    aget-object v1, v2, v3

    .line 201
    .local v1, e:Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v7, :cond_3a

    .line 202
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    move-object v6, v0

    .line 203
    .local v6, t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->isPeriodic()Z

    move-result v7

    if-eqz v7, :cond_3d

    if-nez v5, :cond_3a

    .line 204
    :goto_36
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->cancel(Z)Z

    .line 199
    .end local v6           #t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 203
    .restart local v6       #t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    :cond_3d
    if-nez v4, :cond_3a

    goto :goto_36

    .line 207
    .end local v1           #e:Ljava/lang/Object;
    .end local v6           #t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    :cond_40
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V

    goto :goto_13
.end method

.method private delayedExecute(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "command"

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 186
    :goto_9
    return-void

    .line 182
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getPoolSize()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 183
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    .line 185
    :cond_17
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "command"

    .prologue
    .line 361
    if-nez p1, :cond_8

    .line 362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 363
    :cond_8
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 364
    return-void
.end method

.method public getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .registers 2

    .prologue
    .line 408
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    return v0
.end method

.method public getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method final now()J
    .registers 5

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->NANO_ORIGIN:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "task"

    .prologue
    .line 213
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-nez v0, :cond_6

    .line 214
    const/4 v0, 0x0

    .line 215
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 13
    .parameter "command"
    .parameter "delay"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 287
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 288
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v4, v1, v6

    .line 289
    .local v4, triggerTime:J
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 291
    .local v0, t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/lang/Runnable;)V

    .line 292
    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 12
    .parameter
    .parameter "delay"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 299
    :cond_4
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 300
    :cond_a
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_12

    const-wide/16 p2, 0x0

    .line 301
    :cond_12
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v3

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    add-long v1, v3, v5

    .line 302
    .local v1, triggerTime:J
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V

    .line 304
    .local v0, t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/lang/Runnable;)V

    .line 305
    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15
    .parameter "command"
    .parameter "initialDelay"
    .parameter "period"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 312
    if-eqz p1, :cond_6

    if-nez p6, :cond_c

    .line 313
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 314
    :cond_c
    cmp-long v1, p4, v2

    if-gtz v1, :cond_16

    .line 315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 316
    :cond_16
    cmp-long v1, p2, v2

    if-gez v1, :cond_1c

    const-wide/16 p2, 0x0

    .line 317
    :cond_1c
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v1

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v4, v1, v6

    .line 318
    .local v4, triggerTime:J
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    .line 323
    .local v0, t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/lang/Runnable;)V

    .line 324
    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15
    .parameter "command"
    .parameter "initialDelay"
    .parameter "delay"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 331
    if-eqz p1, :cond_6

    if-nez p6, :cond_c

    .line 332
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 333
    :cond_c
    cmp-long v1, p4, v2

    if-gtz v1, :cond_16

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 335
    :cond_16
    cmp-long v1, p2, v2

    if-gez v1, :cond_1c

    const-wide/16 p2, 0x0

    .line 336
    :cond_1c
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v1

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v4, v1, v6

    .line 337
    .local v4, triggerTime:J
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    neg-long v1, p4

    invoke-virtual {p6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    .line 342
    .local v0, t:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/lang/Runnable;)V

    .line 343
    return-object v0
.end method

.method public setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 392
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    .line 393
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 394
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->cancelUnwantedTasks()V

    .line 395
    :cond_d
    return-void
.end method

.method public setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 422
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 423
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 424
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->cancelUnwantedTasks()V

    .line 425
    :cond_d
    return-void
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->cancelUnwantedTasks()V

    .line 454
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 455
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 369
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 7
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, result:Ljava/lang/Object;,"TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
