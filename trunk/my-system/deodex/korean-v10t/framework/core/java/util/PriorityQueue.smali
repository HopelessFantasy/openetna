.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$1;,
        Ljava/util/PriorityQueue$PriorityIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final DEFAULT_CAPACITY_RATIO:I = 0x2

.field private static final DEFAULT_INIT_CAPACITY_RATIO:D = 1.1

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 74
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .registers 4
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
    .line 89
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 90
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 93
    :cond_c
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 95
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
    .line 112
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 113
    instance-of v0, p1, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_d

    .line 114
    check-cast p1, Ljava/util/PriorityQueue;

    .end local p1           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 121
    :goto_c
    return-void

    .line 115
    .restart local p1       #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_d
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_17

    .line 116
    check-cast p1, Ljava/util/SortedSet;

    .end local p1           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    goto :goto_c

    .line 118
    .restart local p1       #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    .line 119
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    goto :goto_c
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 135
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 150
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    .line 151
    return-void
.end method

.method static synthetic access$100(Ljava/util/PriorityQueue;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method static synthetic access$200(Ljava/util/PriorityQueue;)[Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/PriorityQueue;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->removeAt(I)V

    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, o1:Ljava/lang/Object;,"TE;"
    .local p2, o2:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_b

    .line 370
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 372
    .end local p1           #o1:Ljava/lang/Object;,"TE;"
    :goto_a
    return v0

    .restart local p1       #o1:Ljava/lang/Object;,"TE;"
    :cond_b
    check-cast p1, Ljava/lang/Comparable;

    .end local p1           #o1:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_a
.end method

.method private getFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<+TE;>;"
    const/4 v3, 0x0

    .line 345
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    .line 346
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 347
    iget-object v0, p1, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 349
    return-void
.end method

.method private getFromSortedSet(Ljava/util/SortedSet;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    .line 354
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 355
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 357
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_d

    .line 359
    :cond_22
    return-void
.end method

.method private growToSize(I)V
    .registers 6
    .parameter "size"

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v3, 0x0

    .line 421
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_16

    .line 422
    mul-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, newElements:[Ljava/lang/Object;,"[TE;"
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 426
    .end local v0           #newElements:[Ljava/lang/Object;,"[TE;"
    :cond_16
    return-void
.end method

.method private initSize(Ljava/util/Collection;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_8

    .line 409
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 411
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 412
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 418
    :goto_15
    return-void

    .line 414
    :cond_16
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 416
    .local v0, capacity:I
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    goto :goto_15
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .registers 2
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    new-array p0, p1, [Ljava/lang/Object;

    .end local p0           #this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 322
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 323
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 324
    .local v0, capacity:I
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 325
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v1, v2, :cond_1d

    .line 326
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 328
    :cond_1d
    return-void
.end method

.method private removeAt(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 362
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 363
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 364
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->siftDown(I)V

    .line 365
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 366
    return-void
.end method

.method private siftDown(I)V
    .registers 6
    .parameter "rootIndex"

    .prologue
    .line 391
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 393
    .local v1, target:Ljava/lang/Object;,"TE;"
    :goto_4
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v0, v2, 0x1

    .local v0, childIndex:I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v2, :cond_2e

    .line 394
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v2, v3, :cond_24

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_24

    .line 396
    add-int/lit8 v0, v0, 0x1

    .line 398
    :cond_24
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_33

    .line 404
    :cond_2e
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 405
    return-void

    .line 401
    :cond_33
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    .line 402
    move p1, v0

    goto :goto_4
.end method

.method private siftUp(I)V
    .registers 6
    .parameter "childIndex"

    .prologue
    .line 376
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v3, p1

    .line 378
    .local v2, target:Ljava/lang/Object;,"TE;"
    :goto_4
    if-lez p1, :cond_15

    .line 379
    const/4 v3, 0x1

    sub-int v3, p1, v3

    div-int/lit8 v1, v3, 0x2

    .line 380
    .local v1, parentIndex:I
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 381
    .local v0, parent:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, v0, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1a

    .line 387
    .end local v0           #parent:Ljava/lang/Object;,"TE;"
    .end local v1           #parentIndex:I
    :cond_15
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 388
    return-void

    .line 384
    .restart local v0       #parent:Ljava/lang/Object;,"TE;"
    .restart local v1       #parentIndex:I
    :cond_1a
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v0, v3, p1

    .line 385
    move p1, v1

    .line 386
    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 337
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 338
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_18

    .line 339
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 341
    :cond_18
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
    .line 289
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 184
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 186
    return-void
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
    .line 245
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
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
    .line 162
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$PriorityIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$PriorityIterator;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 203
    :cond_8
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->growToSize(I)V

    .line 204
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    aput-object p1, v0, v1

    .line 205
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->siftUp(I)V

    .line 206
    const/4 v0, 0x1

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
    .line 231
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 217
    const/4 v1, 0x0

    .line 221
    :goto_8
    return-object v1

    .line 219
    :cond_9
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 220
    .local v0, result:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, v2}, Ljava/util/PriorityQueue;->removeAt(I)V

    move-object v1, v0

    .line 221
    goto :goto_8
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    .line 260
    if-nez p1, :cond_5

    move v1, v2

    .line 273
    :goto_4
    return v1

    .line 264
    :cond_5
    const/4 v0, 0x0

    .local v0, targetIndex:I
    :goto_6
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_14

    .line 265
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 269
    :cond_14
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-eqz v1, :cond_1c

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ne v1, v0, :cond_21

    :cond_1c
    move v1, v2

    .line 270
    goto :goto_4

    .line 264
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 272
    :cond_21
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)V

    .line 273
    const/4 v1, 0x1

    goto :goto_4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 174
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method
