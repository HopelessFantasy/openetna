.class public Ljava/util/concurrent/SynchronousQueue;
.super Ljava/util/AbstractQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$EmptyIterator;,
        Ljava/util/concurrent/SynchronousQueue$Node;,
        Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$WaitQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field private final qlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

.field private final waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "fair"

    .prologue
    .line 99
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 100
    if-eqz p1, :cond_1c

    .line 101
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 103
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 110
    :goto_1b
    return-void

    .line 106
    :cond_1c
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 108
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    goto :goto_1b
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 545
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 554
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 655
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 656
    :cond_8
    if-ne p1, p0, :cond_10

    .line 657
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 658
    :cond_10
    const/4 v1, 0x0

    .line 660
    .local v1, n:I
    :goto_11
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_1d

    .line 661
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 664
    :cond_1d
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 6
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 669
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 670
    :cond_8
    if-ne p1, p0, :cond_10

    .line 671
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 672
    :cond_10
    const/4 v1, 0x0

    .line 674
    .local v1, n:I
    :goto_11
    if-ge v1, p2, :cond_1f

    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_1f

    .line 675
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 678
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_1f
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 520
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;-><init>()V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 466
    :cond_8
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 470
    .local v1, qlock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_d
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ljava/util/concurrent/SynchronousQueue$Node;
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    move-result-object v0

    .line 474
    .local v0, node:Ljava/util/concurrent/SynchronousQueue$Node;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    if-nez v0, :cond_1f

    .line 477
    const/4 v2, 0x0

    .line 480
    :goto_19
    return v2

    .line 474
    .end local v0           #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :catchall_1a
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 479
    .restart local v0       #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/util/concurrent/SynchronousQueue$Node;->setItem(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 480
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 12
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x1

    .line 349
    if-nez p1, :cond_9

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 350
    :cond_9
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 351
    .local v1, nanos:J
    iget-object v4, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 355
    .local v4, qlock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 356
    :cond_1b
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 358
    :try_start_1e
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ljava/util/concurrent/SynchronousQueue$Node;

    move-result-object v3

    .line 359
    .local v3, node:Ljava/util/concurrent/SynchronousQueue$Node;
    if-nez v3, :cond_39

    move v0, v6

    .local v0, mustWait:Z
    :goto_27
    if-eqz v0, :cond_2f

    .line 360
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3c

    move-result-object v3

    .line 362
    :cond_2f
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 365
    if-eqz v0, :cond_41

    .line 366
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/SynchronousQueue$Node;->waitForTake(J)Z

    move-result v5

    .line 369
    :goto_38
    return v5

    .line 359
    .end local v0           #mustWait:Z
    :cond_39
    const/4 v5, 0x0

    move v0, v5

    goto :goto_27

    .line 362
    .end local v3           #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :catchall_3c
    move-exception v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 368
    .restart local v0       #mustWait:Z
    .restart local v3       #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :cond_41
    invoke-virtual {v3, p1}, Ljava/util/concurrent/SynchronousQueue$Node;->setItem(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    .line 369
    goto :goto_38
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 496
    .local v1, qlock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 498
    :try_start_5
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ljava/util/concurrent/SynchronousQueue$Node;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    move-result-object v0

    .line 500
    .local v0, node:Ljava/util/concurrent/SynchronousQueue$Node;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    if-nez v0, :cond_17

    .line 503
    const/4 v3, 0x0

    .line 508
    :goto_11
    return-object v3

    .line 500
    .end local v0           #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :catchall_12
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 506
    .restart local v0       #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :cond_17
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    .line 507
    .local v2, x:Ljava/lang/Object;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 508
    goto :goto_11
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 13
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 423
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 424
    .local v1, nanos:J
    iget-object v4, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    .local v4, qlock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 431
    :cond_12
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_15
    iget-object v7, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ljava/util/concurrent/SynchronousQueue$Node;

    move-result-object v3

    .line 434
    .local v3, node:Ljava/util/concurrent/SynchronousQueue$Node;
    if-nez v3, :cond_33

    const/4 v7, 0x1

    move v0, v7

    .local v0, mustWait:Z
    :goto_1f
    if-eqz v0, :cond_28

    .line 435
    iget-object v7, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_36

    move-result-object v3

    .line 437
    :cond_28
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 440
    if-eqz v0, :cond_3b

    .line 441
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/SynchronousQueue$Node;->waitForPut(J)Ljava/lang/Object;

    move-result-object v5

    .local v5, x:Ljava/lang/Object;
    move-object v6, v5

    .line 447
    .end local v5           #x:Ljava/lang/Object;
    .local v6, x:Ljava/lang/Object;
    :goto_32
    return-object v6

    .line 434
    .end local v0           #mustWait:Z
    .end local v6           #x:Ljava/lang/Object;
    :cond_33
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1f

    .line 437
    .end local v3           #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :catchall_36
    move-exception v7

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 445
    .restart local v0       #mustWait:Z
    .restart local v3       #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :cond_3b
    invoke-virtual {v3}, Ljava/util/concurrent/SynchronousQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v5

    .line 446
    .restart local v5       #x:Ljava/lang/Object;
    if-eqz v5, :cond_6

    move-object v6, v5

    .line 447
    .end local v5           #x:Ljava/lang/Object;
    .restart local v6       #x:Ljava/lang/Object;
    goto :goto_32
.end method

.method public put(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 308
    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 313
    .local v2, qlock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 314
    :cond_16
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 316
    :try_start_19
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ljava/util/concurrent/SynchronousQueue$Node;

    move-result-object v1

    .line 317
    .local v1, node:Ljava/util/concurrent/SynchronousQueue$Node;
    if-nez v1, :cond_34

    const/4 v3, 0x1

    move v0, v3

    .local v0, mustWait:Z
    :goto_23
    if-eqz v0, :cond_2b

    .line 318
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_37

    move-result-object v1

    .line 320
    :cond_2b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 323
    if-eqz v0, :cond_3c

    .line 324
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$Node;->waitForTake()V

    .line 329
    :goto_33
    return-void

    .line 317
    .end local v0           #mustWait:Z
    :cond_34
    const/4 v3, 0x0

    move v0, v3

    goto :goto_23

    .line 320
    .end local v1           #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :catchall_37
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 328
    .restart local v0       #mustWait:Z
    .restart local v1       #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :cond_3c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/SynchronousQueue$Node;->setItem(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_33
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 538
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 565
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 529
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 382
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 387
    .local v2, qlock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 388
    :cond_e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 390
    :try_start_11
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ljava/util/concurrent/SynchronousQueue$Node;

    move-result-object v1

    .line 391
    .local v1, node:Ljava/util/concurrent/SynchronousQueue$Node;
    if-nez v1, :cond_2f

    const/4 v5, 0x1

    move v0, v5

    .local v0, mustWait:Z
    :goto_1b
    if-eqz v0, :cond_24

    .line 392
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_32

    move-result-object v1

    .line 394
    :cond_24
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 397
    if-eqz v0, :cond_37

    .line 398
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$Node;->waitForPut()Ljava/lang/Object;

    move-result-object v3

    .local v3, x:Ljava/lang/Object;
    move-object v4, v3

    .line 404
    .end local v3           #x:Ljava/lang/Object;
    .local v4, x:Ljava/lang/Object;
    :goto_2e
    return-object v4

    .line 391
    .end local v0           #mustWait:Z
    .end local v4           #x:Ljava/lang/Object;
    :cond_2f
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1b

    .line 394
    .end local v1           #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :catchall_32
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 402
    .restart local v0       #mustWait:Z
    .restart local v1       #node:Ljava/util/concurrent/SynchronousQueue$Node;
    :cond_37
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v3

    .line 403
    .restart local v3       #x:Ljava/lang/Object;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 404
    .end local v3           #x:Ljava/lang/Object;
    .restart local v4       #x:Ljava/lang/Object;
    goto :goto_2e
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 637
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    if-lez v0, :cond_7

    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 649
    :cond_7
    return-object p1
.end method
