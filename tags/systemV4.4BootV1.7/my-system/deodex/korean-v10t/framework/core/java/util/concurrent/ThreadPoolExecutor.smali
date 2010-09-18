.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_RUNNABLE_ARRAY:[Ljava/lang/Runnable; = null

.field static final RUNNING:I = 0x0

.field static final SHUTDOWN:I = 0x1

.field static final STOP:I = 0x2

.field static final TERMINATED:I = 0x3

.field private static final defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private volatile handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile keepAliveTime:J

.field private largestPoolSize:I

.field private final mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile maximumPoolSize:I

.field private volatile poolSize:I

.field volatile runState:I

.field private final termination:Ljava/util/concurrent/locks/Condition;

.field private volatile threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 274
    const-class v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Ljava/util/concurrent/ThreadPoolExecutor;->$assertionsDisabled:Z

    .line 278
    new-array v0, v1, [Ljava/lang/Runnable;

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->EMPTY_RUNNABLE_ARRAY:[Ljava/lang/Runnable;

    .line 283
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    .line 374
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void

    :cond_21
    move v0, v1

    .line 274
    goto :goto_a
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 16
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 716
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 17
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 782
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 784
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 17
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "threadFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 750
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 11
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "threadFactory"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 818
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 295
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 300
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    .line 305
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    .line 819
    if-ltz p1, :cond_25

    if-lez p2, :cond_25

    if-lt p2, p1, :cond_25

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_2b

    .line 823
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 824
    :cond_2b
    if-eqz p6, :cond_31

    if-eqz p7, :cond_31

    if-nez p8, :cond_37

    .line 825
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 826
    :cond_37
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 827
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 828
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 829
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 830
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 831
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 832
    return-void
.end method

.method private addIfUnderCorePoolSize(Ljava/lang/Runnable;)Z
    .registers 6
    .parameter "firstTask"

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, t:Ljava/lang/Thread;
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 412
    .local v0, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :try_start_6
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v2, v3, :cond_10

    .line 415
    invoke-direct {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->addThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_17

    move-result-object v1

    .line 417
    :cond_10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 419
    if-nez v1, :cond_1c

    .line 420
    const/4 v2, 0x0

    .line 422
    :goto_16
    return v2

    .line 417
    :catchall_17
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 421
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 422
    const/4 v2, 0x1

    goto :goto_16
.end method

.method private addIfUnderMaximumPoolSize(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 8
    .parameter "firstTask"

    .prologue
    .line 434
    const/4 v3, 0x0

    .line 435
    .local v3, t:Ljava/lang/Thread;
    const/4 v2, 0x0

    .line 436
    .local v2, next:Ljava/lang/Runnable;
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    .local v1, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 439
    :try_start_7
    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-ge v4, v5, :cond_1e

    .line 440
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    .line 441
    if-nez v2, :cond_1a

    .line 442
    move-object v2, p1

    .line 443
    :cond_1a
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_25

    move-result-object v3

    .line 446
    :cond_1e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 448
    if-nez v3, :cond_2a

    .line 449
    const/4 v4, 0x0

    .line 451
    :goto_24
    return-object v4

    .line 446
    :catchall_25
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 450
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move-object v4, v2

    .line 451
    goto :goto_24
.end method

.method private addThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .parameter "firstTask"

    .prologue
    .line 392
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v2, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V

    .line 393
    .local v2, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    .line 394
    .local v1, t:Ljava/lang/Thread;
    iput-object v1, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 395
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    .line 397
    .local v0, nt:I
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v0, v3, :cond_1e

    .line 398
    iput v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    .line 399
    :cond_1e
    return-object v1
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "r"
    .parameter "t"

    .prologue
    .line 1412
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 1014
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1015
    .local v0, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1018
    :goto_9
    :try_start_9
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_25

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 1019
    const/4 v3, 0x1

    .line 1025
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_12
    return v3

    .line 1020
    :cond_13
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1e

    .line 1021
    const/4 v3, 0x0

    .line 1025
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_12

    .line 1022
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    move-result-wide v1

    goto :goto_9

    .line 1025
    :catchall_25
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "t"
    .parameter "r"

    .prologue
    .line 1398
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "command"

    .prologue
    .line 850
    if-nez p1, :cond_8

    .line 851
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 853
    :cond_8
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    if-eqz v1, :cond_10

    .line 854
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 866
    :cond_f
    :goto_f
    return-void

    .line 857
    :cond_10
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_1c

    invoke-direct {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->addIfUnderCorePoolSize(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 859
    :cond_1c
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 861
    invoke-direct {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->addIfUnderMaximumPoolSize(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 862
    .local v0, r:Ljava/lang/Runnable;
    if-eq v0, p1, :cond_f

    .line 864
    if-nez v0, :cond_8

    .line 865
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1034
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1035
    return-void
.end method

.method public getActiveCount()I
    .registers 6

    .prologue
    .line 1310
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1311
    .local v1, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1313
    const/4 v2, 0x0

    .line 1314
    .local v2, n:I
    :try_start_6
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1315
    .local v3, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isActive()Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_25

    move-result v4

    if-eqz v4, :cond_c

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1320
    .end local v3           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_21
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_25
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public getCompletedTaskCount()J
    .registers 8

    .prologue
    .line 1375
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1376
    .local v1, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1378
    :try_start_5
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1379
    .local v2, n:J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1380
    .local v4, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    add-long/2addr v2, v5

    goto :goto_d

    .line 1383
    .end local v4           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #n:J
    :catchall_21
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getCorePoolSize()I
    .registers 2

    .prologue
    .line 1191
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .parameter "unit"

    .prologue
    .line 1289
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .registers 3

    .prologue
    .line 1331
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1332
    .local v0, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1334
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 1336
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getMaximumPoolSize()I
    .registers 2

    .prologue
    .line 1258
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .registers 2

    .prologue
    .line 1300
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

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
    .line 1092
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method getTask()Ljava/lang/Runnable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 462
    :cond_1
    :goto_1
    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    packed-switch v4, :pswitch_data_6a

    .line 502
    sget-boolean v4, Ljava/util/concurrent/ThreadPoolExecutor;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 464
    :pswitch_10
    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-gt v4, v5, :cond_20

    .line 465
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    move-object v4, p0

    .line 500
    :goto_1f
    return-object v4

    .line 467
    .restart local p0
    :cond_20
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 468
    .local v2, timeout:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2a

    move-object v4, v6

    .line 469
    goto :goto_1f

    .line 470
    :cond_2a
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 471
    .local v1, r:Ljava/lang/Runnable;
    if-eqz v1, :cond_38

    move-object v4, v1

    .line 472
    goto :goto_1f

    .line 473
    :cond_38
    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v4, v5, :cond_1

    move-object v4, v6

    .line 474
    goto :goto_1f

    .line 481
    .end local v1           #r:Ljava/lang/Runnable;
    .end local v2           #timeout:J
    :pswitch_40
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 482
    .restart local v1       #r:Ljava/lang/Runnable;
    if-eqz v1, :cond_4c

    move-object v4, v1

    .line 483
    goto :goto_1f

    .line 486
    :cond_4c
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 487
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    move-object v4, v6

    .line 488
    goto :goto_1f

    .line 494
    :cond_59
    :try_start_59
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Runnable;

    move-object p0, v0
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_63} :catch_67

    .end local p0
    move-object v4, p0

    goto :goto_1f

    .end local v1           #r:Ljava/lang/Runnable;
    .restart local p0
    :pswitch_65
    move-object v4, v6

    .line 500
    goto :goto_1f

    .line 495
    .restart local v1       #r:Ljava/lang/Runnable;
    :catch_67
    move-exception v4

    goto :goto_1

    .line 462
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_40
        :pswitch_65
    .end packed-switch
.end method

.method public getTaskCount()J
    .registers 8

    .prologue
    .line 1350
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1351
    .local v1, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1353
    :try_start_5
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1354
    .local v2, n:J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1355
    .local v4, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v2, v5

    .line 1356
    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isActive()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1357
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    goto :goto_d

    .line 1359
    .end local v4           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_26
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v2

    .line 1361
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v5

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #n:J
    :catchall_32
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method interruptIdleWorkers()V
    .registers 5

    .prologue
    .line 511
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 512
    .local v1, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 514
    :try_start_5
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 515
    .local v2, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfIdle()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 517
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_1b
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    return-void
.end method

.method public isShutdown()Z
    .registers 2

    .prologue
    .line 990
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTerminated()Z
    .registers 3

    .prologue
    .line 1008
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTerminating()Z
    .registers 3

    .prologue
    .line 1004
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public prestartAllCoreThreads()I
    .registers 3

    .prologue
    .line 1212
    const/4 v0, 0x0

    .line 1213
    .local v0, n:I
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addIfUnderCorePoolSize(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1215
    :cond_b
    return v0
.end method

.method public prestartCoreThread()Z
    .registers 2

    .prologue
    .line 1202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->addIfUnderCorePoolSize(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public purge()V
    .registers 7

    .prologue
    .line 1130
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1131
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 1133
    .local v4, r:Ljava/lang/Runnable;
    instance-of v5, v4, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_8

    .line 1134
    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v1, v0

    .line 1135
    .local v1, c:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1136
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_25
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_8

    .line 1140
    .end local v1           #c:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v4           #r:Ljava/lang/Runnable;
    :catch_26
    move-exception v5

    move-object v2, v5

    .line 1143
    :cond_28
    return-void
.end method

.method reject(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 381
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 382
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "task"

    .prologue
    .line 1113
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCorePoolSize(I)V
    .registers 8
    .parameter "corePoolSize"

    .prologue
    .line 1158
    if-gez p1, :cond_8

    .line 1159
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1160
    :cond_8
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1161
    .local v3, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1163
    :try_start_d
    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, v5, p1

    .line 1164
    .local v0, extra:I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1165
    if-gez v0, :cond_31

    move v1, v0

    .line 1168
    .end local v0           #extra:I
    .local v1, extra:I
    :goto_16
    add-int/lit8 v0, v1, 0x1

    .end local v1           #extra:I
    .restart local v0       #extra:I
    if-gez v1, :cond_61

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    if-ge v5, p1, :cond_61

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .local v4, r:Ljava/lang/Runnable;
    if-eqz v4, :cond_61

    .line 1169
    invoke-direct {p0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    move v1, v0

    .end local v0           #extra:I
    .restart local v1       #extra:I
    goto :goto_16

    .line 1171
    .end local v1           #extra:I
    .end local v4           #r:Ljava/lang/Runnable;
    .restart local v0       #extra:I
    :cond_31
    if-lez v0, :cond_61

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    if-le v5, p1, :cond_61

    .line 1172
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/ThreadPoolExecutor$Worker;>;"
    move v1, v0

    .line 1176
    .end local v0           #extra:I
    .restart local v1       #extra:I
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v5, 0x1

    sub-int v0, v1, v5

    .end local v1           #extra:I
    .restart local v0       #extra:I
    if-lez v1, :cond_61

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    if-le v5, p1, :cond_61

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v5

    if-nez v5, :cond_61

    .line 1177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfIdle()V
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_65

    move v1, v0

    .end local v0           #extra:I
    .restart local v1       #extra:I
    goto :goto_3e

    :cond_60
    move v0, v1

    .line 1180
    .end local v1           #extra:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/ThreadPoolExecutor$Worker;>;"
    .restart local v0       #extra:I
    :cond_61
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1182
    return-void

    .line 1180
    .end local v0           #extra:I
    :catchall_65
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .parameter "time"
    .parameter "unit"

    .prologue
    .line 1274
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_c

    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1276
    :cond_c
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1277
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .registers 6
    .parameter "maximumPoolSize"

    .prologue
    .line 1230
    if-lez p1, :cond_6

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge p1, v3, :cond_c

    .line 1231
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1232
    :cond_c
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1233
    .local v2, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1235
    :try_start_11
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    sub-int v0, v3, p1

    .line 1236
    .local v0, extra:I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1237
    if-lez v0, :cond_3b

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    if-le v3, p1, :cond_3b

    .line 1238
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1241
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/ThreadPoolExecutor$Worker;>;"
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    if-lez v0, :cond_3b

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    if-le v3, p1, :cond_3b

    .line 1242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfIdle()V
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_3f

    .line 1243
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 1247
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/ThreadPoolExecutor$Worker;>;"
    :cond_3b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1249
    return-void

    .line 1247
    .end local v0           #extra:I
    :catchall_3f
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 1068
    if-nez p1, :cond_8

    .line 1069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1070
    :cond_8
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1071
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3
    .parameter "threadFactory"

    .prologue
    .line 1045
    if-nez p1, :cond_8

    .line 1046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1047
    :cond_8
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1048
    return-void
.end method

.method public shutdown()V
    .registers 9

    .prologue
    .line 885
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 886
    .local v4, security:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_b

    .line 887
    sget-object v7, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-static {v7}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    .line 889
    :cond_b
    const/4 v0, 0x0

    .line 890
    .local v0, fullyTerminated:Z
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 891
    .local v2, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 893
    :try_start_11
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_5a

    .line 897
    if-eqz v4, :cond_38

    .line 898
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 899
    .local v6, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v7, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v4, v7}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_33

    goto :goto_21

    .line 926
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_33
    move-exception v7

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 902
    :cond_38
    :try_start_38
    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 903
    .local v5, state:I
    if-nez v5, :cond_3f

    .line 904
    const/4 v7, 0x1

    iput v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_33

    .line 907
    :cond_3f
    :try_start_3f
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 908
    .restart local v6       #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfIdle()V
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_33
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_54} :catch_55

    goto :goto_45

    .line 909
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_55
    move-exception v7

    move-object v3, v7

    .line 916
    .local v3, se:Ljava/lang/SecurityException;
    :try_start_57
    iput v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 917
    throw v3

    .line 921
    .end local v3           #se:Ljava/lang/SecurityException;
    .end local v5           #state:I
    :cond_5a
    const/4 v0, 0x1

    .line 922
    const/4 v7, 0x3

    iput v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 923
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_33

    .line 926
    :cond_63
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 928
    if-eqz v0, :cond_6b

    .line 929
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 930
    :cond_6b
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 10
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
    const/4 v8, 0x3

    .line 951
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 952
    .local v4, security:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_c

    .line 953
    sget-object v7, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-static {v7}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    .line 955
    :cond_c
    const/4 v0, 0x0

    .line 956
    .local v0, fullyTerminated:Z
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 957
    .local v2, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 959
    :try_start_12
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_5b

    .line 960
    if-eqz v4, :cond_39

    .line 961
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 962
    .local v6, w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v7, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v4, v7}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_34

    goto :goto_22

    .line 982
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_34
    move-exception v7

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 965
    :cond_39
    :try_start_39
    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 966
    .local v5, state:I
    if-eq v5, v8, :cond_40

    .line 967
    const/4 v7, 0x2

    iput v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_34

    .line 969
    :cond_40
    :try_start_40
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 970
    .restart local v6       #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptNow()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_34
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_55} :catch_56

    goto :goto_46

    .line 971
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #w:Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_56
    move-exception v7

    move-object v3, v7

    .line 972
    .local v3, se:Ljava/lang/SecurityException;
    :try_start_58
    iput v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 973
    throw v3

    .line 977
    .end local v3           #se:Ljava/lang/SecurityException;
    .end local v5           #state:I
    :cond_5b
    const/4 v0, 0x1

    .line 978
    const/4 v7, 0x3

    iput v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 979
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_34

    .line 982
    :cond_64
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 984
    if-eqz v0, :cond_6c

    .line 985
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 986
    :cond_6c
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->EMPTY_RUNNABLE_ARRAY:[Ljava/lang/Runnable;

    invoke-interface {v7, v8}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7
.end method

.method protected terminated()V
    .registers 1

    .prologue
    .line 1420
    return-void
.end method

.method workerDone(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 10
    .parameter "w"

    .prologue
    const/4 v7, 0x3

    .line 526
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 527
    .local v0, mainLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 529
    :try_start_6
    iget-wide v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v5, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 530
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 531
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->poolSize:I
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2c

    if-lez v3, :cond_1e

    .line 566
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 571
    :goto_1d
    return-void

    .line 536
    :cond_1e
    :try_start_1e
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    .line 537
    .local v2, state:I
    sget-boolean v3, Ljava/util/concurrent/ThreadPoolExecutor;->$assertionsDisabled:Z

    if-nez v3, :cond_31

    if-ne v2, v7, :cond_31

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    .line 566
    .end local v2           #state:I
    :catchall_2c
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 539
    .restart local v2       #state:I
    :cond_31
    const/4 v3, 0x2

    if-eq v2, v3, :cond_63

    .line 542
    :try_start_34
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 543
    .local v1, r:Ljava/lang/Runnable;
    if-eqz v1, :cond_49

    .line 544
    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_2c

    .line 566
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1d

    .line 550
    :cond_49
    :try_start_49
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 551
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_2c

    .line 566
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1d

    .line 556
    :cond_5d
    if-nez v2, :cond_63

    .line 566
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1d

    .line 562
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_63
    :try_start_63
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 563
    const/4 v3, 0x3

    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_2c

    .line 566
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 569
    sget-boolean v3, Ljava/util/concurrent/ThreadPoolExecutor;->$assertionsDisabled:Z

    if-nez v3, :cond_7c

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I

    if-eq v3, v7, :cond_7c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 570
    :cond_7c
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    goto :goto_1d
.end method
