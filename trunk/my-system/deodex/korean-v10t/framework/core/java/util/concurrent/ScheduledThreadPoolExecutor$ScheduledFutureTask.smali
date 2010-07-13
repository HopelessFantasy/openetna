.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/util/concurrent/ScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final period:J

.field private final sequenceNumber:J

.field final synthetic this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private time:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8
    .parameter
    .parameter "r"
    .parameter
    .parameter "ns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;J)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 83
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 84
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 86
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V
    .registers 10
    .parameter
    .parameter "r"
    .parameter
    .parameter "ns"
    .parameter "period"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;JJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 93
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 94
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 95
    iput-wide p6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 96
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 97
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V
    .registers 7
    .parameter
    .parameter
    .parameter "ns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 103
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 104
    iput-wide p3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 106
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 107
    return-void
.end method

.method static synthetic access$101(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->runAndReset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$301(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method private runPeriodic()V
    .registers 7

    .prologue
    .line 141
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-static {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->access$101(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)Z

    move-result v1

    .line 142
    .local v1, ok:Z
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    .line 144
    .local v0, down:Z
    if-eqz v1, :cond_3f

    if-eqz v0, :cond_1e

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isTerminating()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 147
    :cond_1e
    iget-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 148
    .local v2, p:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_35

    .line 149
    iget-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 152
    :goto_2b
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$201(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v2           #p:J
    :cond_34
    :goto_34
    return-void

    .line 151
    .restart local v2       #p:J
    :cond_35
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    goto :goto_2b

    .line 156
    .end local v2           #p:J
    :cond_3f
    if-eqz v0, :cond_34

    .line 157
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->interruptIdleWorkers()V

    goto :goto_34
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .registers 14
    .parameter "other"

    .prologue
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 115
    if-ne p1, p0, :cond_8

    .line 116
    const/4 v4, 0x0

    .line 126
    :goto_7
    return v4

    .line 117
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    move-object v3, v0

    .line 118
    .local v3, x:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    iget-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-wide v6, v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    sub-long v1, v4, v6

    .line 119
    .local v1, diff:J
    cmp-long v4, v1, v10

    if-gez v4, :cond_18

    move v4, v8

    .line 120
    goto :goto_7

    .line 121
    :cond_18
    cmp-long v4, v1, v10

    if-lez v4, :cond_1e

    move v4, v9

    .line 122
    goto :goto_7

    .line 123
    :cond_1e
    iget-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    iget-wide v6, v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_28

    move v4, v8

    .line 124
    goto :goto_7

    :cond_28
    move v4, v9

    .line 126
    goto :goto_7
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 8
    .parameter "unit"

    .prologue
    .line 110
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 111
    .local v0, d:J
    return-wide v0
.end method

.method isPeriodic()Z
    .registers 5

    .prologue
    .line 134
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public run()V
    .registers 2

    .prologue
    .line 164
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 165
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->runPeriodic()V

    .line 168
    :goto_9
    return-void

    .line 167
    :cond_a
    invoke-static {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->access$301(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)V

    goto :goto_9
.end method
