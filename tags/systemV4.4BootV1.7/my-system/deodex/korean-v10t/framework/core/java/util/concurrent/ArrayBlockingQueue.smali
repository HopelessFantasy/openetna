.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;
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
.field private static final serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field private count:I

.field private final items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private transient putIndex:I

.field private transient takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 146
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 147
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "capacity"
    .parameter "fair"

    .prologue
    .line 158
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 159
    if-gtz p1, :cond_b

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 161
    :cond_b
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 163
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 164
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 165
    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .registers 6
    .parameter "capacity"
    .parameter "fair"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 185
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p1, v1, :cond_f

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 188
    :cond_f
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 190
    :cond_21
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/ArrayBlockingQueue;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    return v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/ArrayBlockingQueue;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    return v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/ArrayBlockingQueue;)[Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/concurrent/ArrayBlockingQueue;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    return v0
.end method

.method static synthetic access$400(Ljava/util/concurrent/ArrayBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private extract()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 103
    .local v0, items:[Ljava/lang/Object;,"[TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v0, v2

    .line 104
    .local v1, x:Ljava/lang/Object;,"TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 105
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 106
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 107
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 108
    return-object v1
.end method

.method private insert(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, x:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    .line 92
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 93
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 94
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 95
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    .line 491
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 492
    .local v1, items:[Ljava/lang/Object;,"[TE;"
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 493
    .local v4, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 495
    :try_start_7
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 496
    .local v0, i:I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .local v2, k:I
    move v3, v2

    .line 497
    .end local v2           #k:I
    .local v3, k:I
    :goto_c
    const/4 v5, 0x1

    sub-int v2, v3, v5

    .end local v3           #k:I
    .restart local v2       #k:I
    if-lez v3, :cond_1a

    .line 498
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 499
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_c

    .line 501
    .end local v3           #k:I
    .restart local v2       #k:I
    :cond_1a
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 502
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 503
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 504
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2c

    .line 506
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    return-void

    .line 506
    .end local v0           #i:I
    .end local v2           #k:I
    :catchall_2c
    move-exception v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v6, 0x0

    .line 418
    if-nez p1, :cond_5

    move v5, v6

    .line 432
    :goto_4
    return v5

    .line 419
    :cond_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 420
    .local v1, items:[Ljava/lang/Object;,"[TE;"
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 421
    .local v4, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 423
    :try_start_c
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 424
    .local v0, i:I
    const/4 v2, 0x0

    .local v2, k:I
    move v3, v2

    .line 425
    .end local v2           #k:I
    .local v3, k:I
    :goto_10
    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v3, v5, :cond_29

    .line 426
    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_2e

    move-result v5

    if-eqz v5, :cond_23

    .line 427
    const/4 v5, 0x1

    .line 432
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 428
    :cond_23
    :try_start_23
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2e

    move-result v0

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_10

    .line 432
    .end local v3           #k:I
    .restart local v2       #k:I
    :cond_29
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v6

    goto :goto_4

    .end local v0           #i:I
    .end local v2           #k:I
    :catchall_2e
    move-exception v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 512
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 513
    :cond_8
    if-ne p1, p0, :cond_10

    .line 514
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 515
    :cond_10
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 516
    .local v1, items:[Ljava/lang/Object;,"[TE;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 517
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 519
    :try_start_17
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 520
    .local v0, i:I
    const/4 v4, 0x0

    .line 521
    .local v4, n:I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 522
    .local v3, max:I
    :goto_1c
    if-ge v4, v3, :cond_2d

    .line 523
    aget-object v5, v1, v0

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 525
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 528
    :cond_2d
    if-lez v4, :cond_3d

    .line 529
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 530
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 531
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 532
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_41

    .line 536
    :cond_3d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    .end local v0           #i:I
    .end local v3           #max:I
    .end local v4           #n:I
    :catchall_41
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 10
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
    .line 542
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 543
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 544
    :cond_8
    if-ne p1, p0, :cond_10

    .line 545
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 546
    :cond_10
    if-gtz p2, :cond_14

    .line 547
    const/4 v6, 0x0

    .line 569
    :goto_13
    return v6

    .line 548
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 549
    .local v1, items:[Ljava/lang/Object;,"[TE;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 550
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 552
    :try_start_1b
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 553
    .local v0, i:I
    const/4 v4, 0x0

    .line 554
    .local v4, n:I
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 555
    .local v5, sz:I
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge p2, v6, :cond_36

    move v3, p2

    .line 556
    .local v3, max:I
    :goto_25
    if-ge v4, v3, :cond_3a

    .line 557
    aget-object v6, v1, v0

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 558
    const/4 v6, 0x0

    aput-object v6, v1, v0

    .line 559
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 555
    .end local v3           #max:I
    :cond_36
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    move v3, v6

    goto :goto_25

    .line 562
    .restart local v3       #max:I
    :cond_3a
    if-lez v4, :cond_48

    .line 563
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v6, v4

    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 564
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 565
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_4d

    .line 569
    :cond_48
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v6, v4

    goto :goto_13

    .end local v0           #i:I
    .end local v3           #max:I
    .end local v4           #n:I
    .end local v5           #sz:I
    :catchall_4d
    move-exception v6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method final inc(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 83
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    move v0, p1

    goto :goto_8
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 586
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 588
    :try_start_5
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 590
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
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
    .line 202
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 203
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 204
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 206
    :try_start_d
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_21

    if-ne v1, v2, :cond_19

    .line 207
    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_18
    return v1

    .line 209
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 210
    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_18

    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
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
    .line 233
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 234
    :cond_8
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 235
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 237
    :try_start_d
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 239
    .local v2, nanos:J
    :goto_11
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v5, v5

    if-eq v4, v5, :cond_20

    .line 240
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_3a

    .line 241
    const/4 v4, 0x1

    .line 253
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1f
    return v4

    .line 243
    :cond_20
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2b

    .line 244
    const/4 v4, 0x0

    .line 253
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1f

    .line 246
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_32

    move-result-wide v2

    goto :goto_11

    .line 247
    :catch_32
    move-exception v4

    move-object v0, v4

    .line 248
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_34
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 249
    throw v0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3a

    .line 253
    .end local v0           #ie:Ljava/lang/InterruptedException;
    .end local v2           #nanos:J
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 322
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 324
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_15

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 326
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 324
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v1, v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_a

    .line 326
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 260
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 262
    :try_start_5
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_17

    if-nez v2, :cond_e

    .line 263
    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_d
    return-object v2

    .line 264
    :cond_e
    :try_start_e
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_17

    move-result-object v1

    .line 267
    .local v1, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v2, v1

    goto :goto_d

    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_17
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
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
    .line 272
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 273
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 275
    :try_start_5
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 277
    .local v2, nanos:J
    :goto_9
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-eqz v5, :cond_16

    .line 278
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_30

    move-result-object v4

    .line 292
    .local v4, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v5, v4

    .end local v4           #x:Ljava/lang/Object;,"TE;"
    :goto_15
    return-object v5

    .line 281
    :cond_16
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_21

    .line 282
    const/4 v5, 0x0

    .line 292
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_15

    .line 284
    :cond_21
    :try_start_21
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_28

    move-result-wide v2

    goto :goto_9

    .line 285
    :catch_28
    move-exception v5

    move-object v0, v5

    .line 286
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2a
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 287
    throw v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 292
    .end local v0           #ie:Ljava/lang/InterruptedException;
    .end local v2           #nanos:J
    :catchall_30
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public put(Ljava/lang/Object;)V
    .registers 7
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
    .line 356
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 357
    :cond_8
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 358
    .local v1, items:[Ljava/lang/Object;,"[TE;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 359
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 362
    :goto_f
    :try_start_f
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    array-length v4, v1

    if-ne v3, v4, :cond_27

    .line 363
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_22
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_f

    .line 364
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 365
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_1c
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 366
    throw v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_22

    .line 370
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 368
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_22

    .line 370
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 372
    return-void
.end method

.method public remainingCapacity()I
    .registers 4

    .prologue
    .line 407
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 408
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 410
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    sub-int/2addr v1, v2

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v6, 0x0

    .line 298
    if-nez p1, :cond_5

    move v5, v6

    .line 316
    :goto_4
    return v5

    .line 299
    :cond_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 300
    .local v1, items:[Ljava/lang/Object;,"[TE;"
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 301
    .local v4, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 303
    :try_start_c
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 304
    .local v0, i:I
    const/4 v2, 0x0

    .local v2, k:I
    move v3, v2

    .line 306
    .end local v2           #k:I
    .local v3, k:I
    :goto_10
    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_31

    if-lt v3, v5, :cond_1b

    .line 316
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v6

    goto :goto_4

    .line 308
    :cond_1b
    :try_start_1b
    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 309
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_31

    .line 310
    const/4 v5, 0x1

    .line 316
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 312
    :cond_2b
    :try_start_2b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_31

    move-result v0

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_10

    .line 316
    .end local v0           #i:I
    .end local v3           #k:I
    :catchall_31
    move-exception v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method removeAt(I)V
    .registers 6
    .parameter "i"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 118
    .local v0, items:[Ljava/lang/Object;,"[TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne p1, v2, :cond_1f

    .line 119
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v3, v0, v2

    .line 120
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 135
    :goto_13
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 136
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 137
    return-void

    .line 124
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v1

    .line 125
    .local v1, nexti:I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v1, v2, :cond_2d

    .line 126
    aget-object v2, v0, v1

    aput-object v2, v0, p1

    .line 127
    move p1, v1

    goto :goto_1f

    .line 129
    :cond_2d
    aput-object v3, v0, p1

    .line 130
    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    goto :goto_13
.end method

.method public size()I
    .registers 3

    .prologue
    .line 382
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 383
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 387
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 5
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
    .line 331
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 332
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 335
    :goto_5
    :try_start_5
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v3, :cond_1c

    .line 336
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_5

    .line 337
    :catch_f
    move-exception v3

    move-object v0, v3

    .line 338
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_11
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 339
    throw v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_17

    .line 344
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_17
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 341
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_17

    move-result-object v2

    .line 344
    .local v2, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 8

    .prologue
    .line 437
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 438
    .local v2, items:[Ljava/lang/Object;,"[TE;"
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 439
    .local v5, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 441
    :try_start_7
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    new-array v0, v6, [Ljava/lang/Object;

    .line 442
    .local v0, a:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 443
    .local v3, k:I
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v1, i:I
    move v4, v3

    .line 444
    .end local v3           #k:I
    .local v4, k:I
    :goto_f
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v4, v6, :cond_1f

    .line 445
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    aget-object v6, v2, v1

    aput-object v6, v0, v4

    .line 446
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_23

    move-result v1

    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    goto :goto_f

    .line 450
    :cond_1f
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0           #a:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v4           #k:I
    :catchall_23
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 456
    .local v2, items:[Ljava/lang/Object;,"[TE;"
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 457
    .local v5, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 459
    :try_start_7
    array-length v6, p1

    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v6, v7, :cond_20

    .line 460
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 465
    :cond_20
    const/4 v3, 0x0

    .line 466
    .local v3, k:I
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v1, i:I
    move v4, v3

    .line 467
    .end local v3           #k:I
    .local v4, k:I
    :goto_24
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge v4, v6, :cond_34

    .line 468
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    aget-object v6, v2, v1

    aput-object v6, p1, v4

    .line 469
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v1

    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    goto :goto_24

    .line 471
    :cond_34
    array-length v6, p1

    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-le v6, v7, :cond_3e

    .line 472
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v7, 0x0

    aput-object v7, p1, v6
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_42

    .line 475
    :cond_3e
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v1           #i:I
    .end local v4           #k:I
    :catchall_42
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 480
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 481
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 483
    :try_start_5
    invoke-super {p0}, Ljava/util/AbstractQueue;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 485
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
