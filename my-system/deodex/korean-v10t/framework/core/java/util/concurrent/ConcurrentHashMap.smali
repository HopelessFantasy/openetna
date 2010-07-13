.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$SimpleEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentHashMap$Values;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySet;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;
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
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static DEFAULT_INITIAL_CAPACITY:I = 0x0

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final DEFAULT_SEGMENTS:I = 0x10

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/16 v0, 0x10

    sput v0, Ljava/util/concurrent/ConcurrentHashMap;->DEFAULT_INITIAL_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 588
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->DEFAULT_INITIAL_CAPACITY:I

    const/high16 v1, 0x3f40

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 589
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .line 580
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x3f40

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 581
    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 11
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "concurrencyLevel"

    .prologue
    .line 539
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 540
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_c

    if-ltz p1, :cond_c

    if-gtz p3, :cond_12

    .line 541
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 543
    :cond_12
    const/high16 v5, 0x1

    if-le p3, v5, :cond_18

    .line 544
    const/high16 p3, 0x1

    .line 547
    :cond_18
    const/4 v3, 0x0

    .line 548
    .local v3, sshift:I
    const/4 v4, 0x1

    .line 549
    .local v4, ssize:I
    :goto_1a
    if-ge v4, p3, :cond_21

    .line 550
    add-int/lit8 v3, v3, 0x1

    .line 551
    shl-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 553
    :cond_21
    const/16 v5, 0x20

    sub-int/2addr v5, v3

    iput v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    .line 554
    const/4 v5, 0x1

    sub-int v5, v4, v5

    iput v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    .line 555
    new-array v5, v4, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 557
    const/high16 v5, 0x4000

    if-le p1, v5, :cond_35

    .line 558
    const/high16 p1, 0x4000

    .line 559
    :cond_35
    div-int v0, p1, v4

    .line 560
    .local v0, c:I
    mul-int v5, v0, v4

    if-ge v5, p1, :cond_3d

    .line 561
    add-int/lit8 v0, v0, 0x1

    .line 562
    :cond_3d
    const/4 v1, 0x1

    .line 563
    .local v1, cap:I
    :goto_3e
    if-ge v1, v0, :cond_43

    .line 564
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 566
    :cond_43
    const/4 v2, 0x0

    .local v2, i:I
    :goto_44
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_55

    .line 567
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v6, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v2

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 568
    :cond_55
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, t:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    const/high16 v2, 0x3f40

    .line 598
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 601
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 602
    return-void
.end method

