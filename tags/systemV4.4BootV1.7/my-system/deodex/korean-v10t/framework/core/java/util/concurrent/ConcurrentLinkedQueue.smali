.class public Ljava/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/util/AbstractQueue;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2bafb2a664c708cL

.field private static final tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-class v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 109
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const-string v0, "tail"

    invoke-static {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 114
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const-string v0, "head"

    invoke-static {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 134
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 131
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 134
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 151
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 153
    :cond_21
    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v2, 0x0

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 469
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 470
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 473
    :goto_f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 474
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_16

    .line 479
    return-void

    .line 477
    :cond_16
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 450
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_7
    if-eqz v1, :cond_17

    .line 451
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 452
    .local v0, item:Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 453
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 450
    :cond_12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_7

    .line 457
    .end local v0           #item:Ljava/lang/Object;
    :cond_17
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 458
    return-void
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
    .line 166
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v3, 0x0

    .line 298
    if-nez p1, :cond_5

    move v2, v3

    .line 305
    :goto_4
    return v2

    .line 299
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_9
    if-eqz v1, :cond_1e

    .line 300
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_19

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 303
    const/4 v2, 0x1

    goto :goto_4

    .line 299
    :cond_19
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_9

    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1e
    move v2, v3

    .line 305
    goto :goto_4
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 250
    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 251
    .local v2, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .line 252
    .local v0, first:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v3, :cond_0

    .line 253
    if-ne v1, v2, :cond_16

    .line 254
    if-nez v0, :cond_12

    .line 255
    const/4 v3, 0x0

    .line 260
    :goto_11
    return-object v3

    .line 257
    :cond_12
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0

    .line 259
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object v3, v0

    .line 260
    goto :goto_11

    .line 262
    :cond_1e
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 270
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 367
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 179
    :cond_8
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 181
    .local v0, n:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_e
    :goto_e
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 182
    .local v2, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 183
    .local v1, s:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v2, v3, :cond_e

    .line 184
    if-nez v1, :cond_25

    .line 185
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 186
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 187
    const/4 v3, 0x1

    return v3

    .line 190
    :cond_25
    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_e
.end method

.method public peek()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 222
    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 223
    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .line 224
    .local v0, first:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v4, :cond_0

    .line 225
    if-ne v1, v3, :cond_16

    .line 226
    if-nez v0, :cond_12

    .line 227
    const/4 v4, 0x0

    .line 233
    :goto_11
    return-object v4

    .line 229
    :cond_12
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0

    .line 231
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, item:Ljava/lang/Object;,"TE;"
    if-eqz v2, :cond_1e

    move-object v4, v2

    .line 233
    goto :goto_11

    .line 235
    :cond_1e
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v5, 0x0

    .line 198
    :cond_1
    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 199
    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 200
    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .line 201
    .local v0, first:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v4, :cond_1

    .line 202
    if-ne v1, v3, :cond_17

    .line 203
    if-nez v0, :cond_13

    move-object v4, v5

    .line 211
    :goto_12
    return-object v4

    .line 206
    :cond_13
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_1

    .line 207
    :cond_17
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, item:Ljava/lang/Object;,"TE;"
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->setItem(Ljava/lang/Object;)V

    move-object v4, v2

    .line 211
    goto :goto_12
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v3, 0x0

    .line 309
    if-nez p1, :cond_5

    move v2, v3

    .line 317
    :goto_4
    return v2

    .line 310
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_9
    if-eqz v1, :cond_25

    .line 311
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_20

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 315
    const/4 v2, 0x1

    goto :goto_4

    .line 310
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_9

    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_25
    move v2, v3

    .line 317
    goto :goto_4
.end method

.method public size()I
    .registers 4

    .prologue
    .line 286
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    .line 287
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_5
    if-eqz v1, :cond_14

    .line 288
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 290
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_15

    .line 294
    :cond_14
    return v0

    .line 287
    :cond_15
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_5
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    .line 322
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_9
    if-eqz v2, :cond_19

    .line 324
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_14

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_14
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_9

    .line 328
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 335
    .local v2, k:I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    .local v4, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_6
    if-eqz v4, :cond_1b

    array-length v6, p1

    if-ge v3, v6, :cond_1b

    .line 336
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v1

    .line 337
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_46

    .line 338
    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aput-object v1, p1, v3

    .line 335
    :goto_15
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_6

    .line 340
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_1b
    if-nez v4, :cond_25

    .line 341
    array-length v6, p1

    if-ge v3, v6, :cond_23

    .line 342
    const/4 v6, 0x0

    aput-object v6, p1, v3

    :cond_23
    move-object v6, p1

    .line 353
    .end local p0           #this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :goto_24
    return-object v6

    .line 347
    .restart local p0       #this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v5

    .local v5, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2e
    if-eqz v5, :cond_3e

    .line 349
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v1

    .line 350
    .restart local v1       #item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_39

    .line 351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_39
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v5

    goto :goto_2e

    .line 353
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_3e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    move-object v6, p0

    goto :goto_24

    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v5           #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1       #item:Ljava/lang/Object;,"TE;"
    .restart local p0       #this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_46
    move v2, v3

    .end local v3           #k:I
    .restart local v2       #k:I
    goto :goto_15
.end method
