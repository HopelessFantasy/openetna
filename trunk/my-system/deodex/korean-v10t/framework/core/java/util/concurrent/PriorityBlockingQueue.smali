.class public Ljava/util/concurrent/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/PriorityBlockingQueue$Itr;
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
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/concurrent/PriorityBlockingQueue;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 52
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .line 65
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 66
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .registers 5
    .parameter "initialCapacity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 83
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 106
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 107
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 451
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 453
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 455
    return-void

    .line 453
    :catchall_e
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 364
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 365
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 367
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 369
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    return-void

    .line 369
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 287
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 288
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 290
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result v1

    .line 292
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 319
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 320
    :cond_8
    if-ne p1, p0, :cond_10

    .line 321
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 322
    :cond_10
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 323
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 325
    const/4 v2, 0x0

    .line 327
    .local v2, n:I
    :goto_16
    :try_start_16
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_24

    .line 328
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_28

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 333
    :cond_24
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_28
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 7
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
    .line 338
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 339
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 340
    :cond_8
    if-ne p1, p0, :cond_10

    .line 341
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 342
    :cond_10
    if-gtz p2, :cond_14

    .line 343
    const/4 v3, 0x0

    .line 355
    :goto_13
    return v3

    .line 344
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 345
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 347
    const/4 v2, 0x0

    .line 349
    .local v2, n:I
    :goto_1a
    if-ge v2, p2, :cond_2a

    :try_start_1c
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2a

    .line 350
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2f

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 355
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_2a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v2

    goto :goto_13

    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 395
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 397
    :try_start_5
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue$Itr;

    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/Iterator;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 399
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_14
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
    .line 152
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 153
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 154
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 156
    :try_start_d
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 157
    .local v1, ok:Z
    sget-boolean v2, Ljava/util/concurrent/PriorityBlockingQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_24

    if-nez v1, :cond_24

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1f

    .line 161
    .end local v1           #ok:Z
    :catchall_1f
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 158
    .restart local v1       #ok:Z
    :cond_24
    :try_start_24
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_1f

    .line 159
    const/4 v2, 0x1

    .line 161
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
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

    .prologue
    .line 191
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 249
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 251
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 216
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
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
    .line 225
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 226
    .local v2, nanos:J
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 227
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 230
    :goto_9
    :try_start_9
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_30

    move-result-object v4

    .line 231
    .local v4, x:Ljava/lang/Object;,"TE;"
    if-eqz v4, :cond_16

    .line 243
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v5, v4

    :goto_15
    return-object v5

    .line 233
    :cond_16
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_21

    .line 234
    const/4 v5, 0x0

    .line 243
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_15

    .line 236
    :cond_21
    :try_start_21
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_28

    move-result-wide v2

    goto :goto_9

    .line 237
    :catch_28
    move-exception v5

    move-object v0, v5

    .line 238
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2a
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 239
    throw v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 243
    .end local v0           #ie:Ljava/lang/InterruptedException;
    .end local v4           #x:Ljava/lang/Object;,"TE;"
    :catchall_30
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public put(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 273
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 277
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 278
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 280
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result v1

    .line 282
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 258
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 259
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 261
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result v1

    .line 263
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
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
    .line 195
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 196
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 199
    :goto_5
    :try_start_5
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 200
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1b
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_5

    .line 201
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 202
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_15
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 203
    throw v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    .line 209
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_1b
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 205
    :cond_20
    :try_start_20
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, x:Ljava/lang/Object;,"TE;"
    sget-boolean v3, Ljava/util/concurrent/PriorityBlockingQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_32

    if-nez v2, :cond_32

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_1b

    .line 209
    :cond_32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 297
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 298
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 300
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 302
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
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
    .line 374
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 375
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 377
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 379
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 308
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 309
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 311
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 313
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
