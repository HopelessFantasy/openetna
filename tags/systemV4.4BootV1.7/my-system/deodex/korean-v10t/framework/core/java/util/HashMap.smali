.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$HashMapEntrySet;,
        Ljava/util/HashMap$HashMapIterator;,
        Ljava/util/HashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient elementCount:I

.field transient elementData:[Ljava/util/HashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field transient modCount:I

.field threshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 242
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 243
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 254
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 43
    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 255
    if-ltz p1, :cond_1d

    .line 256
    iput v0, p0, Ljava/util/HashMap;->elementCount:I

    .line 257
    if-nez p1, :cond_1b

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->newElementArray(I)[Ljava/util/HashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    .line 258
    const/high16 v0, 0x3f40

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 259
    invoke-direct {p0}, Ljava/util/HashMap;->computeMaxSize()V

    .line 263
    return-void

    :cond_1b
    move v0, p1

    .line 257
    goto :goto_d

    .line 261
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .registers 5
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 278
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 43
    iput v1, p0, Ljava/util/HashMap;->modCount:I

    .line 279
    if-ltz p1, :cond_20

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_20

    .line 280
    iput v1, p0, Ljava/util/HashMap;->elementCount:I

    .line 281
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->newElementArray(I)[Ljava/util/HashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    .line 282
    iput p2, p0, Ljava/util/HashMap;->loadFactor:F

    .line 283
    invoke-direct {p0}, Ljava/util/HashMap;->computeMaxSize()V

    .line 287
    return-void

    :cond_1e
    move v0, p1

    .line 281
    goto :goto_12

    .line 285
    :cond_20
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
    .line 298
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    const/16 v0, 0xb

    :goto_9
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 299
    invoke-direct {p0, p1}, Ljava/util/HashMap;->putAllImpl(Ljava/util/Map;)V

    .line 300
    return-void

    .line 298
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_9
.end method

.method private computeMaxSize()V
    .registers 3

    .prologue
    .line 357
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Ljava/util/HashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 358
    return-void
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    iget v3, p0, Ljava/util/HashMap;->elementCount:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    add-int v0, v3, v4

    .line 628
    .local v0, capacity:I
    iget v3, p0, Ljava/util/HashMap;->threshold:I

    if-le v0, v3, :cond_f

    .line 629
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->rehash(I)V

    .line 631
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 632
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljava/util/HashMap;->putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 634
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_2f
    return-void
.end method

.method private putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const v7, 0x7fffffff

    const/4 v6, 0x0

    .line 568
    if-nez p1, :cond_28

    .line 569
    invoke-virtual {p0}, Ljava/util/HashMap;->findNullKeyEntry()Ljava/util/HashMap$Entry;

    move-result-object v0

    .line 570
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    if-nez v0, :cond_23

    .line 571
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap;->modCount:I

    .line 572
    iget v4, p0, Ljava/util/HashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap;->elementCount:I

    iget v5, p0, Ljava/util/HashMap;->threshold:I

    if-le v4, v5, :cond_1f

    .line 573
    invoke-virtual {p0}, Ljava/util/HashMap;->rehash()V

    .line 575
    :cond_1f
    invoke-virtual {p0, p1, v6, v6}, Ljava/util/HashMap;->createHashedEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v0

    .line 591
    :cond_23
    :goto_23
    iget-object v3, v0, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    .line 592
    .local v3, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    .line 593
    return-object v3

    .line 578
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .end local v3           #result:Ljava/lang/Object;,"TV;"
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 579
    .local v1, hash:I
    and-int v4, v1, v7

    iget-object v5, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 580
    .local v2, index:I
    invoke-virtual {p0, p1, v2, v1}, Ljava/util/HashMap;->findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v0

    .line 581
    .restart local v0       #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    if-nez v0, :cond_23

    .line 582
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap;->modCount:I

    .line 583
    iget v4, p0, Ljava/util/HashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap;->elementCount:I

    iget v5, p0, Ljava/util/HashMap;->threshold:I

    if-le v4, v5, :cond_53

    .line 584
    invoke-virtual {p0}, Ljava/util/HashMap;->rehash()V

    .line 585
    and-int v4, v1, v7

    iget-object v5, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 587
    :cond_53
    invoke-virtual {p0, p1, v2, v1}, Ljava/util/HashMap;->createHashedEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v0

    goto :goto_23
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 790
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 791
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 792
    .local v3, length:I
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->newElementArray(I)[Ljava/util/HashMap$Entry;

    move-result-object v4

    iput-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    .line 793
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    iput v4, p0, Ljava/util/HashMap;->elementCount:I

    .line 794
    iget v0, p0, Ljava/util/HashMap;->elementCount:I

    .local v0, i:I
    :goto_15
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_34

    .line 795
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 796
    .local v2, key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_29

    const/4 v4, 0x0

    move v1, v4

    .line 798
    .local v1, index:I
    :goto_21
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v4}, Ljava/util/HashMap;->createEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/HashMap$Entry;

    goto :goto_15

    .line 796
    .end local v1           #index:I
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    rem-int/2addr v4, v3

    move v1, v4

    goto :goto_21

    .line 800
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_34
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 776
    iget-object v2, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 777
    iget v2, p0, Ljava/util/HashMap;->elementCount:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 778
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 779
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 780
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap$Entry;

    .line 781
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<**>;"
    iget-object v2, v0, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 782
    iget-object v2, v0, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 783
    iget-object v2, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_16

    .line 785
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<**>;"
    :cond_2f
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 312
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->internalClear()V

    .line 313
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 336
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 337
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v4, v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->newElementArray(I)[Ljava/util/HashMap$Entry;

    move-result-object v4

    iput-object v4, v3, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    .line 338
    invoke-virtual {v3}, Ljava/util/HashMap;->internalClear()V

    .line 340
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v4, v4

    if-ge v2, v4, :cond_42

    .line 341
    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v1, v4, v2

    .local v1, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    if-eqz v1, :cond_3f

    .line 342
    invoke-virtual {v1}, Ljava/util/HashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/HashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;->putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :goto_29
    iget-object v4, v1, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    if-eqz v4, :cond_3f

    .line 344
    iget-object v1, v1, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 345
    invoke-virtual {v1}, Ljava/util/HashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/HashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;->putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_29

    .line 351
    .end local v1           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .end local v2           #i:I
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    :catch_3b
    move-exception v4

    move-object v0, v4

    .line 352
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v4, 0x0

    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :goto_3e
    return-object v4

    .line 340
    .restart local v1       #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .restart local v2       #i:I
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v1           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_42
    move-object v4, v3

    .line 350
    goto :goto_3e
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 7
    .parameter "key"

    .prologue
    .line 372
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_a

    .line 373
    invoke-virtual {p0}, Ljava/util/HashMap;->findNullKeyEntry()Ljava/util/HashMap$Entry;

    move-result-object v2

    .line 379
    .local v2, m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_6
    if-eqz v2, :cond_1c

    const/4 v3, 0x1

    :goto_9
    return v3

    .line 375
    .end local v2           #m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 376
    .local v0, hash:I
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 377
    .local v1, index:I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/HashMap;->findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v2

    .restart local v2       #m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    goto :goto_6

    .line 379
    .end local v0           #hash:I
    .end local v1           #index:I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 6
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x1

    .line 393
    if-eqz p1, :cond_1d

    .line 394
    iget-object v2, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v1, v2

    .local v1, i:I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_33

    .line 395
    iget-object v2, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v0, v2, v1

    .line 396
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_e
    if-eqz v0, :cond_6

    .line 397
    iget-object v2, v0, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v3

    .line 414
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_19
    return v2

    .line 400
    .restart local v0       #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_1a
    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_e

    .line 404
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .end local v1           #i:I
    :cond_1d
    iget-object v2, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v1, v2

    .restart local v1       #i:I
    :cond_20
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_33

    .line 405
    iget-object v2, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v0, v2, v1

    .line 406
    .restart local v0       #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_28
    if-eqz v0, :cond_20

    .line 407
    iget-object v2, v0, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_30

    move v2, v3

    .line 408
    goto :goto_19

    .line 410
    :cond_30
    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_28

    .line 414
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_33
    const/4 v2, 0x0

    goto :goto_19
.end method

.method createEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/HashMap$Entry;
    .registers 6
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/util/HashMap$Entry;

    invoke-direct {v0, p1, p3}, Ljava/util/HashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v1, v1, p2

    iput-object v1, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 599
    iget-object v1, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aput-object v0, v1, p2

    .line 600
    return-object v0
.end method

.method createHashedEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;
    .registers 6
    .parameter
    .parameter "index"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/util/HashMap$Entry;

    invoke-direct {v0, p1, p3}, Ljava/util/HashMap$Entry;-><init>(Ljava/lang/Object;I)V

    .line 605
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v1, v1, p2

    iput-object v1, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 606
    iget-object v1, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aput-object v0, v1, p2

    .line 607
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
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
    .line 427
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$HashMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/HashMap$HashMapEntrySet;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method final findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;
    .registers 8
    .parameter "key"
    .parameter "index"
    .parameter "keyHash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v2, v3, p2

    .line 459
    .local v2, m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_21

    .line 460
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 461
    .local v1, keyString:Ljava/lang/String;
    :goto_c
    if-eqz v2, :cond_31

    .line 462
    iget v3, v2, Ljava/util/HashMap$Entry;->origKeyHash:I

    if-ne v3, p3, :cond_1c

    .line 463
    iget-object v3, v2, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v3, v2

    .line 479
    .end local v1           #keyString:Ljava/lang/String;
    :goto_1b
    return-object v3

    .line 467
    .restart local v1       #keyString:Ljava/lang/String;
    :cond_1c
    iget-object v2, v2, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_c

    .line 476
    .end local v1           #keyString:Ljava/lang/String;
    :cond_1f
    iget-object v2, v2, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 470
    :cond_21
    if-eqz v2, :cond_31

    .line 471
    iget v3, v2, Ljava/util/HashMap$Entry;->origKeyHash:I

    if-ne v3, p3, :cond_1f

    .line 472
    iget-object v3, v2, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v3, v2

    .line 473
    goto :goto_1b

    .line 479
    :cond_31
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method final findNullKeyEntry()Ljava/util/HashMap$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 485
    .local v0, m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_5
    if-eqz v0, :cond_e

    iget-object v1, v0, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 486
    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_5

    .line 487
    :cond_e
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 442
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_b

    .line 443
    invoke-virtual {p0}, Ljava/util/HashMap;->findNullKeyEntry()Ljava/util/HashMap$Entry;

    move-result-object v2

    .line 449
    .local v2, m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_6
    if-eqz v2, :cond_1d

    .line 450
    iget-object v3, v2, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    .line 452
    :goto_a
    return-object v3

    .line 445
    .end local v2           #m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 446
    .local v0, hash:I
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 447
    .local v1, index:I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/HashMap;->findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v2

    .restart local v2       #m:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    goto :goto_6

    .line 452
    .end local v0           #hash:I
    .end local v1           #index:I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_a
.end method

.method internalClear()V
    .registers 3

    .prologue
    .line 316
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->elementCount:I

    if-lez v0, :cond_13

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->elementCount:I

    .line 318
    iget-object v0, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 321
    :cond_13
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 500
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->elementCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 514
    new-instance v0, Ljava/util/HashMap$1;

    invoke-direct {v0, p0}, Ljava/util/HashMap$1;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 547
    :cond_b
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method newElementArray(I)[Ljava/util/HashMap$Entry;
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/HashMap$Entry;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 622
    invoke-direct {p0, p1}, Ljava/util/HashMap;->putAllImpl(Ljava/util/Map;)V

    .line 624
    :cond_9
    return-void
.end method

.method rehash()V
    .registers 2

    .prologue
    .line 655
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->rehash(I)V

    .line 656
    return-void
.end method

.method rehash(I)V
    .registers 10
    .parameter "capacity"

    .prologue
    .line 637
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_26

    const/4 v6, 0x1

    move v3, v6

    .line 639
    .local v3, length:I
    :goto_4
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->newElementArray(I)[Ljava/util/HashMap$Entry;

    move-result-object v4

    .line 640
    .local v4, newData:[Ljava/util/HashMap$Entry;,"[Ljava/util/HashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v6, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_2d

    .line 641
    iget-object v6, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v0, v6, v1

    .line 642
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_12
    if-eqz v0, :cond_2a

    .line 643
    iget v6, v0, Ljava/util/HashMap$Entry;->origKeyHash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int v2, v6, v3

    .line 644
    .local v2, index:I
    iget-object v5, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 645
    .local v5, next:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    aget-object v6, v4, v2

    iput-object v6, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 646
    aput-object v0, v4, v2

    .line 647
    move-object v0, v5

    .line 648
    goto :goto_12

    .line 637
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #length:I
    .end local v4           #newData:[Ljava/util/HashMap$Entry;,"[Ljava/util/HashMap$Entry<TK;TV;>;"
    .end local v5           #next:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_26
    shl-int/lit8 v6, p1, 0x1

    move v3, v6

    goto :goto_4

    .line 640
    .restart local v0       #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v4       #newData:[Ljava/util/HashMap$Entry;,"[Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 650
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :cond_2d
    iput-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    .line 651
    invoke-direct {p0}, Ljava/util/HashMap;->computeMaxSize()V

    .line 652
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->removeEntry(Ljava/lang/Object;)Ljava/util/HashMap$Entry;

    move-result-object v0

    .line 670
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 671
    iget-object v1, v0, Ljava/util/HashMap$Entry;->value:Ljava/lang/Object;

    .line 673
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method removeEntry(Ljava/lang/Object;)Ljava/util/HashMap$Entry;
    .registers 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 679
    .local v2, index:I
    const/4 v3, 0x0

    .line 680
    .local v3, last:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_27

    .line 681
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 682
    .local v1, hash:I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    iget-object v5, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 683
    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v0, v4, v2

    .line 684
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_15
    if-eqz v0, :cond_36

    iget v4, v0, Ljava/util/HashMap$Entry;->origKeyHash:I

    if-ne v4, v1, :cond_23

    iget-object v4, v0, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 685
    :cond_23
    move-object v3, v0

    .line 686
    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_15

    .line 689
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .end local v1           #hash:I
    :cond_27
    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 690
    .restart local v0       #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    :goto_2c
    if-eqz v0, :cond_36

    iget-object v4, v0, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    if-eqz v4, :cond_36

    .line 691
    move-object v3, v0

    .line 692
    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_2c

    .line 695
    :cond_36
    if-nez v0, :cond_3a

    .line 696
    const/4 v4, 0x0

    .line 705
    :goto_39
    return-object v4

    .line 698
    :cond_3a
    if-nez v3, :cond_50

    .line 699
    iget-object v4, p0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    iget-object v5, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    aput-object v5, v4, v2

    .line 703
    :goto_42
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap;->modCount:I

    .line 704
    iget v4, p0, Ljava/util/HashMap;->elementCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/util/HashMap;->elementCount:I

    move-object v4, v0

    .line 705
    goto :goto_39

    .line 701
    :cond_50
    iget-object v4, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    iput-object v4, v3, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_42
.end method

.method public size()I
    .registers 2

    .prologue
    .line 716
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->elementCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 744
    new-instance v0, Ljava/util/HashMap$2;

    invoke-direct {v0, p0}, Ljava/util/HashMap$2;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->valuesCollection:Ljava/util/Collection;

    .line 771
    :cond_b
    iget-object v0, p0, Ljava/util/HashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