.method static hash(Ljava/lang/Object;)I
    .registers 3
    .parameter "x"

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 146
    .local v0, h:I
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 147
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 148
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 149
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 150
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1336
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v3, v3

    if-ge v0, v3, :cond_19

    .line 1340
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 1339
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1349
    .local v1, key:Ljava/lang/Object;,"TK;"
    .local v2, value:Ljava/lang/Object;,"TV;"
    :cond_16
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .end local v1           #key:Ljava/lang/Object;,"TK;"
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_19
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1346
    .restart local v1       #key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1347
    .restart local v2       #value:Ljava/lang/Object;,"TV;"
    if-nez v1, :cond_16

    .line 1351
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1307
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1309
    const/4 v2, 0x0

    .local v2, k:I
    :goto_5
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_36

    .line 1310
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v5, v2

    .line 1311
    .local v3, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 1313
    :try_start_11
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1314
    .local v4, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v5, v4

    if-ge v1, v5, :cond_2b

    .line 1315
    aget-object v0, v4, v1

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_28

    .line 1316
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1317
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1315
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_31

    goto :goto_19

    .line 1314
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1321
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2b
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 1309
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1321
    .end local v1           #i:I
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_31
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v5

    .line 1324
    .end local v3           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_36
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1325
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1326
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 919
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 920
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->clear()V

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 921
    :cond_10
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 755
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 694
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 695
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 11
    .parameter "value"

    .prologue
    .line 710
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 711
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 713
    :cond_8
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 714
    .local v5, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    array-length v7, v5

    new-array v3, v7, [I

    .line 716
    .local v3, mc:[I
    :cond_d
    const/4 v6, 0x0

    .line 717
    .local v6, sum:I
    const/4 v4, 0x0

    .line 718
    .local v4, mcsum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v7, v5

    if-ge v2, v7, :cond_2b

    .line 719
    aget-object v7, v5, v2

    iget v0, v7, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 720
    .local v0, c:I
    aget-object v7, v5, v2

    iget v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v7, v3, v2

    add-int/2addr v4, v7

    .line 721
    aget-object v7, v5, v2

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 722
    const/4 v7, 0x1

    .line 735
    .end local v0           #c:I
    :goto_27
    return v7

    .line 718
    .restart local v0       #c:I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 724
    .end local v0           #c:I
    :cond_2b
    const/4 v1, 0x1

    .line 725
    .local v1, cleanSweep:Z
    if-eqz v4, :cond_3f

    .line 726
    const/4 v2, 0x0

    :goto_2f
    array-length v7, v5

    if-ge v2, v7, :cond_3f

    .line 727
    aget-object v7, v5, v2

    iget v0, v7, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 728
    .restart local v0       #c:I
    aget v7, v3, v2

    aget-object v8, v5, v2

    iget v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v7, v8, :cond_43

    .line 729
    const/4 v1, 0x0

    .line 734
    .end local v0           #c:I
    :cond_3f
    if-eqz v1, :cond_d

    .line 735
    const/4 v7, 0x0

    goto :goto_27

    .line 726
    .restart local v0       #c:I
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
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
    .line 1008
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 1009
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_5
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 679
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 680
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 8

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 606
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 616
    .local v3, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    array-length v4, v3

    new-array v1, v4, [I

    .line 617
    .local v1, mc:[I
    const/4 v2, 0x0

    .line 618
    .local v2, mcsum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_1d

    .line 619
    aget-object v4, v3, v0

    iget v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v4, :cond_13

    move v4, v6

    .line 634
    :goto_12
    return v4

    .line 622
    :cond_13
    aget-object v4, v3, v0

    iget v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v4, v1, v0

    add-int/2addr v2, v4

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 627
    :cond_1d
    if-eqz v2, :cond_36

    .line 628
    const/4 v0, 0x0

    :goto_20
    array-length v4, v3

    if-ge v0, v4, :cond_36

    .line 629
    aget-object v4, v3, v0

    iget v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-nez v4, :cond_31

    aget v4, v1, v0

    aget-object v5, v3, v0

    iget v5, v5, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v4, v5, :cond_33

    :cond_31
    move v4, v6

    .line 631
    goto :goto_12

    .line 628
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 634
    :cond_36
    const/4 v4, 0x1

    goto :goto_12
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
    .line 963
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 964
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_5
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 775
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 776
    :cond_8
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 777
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
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
    .line 824
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, t:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 825
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 826
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 828
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 808
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 809
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 810
    :cond_8
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 811
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 842
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 862
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 863
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 909
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 910
    :cond_8
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 911
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 885
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    if-eqz p2, :cond_4

    if-nez p3, :cond_a

    .line 886
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 887
    :cond_a
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 888
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .registers 5
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 10

    .prologue
    .line 639
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 640
    .local v4, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    array-length v7, v4

    new-array v2, v7, [I

    .line 642
    .local v2, mc:[I
    :cond_5
    const-wide/16 v5, 0x0

    .line 643
    .local v5, sum:J
    const/4 v3, 0x0

    .line 644
    .local v3, mcsum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v7, v4

    if-ge v1, v7, :cond_1c

    .line 645
    aget-object v7, v4, v1

    iget v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 646
    aget-object v7, v4, v1

    iget v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v7, v2, v1

    add-int/2addr v3, v7

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 648
    :cond_1c
    const/4 v0, 0x0

    .line 649
    .local v0, check:I
    if-eqz v3, :cond_31

    .line 650
    const/4 v1, 0x0

    :goto_20
    array-length v7, v4

    if-ge v1, v7, :cond_31

    .line 651
    aget-object v7, v4, v1

    iget v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/2addr v0, v7

    .line 652
    aget v7, v2, v1

    aget-object v8, v4, v1

    iget v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v7, v8, :cond_41

    .line 653
    const/4 v0, -0x1

    .line 658
    :cond_31
    int-to-long v7, v0

    cmp-long v7, v7, v5

    if-nez v7, :cond_5

    .line 659
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-lez v7, :cond_44

    .line 660
    const v7, 0x7fffffff

    .line 662
    :goto_40
    return v7

    .line 650
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 662
    :cond_44
    long-to-int v7, v5

    goto :goto_40
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
    .line 985
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    .line 986
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Values;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$Values;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_5
.end method
