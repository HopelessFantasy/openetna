.class public Ljava/util/concurrent/CyclicBarrier;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# instance fields
.field private final barrierCommand:Ljava/lang/Runnable;

.field private broken:Z

.field private count:I

.field private generation:J

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final parties:I

.field private final trip:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "parties"

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .registers 4
    .parameter "parties"
    .parameter "barrierAction"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    .line 217
    if-gtz p1, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 218
    :cond_1a
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    .line 219
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 220
    iput-object p2, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 221
    return-void
.end method

.method private breakBarrier()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/CyclicBarrier;->broken:Z

    .line 137
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 138
    return-void
.end method

.method private dowait(ZJ)I
    .registers 15
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    .line 145
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 146
    .local v5, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    :try_start_7
    iget v7, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    const/4 v8, 0x1

    sub-int v4, v7, v8

    iput v4, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 149
    .local v4, index:I
    iget-wide v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J

    .line 151
    .local v1, g:J
    iget-boolean v7, p0, Ljava/util/concurrent/CyclicBarrier;->broken:Z

    if-eqz v7, :cond_1f

    .line 152
    new-instance v7, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v7}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    throw v7
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1a

    .line 199
    .end local v1           #g:J
    .end local v4           #index:I
    :catchall_1a
    move-exception v7

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 154
    .restart local v1       #g:J
    .restart local v4       #index:I
    :cond_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 155
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 156
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 159
    :cond_2e
    if-nez v4, :cond_4d

    .line 160
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_1a

    .line 161
    const/4 v6, 0x0

    .line 163
    .local v6, ranAction:Z
    :try_start_34
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 164
    .local v0, command:Ljava/lang/Runnable;
    if-eqz v0, :cond_3b

    .line 165
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_46

    .line 166
    :cond_3b
    const/4 v6, 0x1

    .line 167
    const/4 v7, 0x0

    .line 169
    if-nez v6, :cond_42

    .line 170
    :try_start_3f
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_1a

    .line 199
    :cond_42
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v0           #command:Ljava/lang/Runnable;
    .end local v6           #ranAction:Z
    :goto_45
    return v7

    .line 169
    .restart local v6       #ranAction:Z
    :catchall_46
    move-exception v7

    if-nez v6, :cond_4c

    .line 170
    :try_start_49
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    :cond_4c
    throw v7
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_1a

    .line 176
    .end local v6           #ranAction:Z
    :cond_4d
    if-nez p1, :cond_64

    .line 177
    :try_start_4f
    iget-object v7, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_54} :catch_6f

    .line 185
    :cond_54
    :goto_54
    :try_start_54
    iget-boolean v7, p0, Ljava/util/concurrent/CyclicBarrier;->broken:Z

    if-nez v7, :cond_5e

    iget-wide v7, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_75

    .line 187
    :cond_5e
    new-instance v7, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v7}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    throw v7
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_1a

    .line 178
    :cond_64
    cmp-long v7, p2, v9

    if-lez v7, :cond_54

    .line 179
    :try_start_68
    iget-object v7, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_6d} :catch_6f

    move-result-wide p2

    goto :goto_54

    .line 180
    :catch_6f
    move-exception v7

    move-object v3, v7

    .line 181
    .local v3, ie:Ljava/lang/InterruptedException;
    :try_start_71
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 182
    throw v3

    .line 189
    .end local v3           #ie:Ljava/lang/InterruptedException;
    :cond_75
    iget-wide v7, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_1a

    cmp-long v7, v1, v7

    if-gez v7, :cond_80

    .line 199
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v7, v4

    goto :goto_45

    .line 192
    :cond_80
    if-eqz p1, :cond_4d

    cmp-long v7, p2, v9

    if-gtz v7, :cond_4d

    .line 193
    :try_start_86
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 194
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v7}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v7
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_1a
.end method

.method private nextGeneration()V
    .registers 5

    .prologue
    .line 127
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 128
    iget-wide v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J

    .line 129
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 130
    return-void
.end method


# virtual methods
.method public await()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result v1

    return v1

    .line 301
    :catch_8
    move-exception v0

    .line 302
    .local v0, toe:Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)I
    .registers 7
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0

    return v0
.end method

.method public getNumberWaiting()I
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 422
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 424
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 426
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getParties()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    return v0
.end method

.method public isBroken()Z
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 379
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 381
    :try_start_5
    iget-boolean v1, p0, Ljava/util/concurrent/CyclicBarrier;->broken:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 383
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public reset()V
    .registers 6

    .prologue
    .line 397
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 398
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 406
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:J

    .line 407
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/concurrent/CyclicBarrier;->broken:Z

    .line 408
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 410
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 412
    return-void

    .line 410
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
