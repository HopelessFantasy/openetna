.class public Ljava/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$1;,
        Ljava/util/concurrent/CopyOnWriteArrayList$SubList;,
        Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;,
        Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient arr:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final transient lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
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
    .line 75
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    array-length v2, p1

    .line 89
    .local v2, size:I
    invoke-direct {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_19

    .line 91
    aget-object v3, p1, v1

    aput-object v3, v0, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 93
    :cond_19
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->arr:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static synthetic access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static final checkIndexExlusive(II)V
    .registers 5
    .parameter "index"
    .parameter "size"

    .prologue
    .line 738
    if-ltz p0, :cond_4

    if-lt p0, p1, :cond_27

    .line 739
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_27
    return-void
.end method

.method static final checkIndexInclusive(II)V
    .registers 5
    .parameter "index"
    .parameter "size"

    .prologue
    .line 726
    if-ltz p0, :cond_4

    if-le p0, p1, :cond_27

    .line 727
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_27
    return-void
.end method

.method static final containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z
    .registers 8
    .parameter "c"
    .parameter "data"
    .parameter "start"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 646
    if-nez p3, :cond_5

    move v2, v3

    .line 656
    :goto_4
    return v2

    .line 649
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 650
    .local v0, it:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 651
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 652
    .local v1, next:Ljava/lang/Object;
    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    if-gez v2, :cond_9

    move v2, v3

    .line 653
    goto :goto_4

    .line 656
    .end local v1           #next:Ljava/lang/Object;
    :cond_1b
    const/4 v2, 0x1

    goto :goto_4
.end method

.method static final indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 7
    .parameter "o"
    .parameter "data"
    .parameter "start"
    .parameter "size"

    .prologue
    const/4 v2, -0x1

    .line 700
    if-nez p3, :cond_5

    move v1, v2

    .line 716
    :goto_4
    return v1

    .line 703
    :cond_5
    if-nez p0, :cond_15

    .line 704
    move v0, p2

    .local v0, i:I
    :goto_8
    add-int v1, p2, p3

    if-ge v0, v1, :cond_27

    .line 705
    aget-object v1, p1, v0

    if-nez v1, :cond_12

    move v1, v0

    .line 706
    goto :goto_4

    .line 704
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 710
    .end local v0           #i:I
    :cond_15
    move v0, p2

    .restart local v0       #i:I
    :goto_16
    add-int v1, p2, p3

    if-ge v0, v1, :cond_27

    .line 711
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v0

    .line 712
    goto :goto_4

    .line 710
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    move v1, v2

    .line 716
    goto :goto_4
.end method

.method static final lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 8
    .parameter "o"
    .parameter "data"
    .parameter "start"
    .parameter "size"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 670
    if-nez p3, :cond_6

    move v1, v3

    .line 686
    :goto_5
    return v1

    .line 673
    :cond_6
    if-eqz p0, :cond_1d

    .line 674
    add-int v1, p2, p3

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_c
    sub-int v1, p2, v2

    if-le v0, v1, :cond_2e

    .line 675
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v0

    .line 676
    goto :goto_5

    .line 674
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 680
    .end local v0           #i:I
    :cond_1d
    add-int v1, p2, p3

    sub-int v0, v1, v2

    .restart local v0       #i:I
    :goto_21
    sub-int v1, p2, v2

    if-le v0, v1, :cond_2e

    .line 681
    aget-object v1, p1, v0

    if-nez v1, :cond_2b

    move v1, v0

    .line 682
    goto :goto_5

    .line 680
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_2e
    move v1, v3

    .line 686
    goto :goto_5
.end method

.method private final newElementArray(I)[Ljava/lang/Object;
    .registers 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-array p0, p1, [Ljava/lang/Object;

    .end local p0           #this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1180
    .local v2, length:I
    if-nez v2, :cond_12

    .line 1181
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V

    .line 1189
    :goto_11
    return-void

    .line 1183
    :cond_12
    invoke-direct {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 1184
    .local v0, back:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_23

    .line 1185
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1187
    :cond_23
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private final setData([Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, data:[Ljava/lang/Object;,"[TE;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->arr:[Ljava/lang/Object;

    .line 484
    return-void
.end method

.method static toArray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 5
    .parameter "data"
    .parameter "start"
    .parameter "size"

    .prologue
    .line 610
    new-array v0, p2, [Ljava/lang/Object;

    .line 611
    .local v0, result:[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    return-object v0
.end method

.method static toArray([Ljava/lang/Object;[Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 6
    .parameter "to"
    .parameter "data"
    .parameter "start"
    .parameter "size"

    .prologue
    .line 622
    array-length v0, p1

    .line 623
    .local v0, l:I
    array-length v1, p0

    if-ge v1, v0, :cond_19

    .line 624
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 631
    .restart local p0
    :cond_14
    :goto_14
    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    return-object p0

    .line 627
    :cond_19
    array-length v1, p0

    if-le v1, v0, :cond_14

    .line 628
    const/4 v1, 0x0

    aput-object v1, p0, v0

    goto :goto_14
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 1162
    .local v0, back:[Ljava/lang/Object;,"[TE;"
    array-length v2, v0

    .line 1163
    .local v2, size:I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1164
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1165
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_16

    .line 1166
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1168
    :cond_16
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 8
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, e:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 116
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, old:[Ljava/lang/Object;,"[TE;"
    array-length v2, v1

    .line 118
    .local v2, size:I
    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 119
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    aput-object p2, v0, p1

    .line 122
    if-le v2, p1, :cond_23

    .line 123
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v2, p1

    invoke-static {v1, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_23
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2c

    .line 127
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return-void

    .line 127
    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v1           #old:[Ljava/lang/Object;,"[TE;"
    .end local v2           #size:I
    :catchall_2c
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 100
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, old:[Ljava/lang/Object;,"[TE;"
    array-length v2, v1

    .line 102
    .local v2, size:I
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    aput-object p1, v0, v2

    .line 105
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    .line 106
    const/4 v3, 0x1

    .line 108
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v1           #old:[Ljava/lang/Object;,"[TE;"
    .end local v2           #size:I
    :catchall_21
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 13
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 154
    .local v3, it:Ljava/util/Iterator;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v7

    .line 155
    .local v7, ssize:I
    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    :try_start_d
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    .line 158
    .local v6, size:I
    invoke-static {p1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 160
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v5

    .line 161
    .local v5, old:[Ljava/lang/Object;,"[TE;"
    add-int v4, v6, v7

    .line 162
    .local v4, nSize:I
    invoke-direct {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v0, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    move v1, p1

    .local v1, i:I
    move v2, v1

    .line 165
    .end local v1           #i:I
    .local v2, i:I
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 166
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_25

    .line 168
    :cond_35
    if-le v6, p1, :cond_3e

    .line 169
    add-int v8, p1, v7

    sub-int v9, v6, p1

    invoke-static {v5, p1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_3e
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_48

    .line 173
    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    const/4 v8, 0x1

    return v8

    .line 173
    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v2           #i:I
    .end local v4           #nSize:I
    .end local v5           #old:[Ljava/lang/Object;,"[TE;"
    .end local v6           #size:I
    :catchall_48
    move-exception v8

    iget-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, it:Ljava/util/Iterator;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    .line 134
    .local v6, ssize:I
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    :try_start_d
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 138
    .local v4, size:I
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, old:[Ljava/lang/Object;,"[TE;"
    add-int v2, v4, v6

    .line 140
    .local v2, nSize:I
    invoke-direct {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v4

    .line 142
    .end local v4           #size:I
    .local v5, size:I
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 143
    add-int/lit8 v4, v5, 0x1

    .end local v5           #size:I
    .restart local v4       #size:I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v5

    move v5, v4

    .end local v4           #size:I
    .restart local v5       #size:I
    goto :goto_21

    .line 145
    :cond_31
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_3b

    .line 147
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 149
    const/4 v7, 0x1

    return v7

    .line 147
    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v2           #nSize:I
    .end local v3           #old:[Ljava/lang/Object;,"[TE;"
    .end local v5           #size:I
    :catchall_3b
    move-exception v7

    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public addAllAbsent(Ljava/util/Collection;)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    .line 190
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_9

    move v8, v9

    .line 211
    :goto_8
    return v8

    .line 193
    :cond_9
    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    :try_start_e
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v5

    .line 196
    .local v5, old:[Ljava/lang/Object;,"[TE;"
    array-length v6, v5

    .line 197
    .local v6, size:I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {p0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v7

    .line 198
    .local v7, toAdd:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    .line 199
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 200
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 201
    .local v4, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_57

    .line 202
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-object v4, v7, v2

    :goto_35
    move v2, v1

    .line 204
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_21

    .line 205
    .end local v4           #o:Ljava/lang/Object;,"TE;"
    :cond_37
    add-int v8, v6, v2

    invoke-direct {p0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    const/4 v8, 0x0

    invoke-static {v7, v8, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_50

    .line 211
    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v8, v2

    goto :goto_8

    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;
    .end local v5           #old:[Ljava/lang/Object;,"[TE;"
    .end local v6           #size:I
    .end local v7           #toAdd:[Ljava/lang/Object;,"[TE;"
    :catchall_50
    move-exception v8

    iget-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .restart local v2       #i:I
    .restart local v3       #it:Ljava/util/Iterator;
    .restart local v4       #o:Ljava/lang/Object;,"TE;"
    .restart local v5       #old:[Ljava/lang/Object;,"[TE;"
    .restart local v6       #size:I
    .restart local v7       #toAdd:[Ljava/lang/Object;,"[TE;"
    :cond_57
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_35
.end method

.method public addIfAbsent(Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x0

    .line 226
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    :try_start_6
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, old:[Ljava/lang/Object;,"[TE;"
    array-length v2, v1

    .line 231
    .local v2, size:I
    if-eqz v2, :cond_1a

    .line 232
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_31

    move-result v3

    if-ltz v3, :cond_1a

    .line 242
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    :goto_19
    return v3

    .line 236
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    :try_start_1c
    invoke-direct {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    aput-object p1, v0, v2

    .line 239
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_31

    .line 240
    const/4 v3, 0x1

    .line 242
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_19

    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v1           #old:[Ljava/lang/Object;,"[TE;"
    .end local v2           #size:I
    :catchall_31
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 247
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_13

    .line 251
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    return-void

    .line 251
    :catchall_13
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 258
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 259
    .local v1, thisClone:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_d} :catch_e

    .line 260
    return-object v1

    .line 261
    .end local v1           #thisClone:Ljava/util/concurrent/CopyOnWriteArrayList;
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 262
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CloneNotSupportedException is not expected here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 267
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    if-ne p1, p0, :cond_6

    move v6, v8

    .line 299
    :goto_5
    return v6

    .line 279
    :cond_6
    instance-of v6, p1, Ljava/util/List;

    if-nez v6, :cond_c

    move v6, v7

    .line 280
    goto :goto_5

    .line 282
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 283
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 284
    .local v2, it:Ljava/util/Iterator;
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 285
    .local v4, ourIt:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 286
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_26

    move v6, v7

    .line 287
    goto :goto_5

    .line 289
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 290
    .local v5, thisListElem:Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 291
    .local v1, anotherListElem:Ljava/lang/Object;
    if-nez v5, :cond_34

    if-eqz v1, :cond_18

    :goto_32
    move v6, v7

    .line 293
    goto :goto_5

    .line 291
    :cond_34
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_32

    .line 296
    .end local v1           #anotherListElem:Ljava/lang/Object;
    .end local v5           #thisListElem:Ljava/lang/Object;
    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    move v6, v7

    .line 297
    goto :goto_5

    :cond_43
    move v6, v8

    .line 299
    goto :goto_5
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    aget-object v1, v0, p1

    return-object v1
.end method

.method final getData()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->arr:[Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 495
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->arr:[Ljava/lang/Object;

    goto :goto_9
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 308
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x1

    .line 309
    .local v0, hashCode:I
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 310
    .local v1, it:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 312
    .local v2, obj:Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_17

    const/4 v4, 0x0

    :goto_14
    add-int v0, v3, v4

    .line 313
    goto :goto_5

    .line 312
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_14

    .line 314
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1c
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "o"

    .prologue
    .line 335
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    array-length v1, v0

    sub-int/2addr v1, p2

    invoke-static {p1, v0, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 340
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 344
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "o"

    .prologue
    .line 365
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 376
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 384
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 386
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1d

    move-result v0

    .line 387
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 388
    const/4 v1, 0x0

    .line 393
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_12
    return v1

    .line 390
    :cond_13
    :try_start_13
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    .line 391
    const/4 v1, 0x1

    .line 393
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_12

    .end local v0           #index:I
    :catchall_1d
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method final removeAll(Ljava/util/Collection;II)I
    .registers 15
    .parameter "c"
    .parameter "start"
    .parameter "size"

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v9, 0x0

    .line 507
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    .line 508
    .local v7, ssize:I
    if-nez v7, :cond_9

    move v8, v9

    .line 532
    :goto_8
    return v8

    .line 511
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v5

    .line 512
    .local v5, old:[Ljava/lang/Object;
    array-length v0, v5

    .line 513
    .local v0, arrsize:I
    if-nez v0, :cond_12

    move v8, v9

    .line 514
    goto :goto_8

    .line 516
    :cond_12
    new-array v1, p3, [Ljava/lang/Object;

    .line 517
    .local v1, data:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 518
    .local v3, j:I
    move v2, p2

    .local v2, i:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_17
    add-int v8, p2, p3

    if-ge v2, v8, :cond_2d

    .line 519
    aget-object v8, v5, v2

    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 520
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    aget-object v8, v5, v2

    aput-object v8, v1, v4

    .line 518
    :goto_29
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_17

    .line 523
    :cond_2d
    if-eq v4, p3, :cond_4e

    .line 524
    sub-int v8, p3, v4

    sub-int v8, v0, v8

    invoke-direct {p0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v6

    .line 525
    .local v6, result:[Ljava/lang/Object;,"[TE;"
    invoke-static {v5, v9, v6, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    invoke-static {v1, v9, v6, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    add-int v8, p2, p3

    add-int v9, p2, v4

    add-int v10, p2, p3

    sub-int v10, v0, v10

    invoke-static {v5, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    invoke-direct {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V

    .line 530
    sub-int v8, p3, v4

    goto :goto_8

    .end local v6           #result:[Ljava/lang/Object;,"[TE;"
    :cond_4e
    move v8, v9

    .line 532
    goto :goto_8

    :cond_50
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_29
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 400
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;II)I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1b

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 402
    :goto_13
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_19
    move v0, v2

    .line 400
    goto :goto_13

    .line 402
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method removeRange(II)Ljava/lang/Object;
    .registers 9
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 585
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 586
    .local v3, sizeArr:I
    invoke-static {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexExlusive(II)V

    .line 587
    add-int v4, p1, p2

    invoke-static {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 589
    sub-int v4, v3, p2

    invoke-direct {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 590
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    .line 591
    .local v2, oldArr:[Ljava/lang/Object;,"[TE;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    aget-object v1, v2, p1

    .line 593
    .local v1, old:Ljava/lang/Object;,"TE;"
    add-int v4, p1, p2

    if-le v3, v4, :cond_2f

    .line 594
    add-int v4, p1, p2

    add-int v5, p1, p2

    sub-int v5, v3, v5

    invoke-static {v2, v4, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    :cond_2f
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    .line 600
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v1           #old:Ljava/lang/Object;,"TE;"
    .end local v2           #oldArr:[Ljava/lang/Object;,"[TE;"
    .end local v3           #sizeArr:I
    :catchall_38
    move-exception v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method retainAll(Ljava/util/Collection;II)I
    .registers 13
    .parameter "c"
    .parameter "start"
    .parameter "size"

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v7, 0x0

    .line 543
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    .line 544
    .local v2, old:[Ljava/lang/Object;
    if-nez p3, :cond_9

    move v6, v7

    .line 576
    :goto_8
    return v6

    .line 547
    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_2d

    .line 549
    array-length v6, v2

    if-ne p3, v6, :cond_1b

    .line 550
    invoke-direct {p0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 557
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    :goto_16
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V

    move v6, p3

    .line 558
    goto :goto_8

    .line 552
    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    :cond_1b
    array-length v6, v2

    sub-int/2addr v6, p3

    invoke-direct {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 553
    .restart local v0       #data:[Ljava/lang/Object;,"[TE;"
    invoke-static {v2, v7, v0, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    add-int v6, p2, p3

    array-length v7, v2

    sub-int/2addr v7, p2

    sub-int/2addr v7, p3

    invoke-static {v2, v6, v0, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_16

    .line 560
    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    :cond_2d
    new-array v5, p3, [Ljava/lang/Object;

    .line 561
    .local v5, temp:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 562
    .local v3, pos:I
    move v1, p2

    .local v1, i:I
    move v4, v3

    .end local v3           #pos:I
    .local v4, pos:I
    :goto_32
    add-int v6, p2, p3

    if-ge v1, v6, :cond_48

    .line 563
    aget-object v6, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 564
    add-int/lit8 v3, v4, 0x1

    .end local v4           #pos:I
    .restart local v3       #pos:I
    aget-object v6, v2, v1

    aput-object v6, v5, v4

    .line 562
    :goto_44
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_32

    .line 567
    :cond_48
    if-ne v4, p3, :cond_4c

    move v6, v7

    .line 568
    goto :goto_8

    .line 570
    :cond_4c
    array-length v6, v2

    add-int/2addr v6, v4

    sub-int/2addr v6, p3

    invoke-direct {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 571
    .restart local v0       #data:[Ljava/lang/Object;,"[TE;"
    invoke-static {v2, v7, v0, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    invoke-static {v5, v7, v0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    add-int v6, p2, p3

    add-int v7, p2, v4

    array-length v8, v2

    sub-int/2addr v8, p2

    sub-int/2addr v8, p3

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V

    .line 576
    sub-int v6, p3, v4

    goto :goto_8

    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    :cond_69
    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_44
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 407
    if-nez p1, :cond_9

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 410
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 412
    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;II)I
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_23

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 414
    :goto_1b
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_21
    move v0, v2

    .line 412
    goto :goto_1b

    .line 414
    :catchall_23
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, e:Ljava/lang/Object;,"TE;"
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 421
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 422
    .local v3, size:I
    invoke-static {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexExlusive(II)V

    .line 424
    invoke-direct {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    .line 426
    .local v2, oldArr:[Ljava/lang/Object;,"[TE;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    aget-object v1, v0, p1

    .line 428
    .local v1, old:Ljava/lang/Object;,"TE;"
    aput-object p2, v0, p1

    .line 429
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setData([Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    .line 432
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .end local v0           #data:[Ljava/lang/Object;,"[TE;"
    .end local v1           #old:Ljava/lang/Object;,"TE;"
    .end local v2           #oldArr:[Ljava/lang/Object;,"[TE;"
    .end local v3           #size:I
    :catchall_26
    move-exception v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 437
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 445
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 446
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 451
    .local v0, data:[Ljava/lang/Object;,"[TE;"
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;[Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 456
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 459
    .local v0, it:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 463
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_32

    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 466
    :cond_32
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
