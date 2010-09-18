.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$HashEnumerator;,
        Ljava/util/Hashtable$HashIterator;,
        Ljava/util/Hashtable$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field transient elementCount:I

.field transient elementData:[Ljava/util/Hashtable$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient firstSlot:I

.field transient lastSlot:I

.field private loadFactor:F

.field transient modCount:I

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/Hashtable$1;

    invoke-direct {v0}, Ljava/util/Hashtable$1;-><init>()V

    sput-object v0, Ljava/util/Hashtable;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 264
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 265
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 275
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Hashtable;->lastSlot:I

    .line 276
    if-ltz p1, :cond_23

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->elementCount:I

    .line 278
    if-nez p1, :cond_21

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->newElementArray(I)[Ljava/util/Hashtable$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    .line 279
    iget-object v0, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v0, v0

    iput v0, p0, Ljava/util/Hashtable;->firstSlot:I

    .line 280
    const/high16 v0, 0x3f40

    iput v0, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 281
    invoke-direct {p0}, Ljava/util/Hashtable;->computeMaxSize()V

    .line 285
    return-void

    :cond_21
    move v0, p1

    .line 278
    goto :goto_e

    .line 283
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 297
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Hashtable;->lastSlot:I

    .line 298
    if-ltz p1, :cond_23

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_23

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->elementCount:I

    .line 300
    iput p1, p0, Ljava/util/Hashtable;->firstSlot:I

    .line 301
    if-nez p1, :cond_21

    const/4 v0, 0x1

    :goto_15
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->newElementArray(I)[Ljava/util/Hashtable$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    .line 302
    iput p2, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 303
    invoke-direct {p0}, Ljava/util/Hashtable;->computeMaxSize()V

    .line 307
    return-void

    :cond_21
    move v0, p1

    .line 301
    goto :goto_15

    .line 305
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    const/16 v0, 0xb

    :goto_9
    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 319
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 320
    return-void

    .line 318
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xb

    goto :goto_9
.end method

.method private computeMaxSize()V
    .registers 3

    .prologue
    .line 368
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 369
    return-void
.end method

.method private newElementArray(I)[Ljava/util/Hashtable$Entry;
    .registers 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    new-array v0, p1, [Ljava/util/Hashtable$Entry;

    return-object v0
.end method

.method private static newEntry(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/Hashtable$Entry;
    .registers 4
    .parameter
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;I)",
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/util/Hashtable$Entry;

    invoke-direct {v0, p0, p1}, Ljava/util/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 933
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 934
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 935
    .local v5, length:I
    invoke-direct {p0, v5}, Ljava/util/Hashtable;->newElementArray(I)[Ljava/util/Hashtable$Entry;

    move-result-object v6

    iput-object v6, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    .line 936
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    iput v6, p0, Ljava/util/Hashtable;->elementCount:I

    .line 937
    iget v2, p0, Ljava/util/Hashtable;->elementCount:I

    .local v2, i:I
    :goto_15
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_46

    .line 938
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 939
    .local v4, key:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 940
    .local v1, hash:I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    rem-int v3, v6, v5

    .line 941
    .local v3, index:I
    iget v6, p0, Ljava/util/Hashtable;->firstSlot:I

    if-ge v3, v6, :cond_2d

    .line 942
    iput v3, p0, Ljava/util/Hashtable;->firstSlot:I

    .line 944
    :cond_2d
    iget v6, p0, Ljava/util/Hashtable;->lastSlot:I

    if-le v3, v6, :cond_33

    .line 945
    iput v3, p0, Ljava/util/Hashtable;->lastSlot:I

    .line 947
    :cond_33
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6, v1}, Ljava/util/Hashtable;->newEntry(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/Hashtable$Entry;

    move-result-object v0

    .line 948
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget-object v6, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v6, v6, v3

    iput-object v6, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    .line 949
    iget-object v6, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aput-object v0, v6, v3

    goto :goto_15

    .line 951
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v3           #index:I
    .end local v4           #key:Ljava/lang/Object;
    :cond_46
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 918
    iget-object v2, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 919
    iget v2, p0, Ljava/util/Hashtable;->elementCount:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 920
    iget-object v2, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v1, v2

    .local v1, i:I
    :cond_12
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_29

    .line 921
    iget-object v2, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v2, v1

    .line 922
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_1a
    if-eqz v0, :cond_12

    .line 923
    iget-object v2, v0, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 924
    iget-object v2, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 925
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2b

    goto :goto_1a

    .line 928
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_29
    monitor-exit p0

    return-void

    .line 917
    .end local v1           #i:I
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 336
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/util/Hashtable;->elementCount:I

    .line 337
    iget-object v0, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable;->modCount:I
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 339
    monitor-exit p0

    return-void

    .line 336
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 353
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 354
    .local v2, hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    invoke-virtual {v4}, [Ljava/util/Hashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Hashtable$Entry;

    iput-object v4, v2, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    .line 356
    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v3, v4

    .local v3, i:I
    :cond_14
    :goto_14
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2e

    .line 357
    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v1, v4, v3

    .local v1, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    if-eqz v1, :cond_14

    .line 358
    iget-object v5, v2, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    invoke-virtual {v1}, Ljava/util/Hashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable$Entry;

    aput-object v4, v5, v3
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_30
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_28} :catch_29

    goto :goto_14

    .line 362
    .end local v1           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v2           #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .end local v3           #i:I
    :catch_29
    move-exception v4

    move-object v0, v4

    .line 363
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v4, 0x0

    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :goto_2c
    monitor-exit p0

    return-object v4

    .restart local v2       #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .restart local v3       #i:I
    :cond_2e
    move-object v4, v2

    .line 361
    goto :goto_2c

    .line 353
    .end local v2           #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .end local v3           #i:I
    :catchall_30
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "value"

    .prologue
    .line 384
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    if-nez p1, :cond_c

    .line 385
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 384
    :catchall_9
    move-exception v2

    monitor-exit p0

    throw v2

    .line 388
    :cond_c
    :try_start_c
    iget-object v2, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v1, v2

    .local v1, i:I
    :cond_f
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_27

    .line 389
    iget-object v2, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v2, v1

    .line 390
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_f

    .line 391
    iget-object v2, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_9

    move-result v2

    if-eqz v2, :cond_24

    .line 392
    const/4 v2, 0x1

    .line 397
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_22
    monitor-exit p0

    return v2

    .line 394
    .restart local v0       #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_24
    :try_start_24
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_9

    goto :goto_17

    .line 397
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_27
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 413
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->getEntry(Ljava/lang/Object;)Ljava/util/Hashtable$Entry;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 426
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->elementCount:I

    if-nez v0, :cond_9

    .line 444
    sget-object v0, Ljava/util/Hashtable;->EMPTY_ENUMERATION:Ljava/util/Enumeration;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    .line 446
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/Hashtable$HashEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$HashEnumerator;-><init>(Ljava/util/Hashtable;Z)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 443
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    new-instance v1, Ljava/util/Hashtable$2;

    invoke-direct {v1, p0}, Ljava/util/Hashtable$2;-><init>(Ljava/util/Hashtable;)V

    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 524
    monitor-enter p0

    if-ne p0, p1, :cond_8

    move v5, v8

    .line 541
    :goto_6
    monitor-exit p0

    return v5

    .line 527
    :cond_8
    :try_start_8
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_3e

    .line 528
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 529
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v5, v6, :cond_1c

    move v5, v7

    .line 530
    goto :goto_6

    .line 533
    :cond_1c
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 534
    .local v2, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 535
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_40

    move-result v5

    if-nez v5, :cond_28

    move v5, v7

    .line 536
    goto :goto_6

    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_3c
    move v5, v8

    .line 539
    goto :goto_6

    .end local v2           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_3e
    move v5, v7

    .line 541
    goto :goto_6

    .line 524
    :catchall_40
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 558
    .local v1, hash:I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v4, v4

    rem-int v2, v3, v4

    .line 559
    .local v2, index:I
    iget-object v3, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v3, v2

    .line 560
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_12
    if-eqz v0, :cond_21

    .line 561
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable$Entry;->equalsKey(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 562
    iget-object v3, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_23

    .line 566
    :goto_1c
    monitor-exit p0

    return-object v3

    .line 564
    :cond_1e
    :try_start_1e
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_23

    goto :goto_12

    .line 566
    :cond_21
    const/4 v3, 0x0

    goto :goto_1c

    .line 557
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/Hashtable$Entry;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 571
    .local v1, hash:I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v4, v4

    rem-int v2, v3, v4

    .line 572
    .local v2, index:I
    iget-object v3, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v3, v2

    .line 573
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_11
    if-eqz v0, :cond_1e

    .line 574
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable$Entry;->equalsKey(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v3, v0

    .line 579
    :goto_1a
    return-object v3

    .line 577
    :cond_1b
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    goto :goto_11

    .line 579
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public declared-synchronized hashCode()I
    .registers 10

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x0

    .line 584
    monitor-enter p0

    const/4 v4, 0x0

    .line 585
    .local v4, result:I
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 586
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 587
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 588
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 589
    .local v3, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 590
    .local v5, value:Ljava/lang/Object;
    if-eq v3, p0, :cond_31

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_25
    if-eq v5, p0, :cond_35

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_39

    move-result v7

    :goto_2d
    xor-int v1, v6, v7

    .line 593
    .local v1, hash:I
    add-int/2addr v4, v1

    .line 594
    goto :goto_b

    .end local v1           #hash:I
    :cond_31
    move v6, v8

    .line 590
    goto :goto_25

    :cond_33
    move v7, v8

    goto :goto_2d

    :cond_35
    move v7, v8

    goto :goto_2d

    .line 595
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3           #key:Ljava/lang/Object;
    .end local v5           #value:Ljava/lang/Object;
    :cond_37
    monitor-exit p0

    return v4

    .line 584
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :catchall_39
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 608
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->elementCount:I
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

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    new-instance v1, Ljava/util/Hashtable$3;

    invoke-direct {v1, p0}, Ljava/util/Hashtable$3;-><init>(Ljava/util/Hashtable;)V

    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->elementCount:I

    if-nez v0, :cond_9

    .line 626
    sget-object v0, Ljava/util/Hashtable;->EMPTY_ENUMERATION:Ljava/util/Enumeration;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    .line 628
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/Hashtable$HashEnumerator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$HashEnumerator;-><init>(Ljava/util/Hashtable;Z)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 625
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const v6, 0x7fffffff

    .line 701
    monitor-enter p0

    if-eqz p1, :cond_61

    if-eqz p2, :cond_61

    .line 702
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 703
    .local v1, hash:I
    and-int v4, v1, v6

    iget-object v5, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 704
    .local v2, index:I
    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v4, v2

    .line 705
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_22

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable$Entry;->equalsKey(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 706
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    goto :goto_17

    .line 708
    :cond_22
    if-nez v0, :cond_5b

    .line 709
    iget v4, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable;->modCount:I

    .line 710
    iget v4, p0, Ljava/util/Hashtable;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable;->elementCount:I

    iget v5, p0, Ljava/util/Hashtable;->threshold:I

    if-le v4, v5, :cond_3e

    .line 711
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 712
    and-int v4, v1, v6

    iget-object v5, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 714
    :cond_3e
    iget v4, p0, Ljava/util/Hashtable;->firstSlot:I

    if-ge v2, v4, :cond_44

    .line 715
    iput v2, p0, Ljava/util/Hashtable;->firstSlot:I

    .line 717
    :cond_44
    iget v4, p0, Ljava/util/Hashtable;->lastSlot:I

    if-le v2, v4, :cond_4a

    .line 718
    iput v2, p0, Ljava/util/Hashtable;->lastSlot:I

    .line 720
    :cond_4a
    invoke-static {p1, p2, v1}, Ljava/util/Hashtable;->newEntry(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/Hashtable$Entry;

    move-result-object v0

    .line 721
    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v4, v4, v2

    iput-object v4, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    .line 722
    iget-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aput-object v0, v4, v2
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_67

    .line 723
    const/4 v4, 0x0

    .line 727
    :goto_59
    monitor-exit p0

    return-object v4

    .line 725
    :cond_5b
    :try_start_5b
    iget-object v3, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    .line 726
    .local v3, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    move-object v4, v3

    .line 727
    goto :goto_59

    .line 729
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #result:Ljava/lang/Object;,"TV;"
    :cond_61
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_67

    .line 701
    :catchall_67
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 741
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_9

    .line 740
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .line 743
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_24
    monitor-exit p0

    return-void
.end method

.method protected rehash()V
    .registers 11

    .prologue
    .line 752
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    iget-object v8, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v8, 0x1

    .line 753
    .local v3, length:I
    if-nez v3, :cond_a

    .line 754
    const/4 v3, 0x1

    .line 756
    :cond_a
    move v5, v3

    .line 757
    .local v5, newFirst:I
    const/4 v6, -0x1

    .line 758
    .local v6, newLast:I
    invoke-direct {p0, v3}, Ljava/util/Hashtable;->newElementArray(I)[Ljava/util/Hashtable$Entry;

    move-result-object v4

    .line 759
    .local v4, newData:[Ljava/util/Hashtable$Entry;,"[Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget v8, p0, Ljava/util/Hashtable;->lastSlot:I

    add-int/lit8 v1, v8, 0x1

    .local v1, i:I
    :cond_14
    add-int/lit8 v1, v1, -0x1

    iget v8, p0, Ljava/util/Hashtable;->firstSlot:I

    if-lt v1, v8, :cond_3a

    .line 760
    iget-object v8, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v8, v1

    .line 761
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_1e
    if-eqz v0, :cond_14

    .line 762
    invoke-virtual {v0}, Ljava/util/Hashtable$Entry;->getKeyHash()I

    move-result v8

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    rem-int v2, v8, v3

    .line 763
    .local v2, index:I
    if-ge v2, v5, :cond_2d

    .line 764
    move v5, v2

    .line 766
    :cond_2d
    if-le v2, v6, :cond_30

    .line 767
    move v6, v2

    .line 769
    :cond_30
    iget-object v7, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    .line 770
    .local v7, next:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    aget-object v8, v4, v2

    iput-object v8, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    .line 771
    aput-object v0, v4, v2

    .line 772
    move-object v0, v7

    .line 773
    goto :goto_1e

    .line 775
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v2           #index:I
    .end local v7           #next:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_3a
    iput v5, p0, Ljava/util/Hashtable;->firstSlot:I

    .line 776
    iput v6, p0, Ljava/util/Hashtable;->lastSlot:I

    .line 777
    iput-object v4, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    .line 778
    invoke-direct {p0}, Ljava/util/Hashtable;->computeMaxSize()V

    .line 779
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v7, 0x0

    .line 795
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 796
    .local v1, hash:I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    iget-object v6, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    array-length v6, v6

    rem-int v2, v5, v6

    .line 797
    .local v2, index:I
    const/4 v3, 0x0

    .line 798
    .local v3, last:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget-object v5, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v0, v5, v2

    .line 799
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_20

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable$Entry;->equalsKey(Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_20

    .line 800
    move-object v3, v0

    .line 801
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    goto :goto_14

    .line 803
    :cond_20
    if-eqz v0, :cond_46

    .line 804
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 805
    if-nez v3, :cond_3e

    .line 806
    iget-object v5, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget-object v6, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    aput-object v6, v5, v2

    .line 810
    :goto_30
    iget v5, p0, Ljava/util/Hashtable;->elementCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->elementCount:I

    .line 811
    iget-object v4, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    .line 812
    .local v4, result:Ljava/lang/Object;,"TV;"
    const/4 v5, 0x0

    iput-object v5, v0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_43

    move-object v5, v4

    .line 815
    .end local v4           #result:Ljava/lang/Object;,"TV;"
    :goto_3c
    monitor-exit p0

    return-object v5

    .line 808
    :cond_3e
    :try_start_3e
    iget-object v5, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    iput-object v5, v3, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_30

    .line 795
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #last:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0       #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #index:I
    .restart local v3       #last:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_46
    move-object v5, v7

    .line 815
    goto :goto_3c
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 828
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const-string v3, "luni.04"

    const-string v3, ")"

    const-string v3, "("

    .line 839
    monitor-enter p0

    :try_start_7
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 840
    const-string v3, "{}"
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_6f

    .line 870
    :goto_f
    monitor-exit p0

    return-object v3

    .line 843
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1c

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 844
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 845
    iget v2, p0, Ljava/util/Hashtable;->lastSlot:I

    .local v2, i:I
    :goto_23
    iget v3, p0, Ljava/util/Hashtable;->firstSlot:I

    if-lt v2, v3, :cond_98

    .line 846
    iget-object v3, p0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    aget-object v1, v3, v2

    .line 847
    .local v1, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :goto_2b
    if-eqz v1, :cond_95

    .line 848
    iget-object v3, v1, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    if-eq v3, p0, :cond_4c

    .line 849
    iget-object v3, v1, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 854
    :goto_36
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    iget-object v3, v1, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    if-eq v3, p0, :cond_72

    .line 856
    iget-object v3, v1, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 861
    :goto_44
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget-object v1, v1, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    goto :goto_2b

    .line 852
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "luni.04"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6e
    .catchall {:try_start_11 .. :try_end_6e} :catchall_6f

    goto :goto_36

    .line 839
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v2           #i:I
    :catchall_6f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 859
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v1       #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .restart local v2       #i:I
    :cond_72
    :try_start_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "luni.04"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 845
    :cond_95
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 866
    .end local v1           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_98
    iget v3, p0, Ljava/util/Hashtable;->elementCount:I

    if-lez v3, :cond_a5

    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 869
    :cond_a5
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_72 .. :try_end_ad} :catchall_6f

    move-result-object v3

    goto/16 :goto_f
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    new-instance v1, Ljava/util/Hashtable$4;

    invoke-direct {v1, p0}, Ljava/util/Hashtable$4;-><init>(Ljava/util/Hashtable;)V

    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method
