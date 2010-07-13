.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_SIZE:I = 0xa

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/Vector;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 79
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Vector;-><init>(II)V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 92
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    .line 93
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "capacity"
    .parameter "capacityIncrement"

    .prologue
    .line 107
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 110
    :try_start_6
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_6 .. :try_end_c} :catch_f

    .line 114
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    .line 115
    return-void

    .line 111
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, e:Ljava/lang/NegativeArraySizeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 130
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_c

    .line 132
    :cond_21
    return-void
.end method

.method private grow(I)V
    .registers 6
    .parameter "newCapacity"

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v3, 0x0

    .line 474
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, newData:[Ljava/lang/Object;,"[TE;"
    sget-boolean v1, Ljava/util/Vector;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le v1, p1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 477
    :cond_13
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 479
    return-void
.end method

.method private growBy(I)V
    .registers 7
    .parameter "required"

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, adding:I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v2, :cond_10

    .line 502
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v2

    if-nez v0, :cond_c

    .line 503
    move v0, p1

    .line 505
    :cond_c
    :goto_c
    if-ge v0, p1, :cond_1d

    .line 506
    add-int/2addr v0, v0

    goto :goto_c

    .line 509
    :cond_10
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    div-int v2, p1, v2

    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    mul-int v0, v2, v3

    .line 510
    if-ge v0, p1, :cond_1d

    .line 511
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    add-int/2addr v0, v2

    .line 514
    :cond_1d
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 515
    .local v1, newData:[Ljava/lang/Object;,"[TE;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 517
    return-void
.end method

.method private growByOne()V
    .registers 6

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, adding:I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v2, :cond_1e

    .line 487
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v2

    if-nez v0, :cond_c

    .line 488
    const/4 v0, 0x1

    .line 494
    :cond_c
    :goto_c
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 495
    .local v1, newData:[Ljava/lang/Object;,"[TE;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 497
    return-void

    .line 491
    .end local v1           #newData:[Ljava/lang/Object;,"[TE;"
    :cond_1e
    iget v0, p0, Ljava/util/Vector;->capacityIncrement:I

    goto :goto_c
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .registers 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    new-array p0, p1, [Ljava/lang/Object;

    .end local p0           #this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1092
    monitor-exit p0

    return-void

    .line 1091
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 158
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .registers 11
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    if-ltz p1, :cond_51

    :try_start_3
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v5, :cond_51

    .line 193
    invoke-interface {p2}, Ljava/util/Collection;->size()I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_57

    move-result v4

    .line 194
    .local v4, size:I
    if-nez v4, :cond_10

    .line 195
    const/4 v5, 0x0

    .line 212
    :goto_e
    monitor-exit p0

    return v5

    .line 197
    :cond_10
    :try_start_10
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 198
    .local v3, required:I
    if-lez v3, :cond_1d

    .line 199
    invoke-direct {p0, v3}, Ljava/util/Vector;->growBy(I)V

    .line 201
    :cond_1d
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v5, p1

    .line 202
    .local v0, count:I
    if-lez v0, :cond_2c

    .line 203
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int v7, p1, v4

    invoke-static {v5, p1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :cond_2c
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_57

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    move v2, p1

    .line 207
    .end local p1
    .local v2, location:I
    :goto_31
    :try_start_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 208
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_5a

    add-int/lit8 p1, v2, 0x1

    .end local v2           #location:I
    .restart local p1
    :try_start_3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_57

    move v2, p1

    .end local p1
    .restart local v2       #location:I
    goto :goto_31

    .line 210
    :cond_43
    :try_start_43
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v5, v4

    iput v5, p0, Ljava/util/Vector;->elementCount:I

    .line 211
    iget v5, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Vector;->modCount:I
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_5a

    .line 212
    const/4 v5, 0x1

    move p1, v2

    .end local v2           #location:I
    .restart local p1
    goto :goto_e

    .line 214
    .end local v0           #count:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    .end local v3           #required:I
    .end local v4           #size:I
    :cond_51
    :try_start_51
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v5
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_57

    .line 192
    :catchall_57
    move-exception v5

    :goto_58
    monitor-exit p0

    throw v5

    .end local p1
    .restart local v0       #count:I
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    .restart local v2       #location:I
    .restart local v3       #required:I
    .restart local v4       #size:I
    :catchall_5a
    move-exception v5

    move p1, v2

    .end local v2           #location:I
    .restart local p1
    goto :goto_58
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {p0, v0, p1}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_b

    .line 239
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    .line 241
    :cond_b
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1

    .line 242
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 243
    monitor-exit p0

    return-void

    .line 238
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .registers 2

    .prologue
    .line 254
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 266
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 267
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 281
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 282
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_11} :catch_14

    move-object v2, v1

    .line 285
    .end local v1           #vector:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    :goto_12
    monitor-exit p0

    return-object v2

    .line 284
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 285
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_12

    .line 281
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0, p1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    move v0, v2

    goto :goto_9
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
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
    .line 317
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyInto([Ljava/lang/Object;)V
    .registers 6
    .parameter "elements"

    .prologue
    .line 333
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 334
    monitor-exit p0

    return-void

    .line 333
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_b

    .line 349
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-object v0

    .line 351
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    .line 348
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .registers 5
    .parameter "minimumCapacity"

    .prologue
    .line 395
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, p1, :cond_18

    .line 396
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v1, :cond_1a

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    :goto_d
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int v0, v1, v2

    .line 399
    .local v0, next:I
    if-le p1, v0, :cond_1d

    move v1, p1

    :goto_15
    invoke-direct {p0, v1}, Ljava/util/Vector;->grow(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1f

    .line 401
    .end local v0           #next:I
    :cond_18
    monitor-exit p0

    return-void

    .line 396
    :cond_1a
    :try_start_1a
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1f

    goto :goto_d

    .restart local v0       #next:I
    :cond_1d
    move v1, v0

    .line 399
    goto :goto_15

    .line 395
    .end local v0           #next:I
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 13
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 417
    monitor-enter p0

    if-ne p0, p1, :cond_8

    move v7, v10

    .line 436
    :goto_6
    monitor-exit p0

    return v7

    .line 420
    :cond_8
    :try_start_8
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_42

    .line 421
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 422
    .local v6, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v8

    if-eq v7, v8, :cond_1c

    move v7, v9

    .line 423
    goto :goto_6

    .line 426
    :cond_1c
    const/4 v3, 0x0

    .line 427
    .local v3, index:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    move v4, v3

    .line 428
    .end local v3           #index:I
    .local v4, index:I
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 429
    iget-object v7, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-object v1, v7, v4

    .local v1, e1:Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, e2:Ljava/lang/Object;
    if-nez v1, :cond_38

    if-nez v2, :cond_3e

    :cond_36
    move v4, v3

    .line 433
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_22

    .line 430
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_44

    move-result v7

    if-nez v7, :cond_36

    :cond_3e
    move v7, v9

    .line 431
    goto :goto_6

    .end local v1           #e1:Ljava/lang/Object;
    .end local v2           #e2:Ljava/lang/Object;
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_40
    move v7, v10

    .line 434
    goto :goto_6

    .end local v4           #index:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_42
    move v7, v9

    .line 436
    goto :goto_6

    .line 417
    :catchall_44
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lez v0, :cond_c

    .line 452
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    monitor-exit p0

    return-object v0

    .line 454
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_12

    .line 451
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .registers 5

    .prologue
    .line 529
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    const/4 v1, 0x1

    .line 530
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    :try_start_3
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v2, :cond_1e

    .line 531
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-nez v3, :cond_15

    const/4 v3, 0x0

    :goto_10
    add-int v1, v2, v3

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 531
    :cond_15
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    move-result v3

    goto :goto_10

    .line 534
    :cond_1e
    monitor-exit p0

    return v1

    .line 529
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 553
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .registers 5
    .parameter "object"
    .parameter "location"

    .prologue
    .line 575
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    if-eqz p1, :cond_18

    .line 576
    move v0, p2

    .local v0, i:I
    :goto_4
    :try_start_4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_28

    .line 577
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_2a

    move-result v1

    if-eqz v1, :cond_15

    move v1, v0

    .line 588
    :goto_13
    monitor-exit p0

    return v1

    .line 576
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 582
    .end local v0           #i:I
    :cond_18
    move v0, p2

    .restart local v0       #i:I
    :goto_19
    :try_start_19
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_28

    .line 583
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_2a

    if-nez v1, :cond_25

    move v1, v0

    .line 584
    goto :goto_13

    .line 582
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 588
    :cond_28
    const/4 v1, -0x1

    goto :goto_13

    .line 575
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertElementAt(Ljava/lang/Object;I)V
    .registers 7
    .parameter
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    if-ltz p2, :cond_32

    :try_start_3
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v1, :cond_32

    .line 610
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_11

    .line 611
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    .line 613
    :cond_11
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v1, p2

    .line 614
    .local v0, count:I
    if-lez v0, :cond_20

    .line 615
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    :cond_20
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 619
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 620
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_38

    .line 624
    monitor-exit p0

    return-void

    .line 622
    .end local v0           #count:I
    :cond_32
    :try_start_32
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_38

    .line 609
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 636
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_b

    monitor-exit p0

    return-object v1

    .line 653
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 654
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 652
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 674
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .registers 5
    .parameter "object"
    .parameter "location"

    .prologue
    .line 696
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v1, :cond_2a

    .line 697
    if-eqz p1, :cond_1a

    .line 698
    move v0, p2

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_28

    .line 699
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_30

    move-result v1

    if-eqz v1, :cond_17

    move v1, v0

    .line 710
    :goto_15
    monitor-exit p0

    return v1

    .line 698
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 704
    .end local v0           #i:I
    :cond_1a
    move v0, p2

    .restart local v0       #i:I
    :goto_1b
    if-ltz v0, :cond_28

    .line 705
    :try_start_1d
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_25

    move v1, v0

    .line 706
    goto :goto_15

    .line 704
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 710
    :cond_28
    const/4 v1, -0x1

    goto :goto_15

    .line 712
    .end local v0           #i:I
    :cond_2a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_30

    .line 696
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .registers 7
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v2, :cond_2d

    .line 730
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 731
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    .line 732
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v2, p1

    .line 733
    .local v1, size:I
    if-lez v1, :cond_1e

    .line 734
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    :cond_1e
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 738
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_33

    .line 739
    monitor-exit p0

    return-object v0

    .line 741
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    .end local v1           #size:I
    :cond_2d
    :try_start_2d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_33

    .line 729
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 761
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
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
    .line 777
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllElements()V
    .registers 5

    .prologue
    .line 789
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 790
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 791
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 792
    monitor-exit p0

    return-void

    .line 789
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v2, 0x0

    .line 811
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    move-result v0

    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    move v1, v2

    .line 815
    :goto_b
    monitor-exit p0

    return v1

    .line 814
    :cond_d
    :try_start_d
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 815
    const/4 v1, 0x1

    goto :goto_b

    .line 811
    .end local v0           #index:I
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .registers 6
    .parameter "location"

    .prologue
    .line 833
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    if-ltz p1, :cond_2b

    :try_start_3
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v1, :cond_2b

    .line 834
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 835
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v1, p1

    .line 836
    .local v0, size:I
    if-lez v0, :cond_1c

    .line 837
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    :cond_1c
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 841
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_31

    .line 845
    monitor-exit p0

    return-void

    .line 843
    .end local v0           #size:I
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 833
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected removeRange(II)V
    .registers 8
    .parameter "start"
    .parameter "end"

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 863
    if-ltz p1, :cond_3c

    if-gt p1, p2, :cond_3c

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt p2, v1, :cond_3c

    .line 864
    if-ne p1, p2, :cond_e

    .line 881
    :goto_d
    return-void

    .line 867
    :cond_e
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-eq p2, v1, :cond_32

    .line 868
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v2, p2, p1

    sub-int v0, v1, v2

    .line 871
    .local v0, newCount:I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v0, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 872
    iput v0, p0, Ljava/util/Vector;->elementCount:I

    .line 877
    .end local v0           #newCount:I
    :goto_2b
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    goto :goto_d

    .line 874
    :cond_32
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, p1, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 875
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    goto :goto_2b

    .line 879
    :cond_3c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
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
    .line 895
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v1, :cond_f

    .line 915
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 916
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    .line 917
    monitor-exit p0

    return-object v0

    .line 919
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_15

    .line 914
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_b

    .line 937
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    .line 941
    monitor-exit p0

    return-void

    .line 939
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    .line 936
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 955
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-ne p1, v0, :cond_7

    .line 964
    :goto_5
    monitor-exit p0

    return-void

    .line 958
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 959
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, p1, :cond_16

    .line 960
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 962
    :cond_16
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    .line 963
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 955
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 976
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .registers 5
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 1009
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 1010
    .local v0, result:[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1011
    monitor-exit p0

    return-object v0

    .line 1009
    .end local v0           #result:[Ljava/lang/Object;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
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
    .line 1032
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    monitor-enter p0

    :try_start_1
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    array-length v3, p1

    if-le v2, v3, :cond_1a

    .line 1033
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1034
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 1036
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1a
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    array-length v3, p1

    if-ge v2, v3, :cond_2d

    .line 1038
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, p1, v2
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 1040
    :cond_2d
    monitor-exit p0

    return-object p1

    .line 1032
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    const-string v3, "(this Collection)"

    .line 1052
    monitor-enter p0

    :try_start_3
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    if-nez v3, :cond_b

    .line 1053
    const-string v3, "[]"
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3e

    .line 1072
    :goto_9
    monitor-exit p0

    return-object v3

    .line 1055
    :cond_b
    :try_start_b
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .line 1056
    .local v2, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1057
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1058
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v2, :cond_41

    .line 1059
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_36

    .line 1060
    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    :goto_2e
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1062
    :cond_36
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3e

    goto :goto_2e

    .line 1052
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1066
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_41
    :try_start_41
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-ne v3, p0, :cond_56

    .line 1067
    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    :goto_4c
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1072
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 1069
    :cond_56
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_3e

    goto :goto_4c
.end method

.method public declared-synchronized trimToSize()V
    .registers 3

    .prologue
    .line 1084
    .local p0, this:Ljava/util/Vector;,"Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-eq v0, v1, :cond_d

    .line 1085
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-direct {p0, v0}, Ljava/util/Vector;->grow(I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1087
    :cond_d
    monitor-exit p0

    return-void

    .line 1084
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
