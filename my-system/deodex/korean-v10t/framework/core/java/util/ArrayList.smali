.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final emptyArray:[Ljava/lang/Object; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field private transient array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient firstIndex:I

.field private transient lastIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 42
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->emptyArray:[Ljava/lang/Object;

    .line 677
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "size"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    sput-object v0, Ljava/util/ArrayList;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 68
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/ArrayList;->lastIndex:I

    iput v1, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 71
    :try_start_8
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_8 .. :try_end_e} :catch_f

    .line 75
    return-void

    .line 72
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 73
    .local v0, e:Ljava/lang/NegativeArraySizeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
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
    .line 86
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 88
    .local v0, size:I
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/ArrayList;->lastIndex:I

    iput v1, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 89
    div-int/lit8 v1, v0, 0xa

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-void
.end method

.method private growAtEnd(I)V
    .registers 11
    .parameter "required"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v8, 0x0

    .line 359
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 360
    .local v3, size:I
    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    iget-object v6, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v6, v6

    iget v7, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v6, v7

    sub-int v6, p1, v6

    if-lt v5, v6, :cond_39

    .line 361
    iget v5, p0, Ljava/util/ArrayList;->lastIndex:I

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v2, v5, v6

    .line 362
    .local v2, newLast:I
    if-lez v3, :cond_32

    .line 363
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    if-ge v2, v5, :cond_37

    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    move v4, v5

    .line 365
    .local v4, start:I
    :goto_29
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v4, v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 367
    .end local v4           #start:I
    :cond_32
    iput v8, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 368
    iput v2, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 385
    .end local v2           #newLast:I
    :goto_36
    return-void

    .restart local v2       #newLast:I
    :cond_37
    move v4, v2

    .line 364
    goto :goto_29

    .line 370
    .end local v2           #newLast:I
    :cond_39
    div-int/lit8 v0, v3, 0x2

    .line 371
    .local v0, increment:I
    if-le p1, v0, :cond_3e

    .line 372
    move v0, p1

    .line 374
    :cond_3e
    const/16 v5, 0xc

    if-ge v0, v5, :cond_44

    .line 375
    const/16 v0, 0xc

    .line 377
    :cond_44
    add-int v5, v3, v0

    invoke-direct {p0, v5}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, newArray:[Ljava/lang/Object;,"[TE;"
    if-lez v3, :cond_57

    .line 379
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    invoke-static {v5, v6, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iput v8, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 381
    iput v3, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 383
    :cond_57
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_36
.end method

.method private growAtFront(I)V
    .registers 10
    .parameter "required"

    .prologue
    .line 388
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 389
    .local v4, size:I
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v5, v6

    if-lt v5, p1, :cond_37

    .line 390
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v5, v5

    sub-int v3, v5, v4

    .line 391
    .local v3, newFirst:I
    if-lez v4, :cond_2a

    .line 392
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v5, v6, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v5, v4

    if-le v5, v3, :cond_32

    move v1, v3

    .line 395
    .local v1, length:I
    :goto_22
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 397
    .end local v1           #length:I
    :cond_2a
    iput v3, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 398
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v5, v5

    iput v5, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 416
    .end local v3           #newFirst:I
    :goto_31
    return-void

    .line 393
    .restart local v3       #newFirst:I
    :cond_32
    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v5, v4

    move v1, v5

    goto :goto_22

    .line 400
    .end local v3           #newFirst:I
    :cond_37
    div-int/lit8 v0, v4, 0x2

    .line 401
    .local v0, increment:I
    if-le p1, v0, :cond_3c

    .line 402
    move v0, p1

    .line 404
    :cond_3c
    const/16 v5, 0xc

    if-ge v0, v5, :cond_42

    .line 405
    const/16 v0, 0xc

    .line 407
    :cond_42
    add-int v5, v4, v0

    invoke-direct {p0, v5}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 408
    .local v2, newArray:[Ljava/lang/Object;,"[TE;"
    if-lez v4, :cond_53

    .line 409
    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    array-length v7, v2

    sub-int/2addr v7, v4

    invoke-static {v5, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    :cond_53
    array-length v5, v2

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 413
    array-length v5, v2

    iput v5, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 414
    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_31
.end method

.method private growForInsert(II)V
    .registers 11
    .parameter "location"
    .parameter "required"

    .prologue
    .line 419
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    div-int/lit8 v0, v3, 0x2

    .line 420
    .local v0, increment:I
    if-le p2, v0, :cond_9

    .line 421
    move v0, p2

    .line 423
    :cond_9
    const/16 v4, 0xc

    if-ge v0, v4, :cond_f

    .line 424
    const/16 v0, 0xc

    .line 426
    :cond_f
    add-int v4, v3, v0

    invoke-direct {p0, v4}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 427
    .local v1, newArray:[Ljava/lang/Object;,"[TE;"
    sub-int v2, v0, p2

    .line 430
    .local v2, newFirst:I
    iget-object v4, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v5, p1

    add-int v6, v2, p1

    add-int/2addr v6, p2

    sub-int v7, v3, p1

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget-object v4, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    invoke-static {v4, v5, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iput v2, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 435
    add-int v4, v3, v0

    iput v4, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 437
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 438
    return-void
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_8

    .line 97
    sget-object p0, Ljava/util/ArrayList;->emptyArray:[Ljava/lang/Object;

    .end local p0           #this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    .line 101
    :goto_7
    return-object v0

    .restart local p0       #this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :cond_8
    new-array p0, p1, [Ljava/lang/Object;

    .end local p0           #this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    goto :goto_7
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 694
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 695
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v2, "size"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 696
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 697
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    if-ge v1, v2, :cond_27

    .line 698
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 700
    :cond_27
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 682
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v2, "size"

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 683
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 684
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 685
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 686
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1a

    .line 689
    :cond_28
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 10
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x1

    .line 121
    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v1, v2, v3

    .line 123
    .local v1, size:I
    if-lez p1, :cond_5b

    if-ge p1, v1, :cond_5b

    .line 124
    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    if-nez v2, :cond_27

    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_27

    .line 125
    invoke-direct {p0, p1, v6}, Ljava/util/ArrayList;->growForInsert(II)V

    .line 136
    :goto_19
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v3, p1

    aput-object p2, v2, v3

    .line 151
    :goto_20
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 152
    return-void

    .line 126
    :cond_27
    div-int/lit8 v2, v1, 0x2

    if-ge p1, v2, :cond_2f

    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    if-gtz v2, :cond_36

    :cond_2f
    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_45

    .line 128
    :cond_36
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    iget-object v4, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/ArrayList;->firstIndex:I

    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19

    .line 131
    :cond_45
    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int v0, p1, v2

    .line 132
    .local v0, index:I
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, p1

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->lastIndex:I

    goto :goto_19

    .line 137
    .end local v0           #index:I
    :cond_5b
    if-nez p1, :cond_6e

    .line 138
    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    if-nez v2, :cond_64

    .line 139
    invoke-direct {p0, v6}, Ljava/util/ArrayList;->growAtFront(I)V

    .line 141
    :cond_64
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int/2addr v3, v6

    iput v3, p0, Ljava/util/ArrayList;->firstIndex:I

    aput-object p2, v2, v3

    goto :goto_20

    .line 142
    :cond_6e
    if-ne p1, v1, :cond_85

    .line 143
    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_7a

    .line 144
    invoke-direct {p0, v6}, Ljava/util/ArrayList;->growAtEnd(I)V

    .line 146
    :cond_7a
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/ArrayList;->lastIndex:I

    aput-object p2, v2, v3

    goto :goto_20

    .line 148
    :cond_85
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    const/4 v3, 0x1

    .line 164
    iget v0, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_b

    .line 165
    invoke-direct {p0, v3}, Ljava/util/ArrayList;->growAtEnd(I)V

    .line 167
    :cond_b
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList;->lastIndex:I

    aput-object p1, v0, v1

    .line 168
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 169
    return v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 14
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
    .line 189
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 190
    .local v6, size:I
    if-ltz p1, :cond_8

    if-le p1, v6, :cond_e

    .line 191
    :cond_8
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 193
    :cond_e
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    .line 194
    .local v1, growSize:I
    if-lez p1, :cond_86

    if-ge p1, v6, :cond_86

    .line 195
    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v7, v7

    sub-int/2addr v7, v6

    if-ge v7, v1, :cond_3a

    .line 196
    invoke-direct {p0, p1, v1}, Ljava/util/ArrayList;->growForInsert(II)V

    .line 225
    :cond_1f
    :goto_1f
    if-lez v1, :cond_ad

    .line 226
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 227
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    iget v7, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int v2, p1, v7

    .line 228
    .local v2, index:I
    add-int v0, v2, v1

    .local v0, end:I
    move v3, v2

    .line 229
    .end local v2           #index:I
    .local v3, index:I
    :goto_2c
    if-ge v3, v0, :cond_a5

    .line 230
    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2c

    .line 197
    .end local v0           #end:I
    .end local v3           #index:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :cond_3a
    div-int/lit8 v7, v6, 0x2

    if-ge p1, v7, :cond_42

    iget v7, p0, Ljava/util/ArrayList;->firstIndex:I

    if-gtz v7, :cond_4a

    :cond_42
    iget v7, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v8, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v8, v8

    sub-int/2addr v8, v1

    if-le v7, v8, :cond_71

    .line 199
    :cond_4a
    iget v7, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v5, v7, v1

    .line 200
    .local v5, newFirst:I
    if-gez v5, :cond_65

    .line 201
    iget v7, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int v2, p1, v7

    .line 202
    .restart local v2       #index:I
    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget-object v8, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    sub-int v9, v2, v5

    sub-int v10, v6, p1

    invoke-static {v7, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget v7, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v7, v5

    iput v7, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 205
    const/4 v5, 0x0

    .line 207
    .end local v2           #index:I
    :cond_65
    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v8, p0, Ljava/util/ArrayList;->firstIndex:I

    iget-object v9, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v7, v8, v9, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iput v5, p0, Ljava/util/ArrayList;->firstIndex:I

    goto :goto_1f

    .line 210
    .end local v5           #newFirst:I
    :cond_71
    iget v7, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int v2, p1, v7

    .line 211
    .restart local v2       #index:I
    iget-object v7, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget-object v8, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    add-int v9, v2, v1

    sub-int v10, v6, p1

    invoke-static {v7, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v7, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/2addr v7, v1

    iput v7, p0, Ljava/util/ArrayList;->lastIndex:I

    goto :goto_1f

    .line 215
    .end local v2           #index:I
    :cond_86
    if-nez p1, :cond_91

    .line 216
    invoke-direct {p0, v1}, Ljava/util/ArrayList;->growAtFront(I)V

    .line 217
    iget v7, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int/2addr v7, v1

    iput v7, p0, Ljava/util/ArrayList;->firstIndex:I

    goto :goto_1f

    .line 218
    :cond_91
    if-ne p1, v6, :cond_1f

    .line 219
    iget v7, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v8, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v8, v8

    sub-int/2addr v8, v1

    if-le v7, v8, :cond_9e

    .line 220
    invoke-direct {p0, v1}, Ljava/util/ArrayList;->growAtEnd(I)V

    .line 222
    :cond_9e
    iget v7, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/2addr v7, v1

    iput v7, p0, Ljava/util/ArrayList;->lastIndex:I

    goto/16 :goto_1f

    .line 232
    .restart local v0       #end:I
    .restart local v3       #index:I
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :cond_a5
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    .line 233
    const/4 v7, 0x1

    .line 235
    .end local v0           #end:I
    .end local v3           #index:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_ac
    return v7

    :cond_ad
    const/4 v7, 0x0

    goto :goto_ac
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 250
    .local v1, growSize:I
    if-lez v1, :cond_34

    .line 251
    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    iget-object v4, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_11

    .line 252
    invoke-direct {p0, v1}, Ljava/util/ArrayList;->growAtEnd(I)V

    .line 254
    :cond_11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 255
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int v0, v3, v1

    .line 256
    .local v0, end:I
    :goto_19
    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    if-ge v3, v0, :cond_2c

    .line 257
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/ArrayList;->lastIndex:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_19

    .line 259
    :cond_2c
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 260
    const/4 v3, 0x1

    .line 262
    .end local v0           #end:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_33
    return v3

    :cond_34
    const/4 v3, 0x0

    goto :goto_33
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 274
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    if-eq v0, v1, :cond_1b

    .line 275
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ArrayList;->lastIndex:I

    iput v0, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 277
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 279
    :cond_1b
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 293
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 294
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v1, Ljava/util/ArrayList;->array:[Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v2, v1

    .line 297
    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :goto_11
    return-object v2

    .line 296
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 297
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x1

    .line 312
    if-eqz p1, :cond_18

    .line 313
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    .local v0, i:I
    :goto_5
    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    if-ge v0, v1, :cond_29

    .line 314
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    .line 325
    :goto_14
    return v1

    .line 313
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 319
    .end local v0           #i:I
    :cond_18
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    .restart local v0       #i:I
    :goto_1a
    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    if-ge v0, v1, :cond_29

    .line 320
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_26

    move v1, v2

    .line 321
    goto :goto_14

    .line 319
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 325
    :cond_29
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public ensureCapacity(I)V
    .registers 3
    .parameter "minimumCapacity"

    .prologue
    .line 337
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_11

    .line 338
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    if-lez v0, :cond_12

    .line 339
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->growAtFront(I)V

    .line 344
    :cond_11
    :goto_11
    return-void

    .line 341
    :cond_12
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->growAtEnd(I)V

    goto :goto_11
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 350
    .local v0, _firstIndex:I
    if-ltz p1, :cond_10

    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_10

    .line 351
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    add-int v2, v0, p1

    aget-object v1, v1, v2

    return-object v1

    .line 353
    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 442
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    if-eqz p1, :cond_1a

    .line 443
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    .local v0, i:I
    :goto_4
    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    if-ge v0, v1, :cond_2e

    .line 444
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 445
    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v1, v0, v1

    .line 455
    :goto_16
    return v1

    .line 443
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 449
    .end local v0           #i:I
    :cond_1a
    iget v0, p0, Ljava/util/ArrayList;->firstIndex:I

    .restart local v0       #i:I
    :goto_1c
    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    if-ge v0, v1, :cond_2e

    .line 450
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2b

    .line 451
    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v1, v0, v1

    goto :goto_16

    .line 449
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 455
    :cond_2e
    const/4 v1, -0x1

    goto :goto_16
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 460
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->lastIndex:I

    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x1

    .line 465
    if-eqz p1, :cond_1d

    .line 466
    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_7
    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    if-lt v0, v1, :cond_33

    .line 467
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 468
    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v1, v0, v1

    .line 478
    :goto_19
    return v1

    .line 466
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 472
    .end local v0           #i:I
    :cond_1d
    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int v0, v1, v2

    .restart local v0       #i:I
    :goto_21
    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    if-lt v0, v1, :cond_33

    .line 473
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_30

    .line 474
    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v1, v0, v1

    goto :goto_19

    .line 472
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 478
    :cond_33
    const/4 v1, -0x1

    goto :goto_19
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 11
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 495
    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int v2, v3, v4

    .line 497
    .local v2, size:I
    if-ltz p1, :cond_73

    if-ge p1, v2, :cond_73

    .line 498
    sub-int v3, v2, v7

    if-ne p1, v3, :cond_26

    .line 499
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v4, v7

    iput v4, p0, Ljava/util/ArrayList;->lastIndex:I

    aget-object v1, v3, v4

    .line 500
    .local v1, result:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->lastIndex:I

    aput-object v8, v3, v4

    .line 521
    :goto_1f
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 522
    return-object v1

    .line 501
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :cond_26
    if-nez p1, :cond_39

    .line 502
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    aget-object v1, v3, v4

    .line 503
    .restart local v1       #result:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/ArrayList;->firstIndex:I

    aput-object v8, v3, v4

    goto :goto_1f

    .line 505
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :cond_39
    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int v0, v3, p1

    .line 506
    .local v0, elementIndex:I
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 507
    .restart local v1       #result:Ljava/lang/Object;,"TE;"
    div-int/lit8 v3, v2, 0x2

    if-ge p1, v3, :cond_5d

    .line 508
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/ArrayList;->firstIndex:I

    aput-object v8, v3, v4

    goto :goto_1f

    .line 512
    :cond_5d
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    sub-int v6, v2, p1

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->lastIndex:I

    sub-int/2addr v4, v7

    iput v4, p0, Ljava/util/ArrayList;->lastIndex:I

    aput-object v8, v3, v4

    goto :goto_1f

    .line 518
    .end local v0           #elementIndex:I
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :cond_73
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 532
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 533
    .local v0, index:I
    if-ltz v0, :cond_b

    .line 534
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    const/4 v1, 0x1

    .line 537
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected removeRange(II)V
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v7, 0x0

    .line 555
    if-ltz p1, :cond_5a

    if-gt p1, p2, :cond_5a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p2, v2, :cond_5a

    .line 556
    if-ne p1, p2, :cond_e

    .line 577
    :goto_d
    return-void

    .line 559
    :cond_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 560
    .local v1, size:I
    if-ne p2, v1, :cond_2a

    .line 561
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v3, p1

    iget v4, p0, Ljava/util/ArrayList;->lastIndex:I

    invoke-static {v2, v3, v4, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 562
    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 573
    :goto_23
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    goto :goto_d

    .line 563
    :cond_2a
    if-nez p1, :cond_3c

    .line 564
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v4, p2

    invoke-static {v2, v3, v4, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 565
    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v2, p2

    iput v2, p0, Ljava/util/ArrayList;->firstIndex:I

    goto :goto_23

    .line 567
    :cond_3c
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v3, p2

    iget-object v4, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v5, p1

    sub-int v6, v1, p2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget v2, p0, Ljava/util/ArrayList;->lastIndex:I

    add-int/2addr v2, p1

    sub-int v0, v2, p2

    .line 570
    .local v0, newLast:I
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->lastIndex:I

    invoke-static {v2, v0, v3, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 571
    iput v0, p0, Ljava/util/ArrayList;->lastIndex:I

    goto :goto_23

    .line 575
    .end local v0           #newLast:I
    .end local v1           #size:I
    :cond_5a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    if-ltz p1, :cond_18

    iget v1, p0, Ljava/util/ArrayList;->lastIndex:I

    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_18

    .line 597
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v2, p1

    aget-object v0, v1, v2

    .line 598
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->firstIndex:I

    add-int/2addr v2, p1

    aput-object p2, v1, v2

    .line 599
    return-object v0

    .line 601
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :cond_18
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 612
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->lastIndex:I

    iget v1, p0, Ljava/util/ArrayList;->firstIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 624
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 625
    .local v1, size:I
    new-array v0, v1, [Ljava/lang/Object;

    .line 626
    .local v0, result:[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    return-object v0
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
    .line 649
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 650
    .local v2, size:I
    array-length v3, p1

    if-le v2, v3, :cond_19

    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 652
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 654
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_19
    iget-object v3, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->firstIndex:I

    const/4 v5, 0x0

    invoke-static {v3, v4, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    array-length v3, p1

    if-ge v2, v3, :cond_27

    .line 656
    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 658
    :cond_27
    return-object p1
.end method

.method public trimToSize()V
    .registers 6

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v4, 0x0

    .line 669
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 670
    .local v1, size:I
    invoke-direct {p0, v1}, Ljava/util/ArrayList;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 671
    .local v0, newArray:[Ljava/lang/Object;,"[TE;"
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->firstIndex:I

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 673
    iput v4, p0, Ljava/util/ArrayList;->firstIndex:I

    .line 674
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    iput v2, p0, Ljava/util/ArrayList;->lastIndex:I

    .line 675
    return-void
.end method
