.class public Ljava/util/concurrent/LinkedBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingQueue$Itr;,
        Ljava/util/concurrent/LinkedBlockingQueue$Node;
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
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private transient head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 164
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 165
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 174
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 87
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 175
    if-gtz p1, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 176
    :cond_31
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    .line 177
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 178
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
    .line 190
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 193
    :cond_18
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/concurrent/LinkedBlockingQueue;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    return v0
.end method

.method static synthetic access$500(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/Condition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private extract()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 136
    .local v0, first:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 137
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 138
    .local v1, x:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 139
    return-object v1
.end method

.method private fullyLock()V
    .registers 2

    .prologue
    .line 146
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    return-void
.end method

.method private fullyUnlock()V
    .registers 2

    .prologue
    .line 154
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 155
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    return-void
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
    .line 127
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, x:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 128
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 709
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 711
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 712
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 716
    :goto_13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 717
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_1a

    .line 721
    return-void

    .line 719
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private signalNotEmpty()V
    .registers 3

    .prologue
    .line 100
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    .local v0, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 107
    return-void

    .line 105
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private signalNotFull()V
    .registers 3

    .prologue
    .line 113
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    .local v0, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 116
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    return-void

    .line 118
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
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
    .line 685
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 688
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 691
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_a
    if-eqz v0, :cond_14

    .line 692
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 691
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_a

    .line 695
    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 697
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 699
    return-void

    .line 697
    .end local v0           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 518
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 520
    :try_start_3
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 521
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_18

    .line 522
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 524
    :cond_18
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 526
    return-void

    .line 524
    :catchall_1c
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v0
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
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    const/4 v5, 0x0

    .line 529
    if-nez p1, :cond_9

    .line 530
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 531
    :cond_9
    if-ne p1, p0, :cond_11

    .line 532
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 534
    :cond_11
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 536
    :try_start_14
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 537
    .local v0, first:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 538
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v3

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_2d

    .line 539
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_40

    .line 541
    :cond_2d
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, n:I
    move-object v2, v0

    .local v2, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_32
    if-eqz v2, :cond_45

    .line 546
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 547
    iput-object v5, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 548
    add-int/lit8 v1, v1, 0x1

    .line 545
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_32

    .line 541
    .end local v0           #first:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .end local v1           #n:I
    .end local v2           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_40
    move-exception v3

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v3

    .line 550
    .restart local v0       #first:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .restart local v1       #n:I
    .restart local v2       #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_45
    return v1
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
    .line 554
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 555
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 556
    :cond_8
    if-ne p1, p0, :cond_10

    .line 557
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 558
    :cond_10
    if-gtz p2, :cond_14

    .line 559
    const/4 v2, 0x0

    .line 577
    :goto_13
    return v2

    .line 560
    :cond_14
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, n:I
    :try_start_18
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 564
    .local v1, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_1c
    if-eqz v1, :cond_2d

    if-ge v0, p2, :cond_2d

    .line 565
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 566
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 567
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 570
    :cond_2d
    if-eqz v0, :cond_43

    .line 571
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 572
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_43

    .line 573
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_48

    .line 577
    :cond_43
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    move v2, v0

    goto :goto_13

    .end local v1           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_48
    move-exception v2

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v2
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
    .line 592
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    const/4 v5, 0x0

    .line 327
    if-nez p1, :cond_9

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 328
    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_15

    move v3, v5

    .line 346
    :goto_14
    return v3

    .line 331
    :cond_15
    const/4 v0, -0x1

    .line 332
    .local v0, c:I
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 333
    .local v2, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 335
    :try_start_1b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v3, v4, :cond_35

    .line 336
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->insert(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 338
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v3, v4, :cond_35

    .line 339
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_41

    .line 342
    :cond_35
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    if-nez v0, :cond_3d

    .line 345
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 346
    :cond_3d
    if-ltz v0, :cond_46

    const/4 v3, 0x1

    goto :goto_14

    .line 342
    :catchall_41
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_46
    move v3, v5

    .line 346
    goto :goto_14
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 13
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
    .line 285
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 286
    :cond_8
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 287
    .local v3, nanos:J
    const/4 v0, -0x1

    .line 288
    .local v0, c:I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 289
    .local v5, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 290
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 293
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v6, v7, :cond_38

    .line 294
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->insert(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 296
    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v6, v7, :cond_2e

    .line 297
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_52

    .line 310
    :cond_2e
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 312
    if-nez v0, :cond_36

    .line 313
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 314
    :cond_36
    const/4 v6, 0x1

    :goto_37
    return v6

    .line 300
    :cond_38
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_43

    .line 301
    const/4 v6, 0x0

    .line 310
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_37

    .line 303
    :cond_43
    :try_start_43
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_52
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-wide v3

    goto :goto_14

    .line 304
    :catch_4a
    move-exception v6

    move-object v2, v6

    .line 305
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_4c
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 306
    throw v2
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_52

    .line 310
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_52
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 435
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_b

    move-object v2, v3

    .line 446
    :goto_a
    return-object v2

    .line 437
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 438
    .local v1, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 440
    :try_start_10
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_21

    .line 441
    .local v0, first:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v0, :cond_1b

    .line 446
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v2, v3

    goto :goto_a

    .line 444
    :cond_1b
    :try_start_1b
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_21

    .line 446
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_a

    .end local v0           #first:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 412
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_a

    .line 413
    const/4 v4, 0x0

    .line 430
    :goto_9
    return-object v4

    .line 414
    :cond_a
    const/4 v3, 0x0

    .line 415
    .local v3, x:Ljava/lang/Object;,"TE;"
    const/4 v0, -0x1

    .line 416
    .local v0, c:I
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 417
    .local v2, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 419
    :try_start_11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_27

    .line 420
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v3

    .line 421
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 422
    const/4 v4, 0x1

    if-le v0, v4, :cond_27

    .line 423
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_33

    .line 426
    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :cond_27
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 428
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_31

    .line 429
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    :cond_31
    move-object v4, v3

    .line 430
    goto :goto_9

    .line 426
    :catchall_33
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
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
    .line 378
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v6, 0x0

    .line 379
    .local v6, x:Ljava/lang/Object;,"TE;"
    const/4 v0, -0x1

    .line 380
    .local v0, c:I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 381
    .local v3, nanos:J
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 382
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 383
    .local v5, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 386
    :goto_d
    :try_start_d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-lez v7, :cond_2f

    .line 387
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v6

    .line 388
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 389
    const/4 v7, 0x1

    if-le v0, v7, :cond_23

    .line 390
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_49

    .line 403
    :cond_23
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 405
    iget v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v7, :cond_2d

    .line 406
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    :cond_2d
    move-object v7, v6

    .line 407
    .end local v6           #x:Ljava/lang/Object;,"TE;"
    :goto_2e
    return-object v7

    .line 393
    .restart local v6       #x:Ljava/lang/Object;,"TE;"
    :cond_2f
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_3a

    .line 394
    const/4 v7, 0x0

    .line 403
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2e

    .line 396
    :cond_3a
    :try_start_3a
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_49
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3f} :catch_41

    move-result-wide v3

    goto :goto_d

    .line 397
    :catch_41
    move-exception v7

    move-object v2, v7

    .line 398
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_43
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 399
    throw v2
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_49

    .line 403
    .end local v2           #ie:Ljava/lang/InterruptedException;
    .end local v6           #x:Ljava/lang/Object;,"TE;"
    :catchall_49
    move-exception v7

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public put(Ljava/lang/Object;)V
    .registers 8
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
    .line 234
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 237
    :cond_8
    const/4 v0, -0x1

    .line 238
    .local v0, c:I
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 239
    .local v3, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 240
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 252
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v4, v5, :cond_2b

    .line 253
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_10

    .line 254
    :catch_1e
    move-exception v4

    move-object v2, v4

    .line 255
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_20
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 256
    throw v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 263
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_26
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 258
    :cond_2b
    :try_start_2b
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->insert(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 260
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_3d

    .line 261
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_26

    .line 263
    :cond_3d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 265
    if-nez v0, :cond_45

    .line 266
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 267
    :cond_45
    return-void
.end method

.method public remainingCapacity()I
    .registers 3

    .prologue
    .line 223
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 451
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    if-nez p1, :cond_4

    const/4 v3, 0x0

    .line 474
    :goto_3
    return v3

    .line 452
    :cond_4
    const/4 v1, 0x0

    .line 453
    .local v1, removed:Z
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 455
    :try_start_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 456
    .local v2, trail:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 457
    .local v0, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_e
    if-eqz v0, :cond_19

    .line 458
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 459
    const/4 v1, 0x1

    .line 465
    :cond_19
    if-eqz v1, :cond_31

    .line 466
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 467
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 468
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v3

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_31

    .line 469
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3a

    .line 472
    :cond_31
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    move v3, v1

    .line 474
    goto :goto_3

    .line 462
    :cond_36
    move-object v2, v0

    .line 463
    :try_start_37
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    goto :goto_e

    .line 472
    .end local v0           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2           #trail:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_3a
    move-exception v3

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v3
.end method

.method public size()I
    .registers 2

    .prologue
    .line 204
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 7
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
    .line 352
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v0, -0x1

    .line 353
    .local v0, c:I
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 354
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 355
    .local v3, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 358
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_21

    .line 359
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_8

    .line 360
    :catch_14
    move-exception v5

    move-object v2, v5

    .line 361
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_16
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 362
    throw v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1c

    .line 370
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_1c
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 365
    :cond_21
    :try_start_21
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v4

    .line 366
    .local v4, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 367
    const/4 v5, 0x1

    if-le v0, v5, :cond_31

    .line 368
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_1c

    .line 370
    :cond_31
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 372
    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v5, :cond_3b

    .line 373
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 374
    :cond_3b
    return-object v4
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .prologue
    .line 478
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 480
    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 481
    .local v4, size:I
    new-array v0, v4, [Ljava/lang/Object;

    .line 482
    .local v0, a:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 483
    .local v1, k:I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_11
    if-eqz v3, :cond_1d

    .line 484
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 483
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_11

    .line 487
    :cond_1d
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object v0

    .end local v0           #a:[Ljava/lang/Object;
    .end local v2           #k:I
    .end local v3           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v4           #size:I
    :catchall_21
    move-exception v5

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 494
    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 495
    .local v4, size:I
    array-length v5, p1

    if-ge v5, v4, :cond_1e

    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 499
    :cond_1e
    const/4 v1, 0x0

    .line 500
    .local v1, k:I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_24
    if-eqz v3, :cond_30

    .line 501
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 500
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_34

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_24

    .line 504
    :cond_30
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object p1

    .end local v2           #k:I
    .end local v3           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .end local v4           #size:I
    :catchall_34
    move-exception v5

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 511
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractQueue;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result-object v0

    .line 513
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_b
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v0
.end method
