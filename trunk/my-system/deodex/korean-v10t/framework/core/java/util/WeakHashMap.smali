.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$Entry;
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
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 190
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 191
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 203
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 204
    if-ltz p1, :cond_22

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 206
    if-nez p1, :cond_20

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 207
    const/16 v0, 0x1d4c

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 208
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 209
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 213
    return-void

    :cond_20
    move v0, p1

    .line 206
    goto :goto_b

    .line 211
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 228
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 229
    if-ltz p1, :cond_2a

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2a

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 231
    if-nez p1, :cond_28

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 232
    const v0, 0x461c4000

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 233
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 234
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 238
    return-void

    :cond_28
    move v0, p1

    .line 231
    goto :goto_10

    .line 236
    :cond_2a
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
    .line 249
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    const/16 v0, 0xb

    :goto_9
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 250
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 251
    return-void

    .line 249
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_9
.end method

.method private computeMaxSize()V
    .registers 5

    .prologue
    .line 273
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 274
    return-void
.end method

.method private static newEntryArray(I)[Ljava/util/WeakHashMap$Entry;
    .registers 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-array v0, p0, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
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
    .line 725
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 726
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 728
    :cond_9
    return-void
.end method

.method private rehash()V
    .registers 9

    .prologue
    .line 637
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    shl-int/lit8 v3, v6, 0x1

    .line 638
    .local v3, length:I
    if-nez v3, :cond_8

    .line 639
    const/4 v3, 0x1

    .line 641
    :cond_8
    invoke-static {v3}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 642
    .local v4, newData:[Ljava/util/WeakHashMap$Entry;,"[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_34

    .line 643
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v6, v1

    .line 644
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_16
    if-eqz v0, :cond_31

    .line 645
    iget-boolean v6, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    move v2, v6

    .line 647
    .local v2, index:I
    :goto_1e
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 648
    .local v5, next:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aget-object v6, v4, v2

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 649
    aput-object v0, v4, v2

    .line 650
    move-object v0, v5

    .line 651
    goto :goto_16

    .line 645
    .end local v2           #index:I
    .end local v5           #next:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_28
    iget v6, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v3

    move v2, v6

    goto :goto_1e

    .line 642
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 653
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_34
    iput-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 654
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 655
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 262
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-lez v0, :cond_1b

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 264
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 266
    :cond_13
    iget-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_13

    .line 270
    :cond_1b
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 287
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 522
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 523
    if-eqz p1, :cond_2a

    .line 524
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v3

    .local v1, i:I
    :cond_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4a

    .line 525
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 526
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_11
    if-eqz v0, :cond_9

    .line 527
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 528
    .local v2, key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_1d

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_27

    :cond_1d
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v3, v4

    .line 547
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :goto_26
    return v3

    .line 532
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    :cond_27
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 533
    goto :goto_11

    .line 536
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_2a
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v3

    .restart local v1       #i:I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4a

    .line 537
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 538
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_35
    if-eqz v0, :cond_2d

    .line 539
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 540
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_41

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_47

    :cond_41
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_47

    move v3, v4

    .line 541
    goto :goto_26

    .line 543
    :cond_47
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 544
    goto :goto_35

    .line 547
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_4a
    const/4 v3, 0x0

    goto :goto_26
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
    .line 301
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 302
    new-instance v0, Ljava/util/WeakHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$1;-><init>(Ljava/util/WeakHashMap;)V

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
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 467
    if-eqz p1, :cond_2b

    .line 468
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v3, v3

    rem-int v1, v2, v3

    .line 469
    .local v1, index:I
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v2, v1

    .line 470
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_29

    .line 471
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 472
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 485
    .end local v1           #index:I
    :goto_25
    return-object v2

    .line 474
    .restart local v1       #index:I
    :cond_26
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_17

    :cond_29
    move-object v2, v4

    .line 476
    goto :goto_25

    .line 478
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_2b
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 479
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_30
    if-eqz v0, :cond_3c

    .line 480
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_39

    .line 481
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_25

    .line 483
    :cond_39
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_30

    :cond_3c
    move-object v2, v4

    .line 485
    goto :goto_25
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 489
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 490
    if-eqz p1, :cond_2a

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v3, v3

    rem-int v1, v2, v3

    .line 492
    .local v1, index:I
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v2, v1

    .line 493
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_28

    .line 494
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object v2, v0

    .line 508
    .end local v1           #index:I
    :goto_24
    return-object v2

    .line 497
    .restart local v1       #index:I
    :cond_25
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_17

    :cond_28
    move-object v2, v4

    .line 499
    goto :goto_24

    .line 501
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_2a
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 502
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2f
    if-eqz v0, :cond_3a

    .line 503
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_37

    move-object v2, v0

    .line 504
    goto :goto_24

    .line 506
    :cond_37
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2f

    :cond_3a
    move-object v2, v4

    .line 508
    goto :goto_24
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 558
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 360
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 361
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_e

    .line 362
    new-instance v0, Ljava/util/WeakHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$2;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 397
    :cond_e
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method poll()V
    .registers 3

    .prologue
    .line 564
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    .local v0, toRemove:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 565
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    goto :goto_0

    .line 567
    :cond_e
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 604
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 605
    const/4 v1, 0x0

    .line 607
    .local v1, index:I
    if-eqz p1, :cond_27

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 609
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 610
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_18
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 611
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_18

    .line 614
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_27
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v5

    .line 615
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2b
    if-eqz v0, :cond_34

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_34

    .line 616
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2b

    .line 619
    :cond_34
    if-nez v0, :cond_6a

    .line 620
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 621
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v3, v4, :cond_4c

    .line 622
    invoke-direct {p0}, Ljava/util/WeakHashMap;->rehash()V

    .line 623
    if-nez p1, :cond_5f

    move v1, v5

    .line 626
    :cond_4c
    :goto_4c
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 627
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v3, v3, v1

    iput-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 628
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aput-object v0, v3, v1

    .line 629
    const/4 v3, 0x0

    .line 633
    :goto_5e
    return-object v3

    .line 623
    :cond_5f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int/2addr v3, v4

    move v1, v3

    goto :goto_4c

    .line 631
    :cond_6a
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 632
    .local v2, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    move-object v3, v2

    .line 633
    goto :goto_5e
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 669
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 682
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 683
    const/4 v1, 0x0

    .line 684
    .local v1, index:I
    const/4 v2, 0x0

    .line 685
    .local v2, last:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_28

    .line 686
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 687
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 688
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_18
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 689
    move-object v2, v0

    .line 690
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_18

    .line 693
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_28
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 694
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2d
    if-eqz v0, :cond_37

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_37

    .line 695
    move-object v2, v0

    .line 696
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2d

    .line 699
    :cond_37
    if-eqz v0, :cond_55

    .line 700
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 701
    if-nez v2, :cond_50

    .line 702
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 706
    :goto_47
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 707
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 709
    :goto_4f
    return-object v3

    .line 704
    :cond_50
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_47

    .line 709
    :cond_55
    const/4 v3, 0x0

    goto :goto_4f
.end method

.method removeEntry(Ljava/util/WeakHashMap$Entry;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, toRemove:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 571
    .local v2, last:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, p1, Ljava/util/WeakHashMap$Entry;->hash:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 572
    .local v1, index:I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 575
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_10
    if-eqz v0, :cond_28

    .line 576
    if-ne p1, v0, :cond_2e

    .line 577
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 578
    if-nez v2, :cond_29

    .line 579
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 583
    :goto_22
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 589
    :cond_28
    return-void

    .line 581
    :cond_29
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_22

    .line 586
    :cond_2e
    move-object v2, v0

    .line 587
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_10
.end method

.method public size()I
    .registers 2

    .prologue
    .line 720
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 721
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

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
    .line 424
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 425
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_e

    .line 426
    new-instance v0, Ljava/util/WeakHashMap$3;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$3;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    .line 452
    :cond_e
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
