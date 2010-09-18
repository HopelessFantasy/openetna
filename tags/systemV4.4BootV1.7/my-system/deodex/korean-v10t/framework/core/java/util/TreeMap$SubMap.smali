.class final Ljava/util/TreeMap$SubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
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
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field private backingMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field endKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

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

.field hasEnd:Z

.field hasStart:Z

.field startKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/TreeMap;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, start:Ljava/lang/Object;,"TK;"
    .local p2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$SubMap;->entrySet:Ljava/util/Set;

    .line 314
    iput-object p2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    .line 316
    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    .line 317
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap",
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, start:Ljava/lang/Object;,"TK;"
    .local p2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p3, end:Ljava/lang/Object;,"TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$SubMap;->entrySet:Ljava/util/Set;

    .line 320
    iput-object p2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    iput-boolean v0, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    .line 322
    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    .line 323
    iput-object p3, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    .line 324
    return-void
.end method

.method constructor <init>(Ljava/util/TreeMap;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, end:Ljava/lang/Object;,"TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$SubMap;->entrySet:Ljava/util/Set;

    .line 327
    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    .line 329
    iput-object p2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    .line 330
    return-void
.end method

.method static synthetic access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 302
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/TreeMap$SubMap;Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->isInRange(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkLowerBound(Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 386
    iget-boolean v1, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v1, :cond_2a

    .line 387
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 388
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_1e

    .line 389
    invoke-static {p1}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1c

    move v1, v3

    .line 393
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_1b
    return v1

    .restart local v0       #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_1c
    move v1, v4

    .line 389
    goto :goto_1b

    .line 391
    :cond_1e
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_28

    move v1, v3

    goto :goto_1b

    :cond_28
    move v1, v4

    goto :goto_1b

    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_2a
    move v1, v3

    .line 393
    goto :goto_1b
.end method

.method private checkRange(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 334
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_30

    .line 335
    invoke-static {p1}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 336
    .local v1, object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1e

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 339
    :cond_1e
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_60

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_60

    .line 340
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 343
    .end local v1           #object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    :cond_30
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_48

    .line 345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 347
    :cond_48
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_60

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_60

    .line 348
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 351
    :cond_60
    return-void
.end method

.method private checkUpperBound(Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 375
    iget-boolean v1, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v1, :cond_2a

    .line 376
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 377
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_1e

    .line 378
    invoke-static {p1}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1c

    move v1, v3

    .line 382
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_1b
    return v1

    .restart local v0       #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_1c
    move v1, v4

    .line 378
    goto :goto_1b

    .line 380
    :cond_1e
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_28

    move v1, v3

    goto :goto_1b

    :cond_28
    move v1, v4

    goto :goto_1b

    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_2a
    move v1, v3

    .line 382
    goto :goto_1b
.end method

.method private isInRange(Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v3, 0x0

    .line 354
    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 355
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_29

    .line 356
    invoke-static {p1}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 357
    .local v1, object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1b

    move v2, v3

    .line 371
    .end local v1           #object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    :goto_1a
    return v2

    .line 360
    .restart local v1       #object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    :cond_1b
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_45

    move v2, v3

    .line 361
    goto :goto_1a

    .line 364
    .end local v1           #object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    :cond_29
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_37

    move v2, v3

    .line 365
    goto :goto_1a

    .line 367
    :cond_37
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_45

    move v2, v3

    .line 368
    goto :goto_1a

    .line 371
    :cond_45
    const/4 v2, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 403
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->isInRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 404
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 406
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
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
    .line 411
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 412
    new-instance v0, Ljava/util/TreeMap$SubMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$SubMapEntrySet;-><init>(Ljava/util/TreeMap$SubMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$SubMap;->entrySet:Ljava/util/Set;

    .line 414
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method firstEntry()Ljava/util/TreeMap$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 426
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-nez v2, :cond_16

    .line 427
    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v1, v2, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 428
    .local v1, root:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-nez v1, :cond_d

    move-object v2, v4

    .line 434
    .end local v1           #root:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_c
    return-object v2

    .line 428
    .restart local v1       #root:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_d
    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v2, v2, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-static {v2}, Ljava/util/TreeMap;->minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_c

    .line 430
    .end local v1           #root:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_16
    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->findAfter(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 431
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_2a

    iget-object v2, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v2}, Ljava/util/TreeMap$SubMap;->checkUpperBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object v2, v0

    .line 432
    goto :goto_c

    :cond_2a
    move-object v2, v4

    .line 434
    goto :goto_c
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$SubMap;->firstEntry()Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 419
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 420
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v1

    .line 422
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->isInRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 441
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, endKey:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->checkRange(Ljava/lang/Object;)V

    .line 448
    iget-boolean v0, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v0, :cond_11

    .line 449
    new-instance v0, Ljava/util/TreeMap$SubMap;

    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-direct {v0, v1, v2, p1}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V

    .line 451
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/util/TreeMap$SubMap;

    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-direct {v0, v1, p1}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public isEmpty()Z
    .registers 6

    .prologue
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    iget-boolean v1, p0, Ljava/util/TreeMap$SubMap;->hasStart:Z

    if-eqz v1, :cond_1c

    .line 457
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->startKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->findAfter(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 458
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_18

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/TreeMap$SubMap;->checkUpperBound(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_18
    move v1, v4

    .line 460
    .end local v0           #node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_19
    return v1

    .restart local v0       #node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_1a
    move v1, v3

    .line 458
    goto :goto_19

    .line 460
    .end local v0           #node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_1c
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->findBefore(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v4

    goto :goto_19

    :cond_28
    move v1, v3

    goto :goto_19
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
    .line 465
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 466
    new-instance v0, Ljava/util/TreeMap$SubMapKeySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$SubMapKeySet;-><init>(Ljava/util/TreeMap$SubMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$SubMap;->keySet:Ljava/util/Set;

    .line 468
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    iget-boolean v1, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-nez v1, :cond_b

    .line 473
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    .line 477
    :goto_a
    return-object v1

    .line 475
    :cond_b
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->findBefore(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 476
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_20

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/TreeMap$SubMap;->checkLowerBound(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 477
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    goto :goto_a

    .line 479
    :cond_20
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
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
    .line 484
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->isInRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 485
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 487
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->isInRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 494
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 496
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    .local p2, endKey:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->checkRange(Ljava/lang/Object;)V

    .line 501
    invoke-direct {p0, p2}, Ljava/util/TreeMap$SubMap;->checkRange(Ljava/lang/Object;)V

    .line 502
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 503
    .local v0, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_20

    .line 504
    invoke-static {p1}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2e

    .line 505
    new-instance v1, Ljava/util/TreeMap$SubMap;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-direct {v1, p1, v2, p2}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V

    .line 509
    :goto_1f
    return-object v1

    .line 508
    :cond_20
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2e

    .line 509
    new-instance v1, Ljava/util/TreeMap$SubMap;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-direct {v1, p1, v2, p2}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V

    goto :goto_1f

    .line 512
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$SubMap;->checkRange(Ljava/lang/Object;)V

    .line 517
    iget-boolean v0, p0, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v0, :cond_11

    .line 518
    new-instance v0, Ljava/util/TreeMap$SubMap;

    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V

    .line 520
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/util/TreeMap$SubMap;

    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->backingMap:Ljava/util/TreeMap;

    invoke-direct {v0, p1, v1}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;)V

    goto :goto_10
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
    .line 525
    .local p0, this:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 526
    new-instance v0, Ljava/util/TreeMap$SubMapValuesCollection;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$SubMapValuesCollection;-><init>(Ljava/util/TreeMap$SubMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$SubMap;->valuesCollection:Ljava/util/Collection;

    .line 528
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$SubMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
