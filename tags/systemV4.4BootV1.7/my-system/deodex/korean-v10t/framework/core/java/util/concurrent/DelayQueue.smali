.class public Ljava/util/concurrent/DelayQueue;
.super Ljava/util/AbstractQueue;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/DelayQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/util/concurrent/Delayed;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final transient available:Ljava/util/concurrent/locks/Condition;

.field private final transient lock:Ljava/util/concurrent/locks/ReentrantLock;

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
    .line 31
    const-class v0, Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 36
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 36
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 53
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/DelayQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/concurrent/Delayed;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, o:Ljava/util/concurrent/Delayed;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 268
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 269
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 271
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    return-void

    .line 273
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 215
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 216
    :cond_8
    if-ne p1, p0, :cond_10

    .line 217
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 218
    :cond_10
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 219
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, n:I
    :goto_16
    :try_start_16
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 224
    .local v0, first:Ljava/util/concurrent/Delayed;,"TE;"
    if-eqz v0, :cond_2c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_37

    .line 229
    :cond_2c
    if-lez v2, :cond_33

    .line 230
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_43

    .line 233
    :cond_33
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 226
    :cond_37
    :try_start_37
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_43

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 228
    goto :goto_16

    .line 233
    .end local v0           #first:Ljava/util/concurrent/Delayed;,"TE;"
    :catchall_43
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
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
    .line 238
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 239
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 240
    :cond_8
    if-ne p1, p0, :cond_10

    .line 241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 242
    :cond_10
    if-gtz p2, :cond_14

    .line 243
    const/4 v3, 0x0

    .line 259
    :goto_13
    return v3

    .line 244
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 245
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, n:I
    :goto_1a
    if-ge v2, p2, :cond_32

    .line 249
    :try_start_1c
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 250
    .local v0, first:Ljava/util/concurrent/Delayed;,"TE;"
    if-eqz v0, :cond_32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3e

    .line 255
    .end local v0           #first:Ljava/util/concurrent/Delayed;,"TE;"
    :cond_32
    if-lez v2, :cond_39

    .line 256
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_4a

    .line 259
    :cond_39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v2

    goto :goto_13

    .line 252
    .restart local v0       #first:Ljava/util/concurrent/Delayed;,"TE;"
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4a

    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 254
    goto :goto_1a

    .line 259
    .end local v0           #first:Ljava/util/concurrent/Delayed;,"TE;"
    :catchall_4a
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
    .line 326
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 327
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 329
    :try_start_5
    new-instance v1, Ljava/util/concurrent/DelayQueue$Itr;

    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/util/concurrent/DelayQueue$Itr;-><init>(Ljava/util/concurrent/DelayQueue;Ljava/util/Iterator;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 331
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/util/concurrent/Delayed;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, o:Ljava/util/concurrent/Delayed;,"TE;"
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 67
    :try_start_5
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 68
    .local v0, first:Ljava/util/concurrent/Delayed;,"TE;"
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 69
    if-eqz v0, :cond_1a

    invoke-interface {p1, v0}, Ljava/util/concurrent/Delayed;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1f

    .line 70
    :cond_1a
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 71
    :cond_1f
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0           #first:Ljava/util/concurrent/Delayed;,"TE;"
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z
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
    .line 98
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, o:Ljava/util/concurrent/Delayed;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/util/concurrent/Delayed;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 195
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 197
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p0, Ljava/util/concurrent/Delayed;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/util/concurrent/Delayed;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 176
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    :try_start_5
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 179
    .local v0, first:Ljava/util/concurrent/Delayed;,"TE;"
    if-eqz v0, :cond_1b

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_34

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    .line 180
    :cond_1b
    const/4 v3, 0x0

    .line 189
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1f
    return-object v3

    .line 182
    :cond_20
    :try_start_20
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;

    .line 183
    .local v2, x:Ljava/util/concurrent/Delayed;,"TE;"
    sget-boolean v3, Ljava/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_39

    if-nez v2, :cond_39

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_34

    .line 189
    .end local v0           #first:Ljava/util/concurrent/Delayed;,"TE;"
    .end local v2           #x:Ljava/util/concurrent/Delayed;,"TE;"
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 184
    .restart local v0       #first:Ljava/util/concurrent/Delayed;,"TE;"
    .restart local v2       #x:Ljava/util/concurrent/Delayed;,"TE;"
    :cond_39
    :try_start_39
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-eqz v3, :cond_46

    .line 185
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_34

    .line 189
    :cond_46
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v2

    goto :goto_1f
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;
    .registers 15
    .parameter "time"
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
    .line 141
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 142
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 143
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 146
    .local v4, nanos:J
    :goto_9
    :try_start_9
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_54

    .line 147
    .local v2, first:Ljava/util/concurrent/Delayed;,"TE;"
    if-nez v2, :cond_25

    .line 148
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_1e

    .line 149
    const/4 v9, 0x0

    .line 169
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1d
    return-object v9

    .line 151
    :cond_1e
    :try_start_1e
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    goto :goto_9

    .line 153
    :cond_25
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 154
    .local v0, delay:J
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-lez v9, :cond_40

    .line 155
    cmp-long v9, v0, v4

    if-lez v9, :cond_36

    .line 156
    move-wide v0, v4

    .line 157
    :cond_36
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v6

    .line 158
    .local v6, timeLeft:J
    sub-long v9, v0, v6

    sub-long/2addr v4, v9

    .line 159
    goto :goto_9

    .line 160
    .end local v6           #timeLeft:J
    :cond_40
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Delayed;

    .line 161
    .local v8, x:Ljava/util/concurrent/Delayed;,"TE;"
    sget-boolean v9, Ljava/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    if-nez v9, :cond_59

    if-nez v8, :cond_59

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_54

    .line 169
    .end local v0           #delay:J
    .end local v2           #first:Ljava/util/concurrent/Delayed;,"TE;"
    .end local v8           #x:Ljava/util/concurrent/Delayed;,"TE;"
    :catchall_54
    move-exception v9

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    .line 162
    .restart local v0       #delay:J
    .restart local v2       #first:Ljava/util/concurrent/Delayed;,"TE;"
    .restart local v8       #x:Ljava/util/concurrent/Delayed;,"TE;"
    :cond_59
    :try_start_59
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->size()I

    move-result v9

    if-eqz v9, :cond_66

    .line 163
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_54

    .line 169
    :cond_66
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v9, v8

    goto :goto_1d
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->put(Ljava/util/concurrent/Delayed;)V

    return-void
.end method

.method public put(Ljava/util/concurrent/Delayed;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, o:Ljava/util/concurrent/Delayed;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    .line 86
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 283
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 307
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 308
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 310
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result v1

    .line 312
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
    .line 204
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 205
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 207
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result v1

    .line 209
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/util/concurrent/Delayed;
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
    .line 114
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 118
    :goto_5
    :try_start_5
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;

    .line 119
    .local v2, first:Ljava/util/concurrent/Delayed;,"TE;"
    if-nez v2, :cond_1a

    .line 120
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 136
    .end local v2           #first:Ljava/util/concurrent/Delayed;,"TE;"
    :catchall_15
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 122
    .restart local v2       #first:Ljava/util/concurrent/Delayed;,"TE;"
    :cond_1a
    :try_start_1a
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 123
    .local v0, delay:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_2c

    .line 124
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    goto :goto_5

    .line 126
    :cond_2c
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Delayed;

    .line 127
    .local v4, x:Ljava/util/concurrent/Delayed;,"TE;"
    sget-boolean v5, Ljava/util/concurrent/DelayQueue;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-nez v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 128
    :cond_40
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-eqz v5, :cond_4d

    .line 129
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_15

    .line 136
    :cond_4d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 287
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 288
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 290
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 292
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
    .line 297
    .local p0, this:Ljava/util/concurrent/DelayQueue;,"Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 298
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 300
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
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
