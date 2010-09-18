.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$LinkedHashMapEntry;,
        Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field private transient head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "s"

    .prologue
    .line 82
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 85
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5
    .parameter "s"
    .parameter "lf"

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 103
    iput-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 104
    iput-object v1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 105
    return-void
.end method

.method public constructor <init>(IFZ)V
    .registers 5
    .parameter "s"
    .parameter "lf"
    .parameter "order"

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 127
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 128
    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 129
    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 130
    return-void
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
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 142
    iput-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 143
    iput-object v1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 144
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object p1
.end method

.method static synthetic access$102(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 625
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->internalClear()V

    .line 626
    return-void
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
    .line 317
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-direct {v0, p1, p3}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .local v0, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v1, v1, p2

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    .line 319
    iget-object v1, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    aput-object v0, v1, p2

    .line 320
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->linkEntry(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 321
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
    .line 325
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-direct {v0, p1, p3}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(Ljava/lang/Object;I)V

    .line 326
    .local v0, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v1, v1, p2

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    .line 327
    iget-object v1, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    aput-object v0, v1, p2

    .line 328
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->linkEntry(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 329
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
    .line 464
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 282
    if-nez p1, :cond_d

    .line 283
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->findNullKeyEntry()Ljava/util/HashMap$Entry;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 289
    .local v2, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_9
    if-nez v2, :cond_21

    move-object v5, v7

    .line 309
    :goto_c
    return-object v5

    .line 285
    .end local v2           #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 286
    .local v0, hash:I
    const v5, 0x7fffffff

    and-int/2addr v5, v0

    iget-object v6, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v6, v6

    rem-int v1, v5, v6

    .line 287
    .local v1, index:I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/LinkedHashMap;->findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .restart local v2       #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    goto :goto_9

    .line 292
    .end local v0           #hash:I
    .end local v1           #index:I
    :cond_21
    iget-boolean v5, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v5, :cond_45

    iget-object v5, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v5, v2, :cond_45

    .line 294
    iget v5, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 296
    iget-object v4, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 297
    .local v4, p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v3, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 298
    .local v3, n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iput-object v4, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 299
    if-eqz v4, :cond_48

    .line 300
    iput-object v3, v4, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 304
    :goto_39
    iput-object v7, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 305
    iget-object v5, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v5, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 306
    iget-object v5, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v2, v5, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 307
    iput-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 309
    .end local v3           #n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .end local v4           #p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_45
    iget-object v5, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    goto :goto_c

    .line 302
    .restart local v3       #n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .restart local v4       #p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_48
    iput-object v3, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_39
.end method

.method internalClear()V
    .registers 2

    .prologue
    .line 630
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->internalClear()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 632
    return-void
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
    .line 477
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 478
    new-instance v0, Ljava/util/LinkedHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$1;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    .line 513
    :cond_b
    iget-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method linkEntry(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 402
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-ne v2, p1, :cond_6

    .line 452
    :cond_5
    :goto_5
    return-void

    .line 406
    :cond_6
    iget-object v2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v2, :cond_f

    .line 408
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_5

    .line 414
    :cond_f
    iget-object v1, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 415
    .local v1, p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 416
    .local v0, n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-nez v1, :cond_39

    .line 417
    if-eqz v0, :cond_2c

    .line 419
    iget-boolean v2, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v2, :cond_5

    .line 420
    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 421
    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 422
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v2, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 423
    iput-object v3, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 424
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 425
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_5

    .line 429
    :cond_2c
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v2, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 430
    iput-object v3, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 431
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 432
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_5

    .line 437
    :cond_39
    if-eqz v0, :cond_5

    .line 443
    iget-boolean v2, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v2, :cond_5

    .line 444
    iput-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 445
    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 446
    iput-object v3, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 447
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v2, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 448
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 449
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_5
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
    .line 267
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, result:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 350
    iget-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_13
    return-object v0
.end method

.method putImpl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v8, 0x0

    const v7, 0x7fffffff

    const/4 v6, 0x0

    .line 358
    iget v4, p0, Ljava/util/LinkedHashMap;->elementCount:I

    if-nez v4, :cond_d

    .line 359
    iput-object v8, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v8, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 361
    :cond_d
    if-nez p1, :cond_39

    .line 362
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->findNullKeyEntry()Ljava/util/HashMap$Entry;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 363
    .local v2, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-nez v2, :cond_35

    .line 364
    iget v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 369
    iget v4, p0, Ljava/util/LinkedHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedHashMap;->elementCount:I

    iget v5, p0, Ljava/util/LinkedHashMap;->threshold:I

    if-le v4, v5, :cond_2a

    .line 370
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->rehash()V

    .line 372
    :cond_2a
    invoke-virtual {p0, v8, v6, v6}, Ljava/util/LinkedHashMap;->createHashedEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v2

    .end local v2           #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 392
    .restart local v2       #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_30
    iget-object v3, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    .line 393
    .local v3, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    .line 394
    return-object v3

    .line 374
    .end local v3           #result:Ljava/lang/Object;,"TV;"
    :cond_35
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->linkEntry(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    goto :goto_30

    .line 377
    .end local v2           #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 378
    .local v0, hash:I
    and-int v4, v0, v7

    iget-object v5, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v5, v5

    rem-int v1, v4, v5

    .line 379
    .local v1, index:I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/LinkedHashMap;->findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 380
    .restart local v2       #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-nez v2, :cond_6d

    .line 381
    iget v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 382
    iget v4, p0, Ljava/util/LinkedHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedHashMap;->elementCount:I

    iget v5, p0, Ljava/util/LinkedHashMap;->threshold:I

    if-le v4, v5, :cond_66

    .line 383
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->rehash()V

    .line 384
    and-int v4, v0, v7

    iget-object v5, p0, Ljava/util/LinkedHashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v5, v5

    rem-int v1, v4, v5

    .line 386
    :cond_66
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/LinkedHashMap;->createHashedEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v2

    .end local v2           #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .restart local v2       #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    goto :goto_30

    .line 388
    :cond_6d
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->linkEntry(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    goto :goto_30
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->removeEntry(Ljava/lang/Object;)Ljava/util/HashMap$Entry;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 582
    .local v0, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-nez v0, :cond_a

    .line 583
    const/4 v3, 0x0

    .line 597
    :goto_9
    return-object v3

    .line 585
    :cond_a
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 586
    .local v2, p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 587
    .local v1, n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-eqz v2, :cond_19

    .line 588
    iput-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 592
    :goto_12
    if-eqz v1, :cond_1c

    .line 593
    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 597
    :goto_16
    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    goto :goto_9

    .line 590
    :cond_19
    iput-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_12

    .line 595
    :cond_1c
    iput-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_16
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

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
    .line 540
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 541
    new-instance v0, Ljava/util/LinkedHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$2;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->valuesCollection:Ljava/util/Collection;

    .line 567
    :cond_b
    iget-object v0, p0, Ljava/util/LinkedHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
