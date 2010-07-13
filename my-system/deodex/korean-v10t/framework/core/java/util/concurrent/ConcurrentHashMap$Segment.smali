.class final Ljava/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field transient modCount:I

.field transient table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

.field transient threshold:I


# direct methods
.method constructor <init>(IF)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "lf"

    .prologue
    .line 243
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 244
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 245
    new-array v0, p1, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 246
    return-void
.end method


# virtual methods
.method clear()V
    .registers 4

    .prologue
    .line 490
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 492
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 493
    .local v1, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 494
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 495
    :cond_f
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 496
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 498
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 500
    return-void

    .line 498
    .end local v0           #i:I
    .end local v1           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_1c
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 8
    .parameter "key"
    .parameter "hash"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v4, 0x1

    .line 275
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v3, :cond_20

    .line 276
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 277
    .local v2, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v3, v2

    sub-int/2addr v3, v4

    and-int v1, p2, v3

    .line 278
    .local v1, index:I
    aget-object v0, v2, v1

    .line 279
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_d
    if-eqz v0, :cond_20

    .line 280
    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v3, p2, :cond_1d

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 285
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #index:I
    .end local v2           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_1c
    return v3

    .line 282
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #index:I
    .restart local v2       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1d
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_d

    .line 285
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #index:I
    .end local v2           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .line 289
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v4, :cond_1e

    .line 290
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 291
    .local v3, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v2, v3

    .line 292
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1e

    .line 293
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_c
    if-eqz v0, :cond_1b

    .line 294
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 295
    const/4 v4, 0x1

    .line 297
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_17
    return v4

    .line 293
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_18
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_c

    .line 292
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 297
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1e
    const/4 v4, 0x0

    goto :goto_17
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v3, :cond_21

    .line 262
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 263
    .local v2, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int v1, p2, v3

    .line 264
    .local v1, index:I
    aget-object v0, v2, v1

    .line 265
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_d
    if-eqz v0, :cond_21

    .line 266
    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v3, p2, :cond_1e

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 267
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 271
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #index:I
    .end local v2           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_1d
    return-object v3

    .line 268
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #index:I
    .restart local v2       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_d

    .line 271
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #index:I
    .end local v2           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_21
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 359
    :try_start_3
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 360
    .local v0, c:I
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 361
    .local v5, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int v3, p2, v6

    .line 362
    .local v3, index:I
    aget-object v2, v5, v3

    .line 364
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_f
    if-eqz v1, :cond_33

    .line 365
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v6, p2, :cond_30

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 366
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 367
    .local v4, oldValue:Ljava/lang/Object;,"TV;"
    if-nez p4, :cond_23

    .line 368
    iput-object p3, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 369
    :cond_23
    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 370
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_54

    .line 383
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    move-object v6, v4

    .end local v4           #oldValue:Ljava/lang/Object;,"TV;"
    :goto_2f
    return-object v6

    .line 364
    :cond_30
    :try_start_30
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_f

    .line 375
    :cond_33
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v6, p2, p1, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    aput-object v6, v5, v3

    .line 376
    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 378
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 379
    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v6, :cond_4f

    .line 380
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->rehash([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_54

    .line 381
    :cond_4f
    const/4 v6, 0x0

    .line 383
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    goto :goto_2f

    .end local v0           #c:I
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v5           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_54
    move-exception v6

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v6
.end method

.method rehash([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .registers 20
    .parameter "oldTable"

    .prologue
    .line 388
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0

    .line 389
    .local v10, oldCapacity:I
    const/high16 v13, 0x4000

    if-lt v10, v13, :cond_b

    move-object/from16 v13, p1

    .line 447
    :goto_a
    return-object v13

    .line 406
    :cond_b
    shl-int/lit8 v13, v10, 0x1

    new-array v8, v13, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 407
    .local v8, newTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v13, v8

    const/4 v14, 0x1

    sub-int v12, v13, v14

    .line 408
    .local v12, sizeMask:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v10, :cond_55

    .line 411
    aget-object v1, p1, v2

    .line 413
    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v1, :cond_24

    .line 414
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 415
    .local v9, next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget v13, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    and-int v3, v13, v12

    .line 418
    .local v3, idx:I
    if-nez v9, :cond_27

    .line 419
    aput-object v1, v8, v3

    .line 408
    .end local v3           #idx:I
    .end local v9           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 423
    .restart local v3       #idx:I
    .restart local v9       #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_27
    move-object v7, v1

    .line 424
    .local v7, lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move v6, v3

    .line 425
    .local v6, lastIdx:I
    move-object v5, v9

    .line 426
    .local v5, last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_2a
    if-eqz v5, :cond_37

    .line 428
    iget v13, v5, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    and-int v4, v13, v12

    .line 429
    .local v4, k:I
    if-eq v4, v6, :cond_34

    .line 430
    move v6, v4

    .line 431
    move-object v7, v5

    .line 427
    :cond_34
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_2a

    .line 434
    .end local v4           #k:I
    :cond_37
    aput-object v7, v8, v6

    .line 437
    move-object v11, v1

    .local v11, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_3a
    if-eq v11, v7, :cond_24

    .line 438
    iget v13, v11, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    and-int v4, v13, v12

    .line 439
    .restart local v4       #k:I
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget v14, v11, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v15, v11, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object v0, v11

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    aget-object v17, v8, v4

    invoke-direct/range {v13 .. v17}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    aput-object v13, v8, v4

    .line 437
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_3a

    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #idx:I
    .end local v4           #k:I
    .end local v5           #last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v6           #lastIdx:I
    .end local v7           #lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v9           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v11           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_55
    move-object v13, v8

    .line 447
    goto :goto_a
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .parameter "key"
    .parameter "hash"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 456
    :try_start_3
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 457
    .local v0, c:I
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 458
    .local v8, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    and-int v3, p2, v9

    .line 459
    .local v3, index:I
    aget-object v2, v8, v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_5b

    .line 461
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 463
    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_f
    if-nez v1, :cond_16

    .line 464
    const/4 v9, 0x0

    .line 485
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    :goto_15
    return-object v9

    .line 465
    :cond_16
    :try_start_16
    iget v9, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v9, p2, :cond_31

    iget-object v9, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 470
    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 471
    .local v6, oldValue:Ljava/lang/Object;,"TV;"
    if-eqz p3, :cond_34

    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_5b

    move-result v9

    if-nez v9, :cond_34

    .line 472
    const/4 v9, 0x0

    .line 485
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    goto :goto_15

    .line 467
    .end local v6           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_31
    :try_start_31
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_f

    .line 476
    .restart local v6       #oldValue:Ljava/lang/Object;,"TV;"
    :cond_34
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 477
    .local v4, newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v7, v2

    .local v7, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v5, v4

    .end local v4           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local v5, newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_38
    if-eq v7, v1, :cond_49

    .line 478
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget v9, v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v4, v9, v10, v11, v5}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 477
    .end local v5           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v4       #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v5, v4

    .end local v4           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v5       #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    goto :goto_38

    .line 480
    :cond_49
    aput-object v5, v8, v3

    .line 481
    iget v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 482
    const/4 v9, 0x1

    sub-int v9, v0, v9

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_5b

    .line 485
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    move-object v9, v6

    goto :goto_15

    .end local v0           #c:I
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v5           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v6           #oldValue:Ljava/lang/Object;,"TV;"
    .end local v7           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v8           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_5b
    move-exception v9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v9
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 332
    :try_start_3
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 333
    .local v0, c:I
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 334
    .local v4, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int v3, p2, v6

    .line 335
    .local v3, index:I
    aget-object v2, v4, v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_30

    .line 336
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 338
    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_f
    if-nez v1, :cond_16

    .line 339
    const/4 v6, 0x0

    .line 351
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    :goto_15
    return-object v6

    .line 340
    :cond_16
    :try_start_16
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v6, p2, :cond_2d

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 345
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 346
    .local v5, v:Ljava/lang/Object;,"TV;"
    iput-object p3, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 347
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_30

    .line 351
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    move-object v6, v5

    goto :goto_15

    .line 342
    .end local v5           #v:Ljava/lang/Object;,"TV;"
    :cond_2d
    :try_start_2d
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_30

    goto :goto_f

    .line 351
    .end local v0           #c:I
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_30
    move-exception v6

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v6
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 301
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 303
    :try_start_5
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 304
    .local v0, c:I
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 305
    .local v4, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v6, v4

    sub-int/2addr v6, v8

    and-int v3, p2, v6

    .line 306
    .local v3, index:I
    aget-object v2, v4, v3
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3e

    .line 307
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 309
    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_10
    if-nez v1, :cond_17

    .line 325
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    move v6, v7

    :goto_16
    return v6

    .line 311
    :cond_17
    :try_start_17
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v6, p2, :cond_32

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 316
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 317
    .local v5, v:Ljava/lang/Object;,"TV;"
    if-eqz v5, :cond_2d

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_3e

    move-result v6

    if-nez v6, :cond_35

    .line 325
    :cond_2d
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    move v6, v7

    goto :goto_16

    .line 313
    .end local v5           #v:Ljava/lang/Object;,"TV;"
    :cond_32
    :try_start_32
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_10

    .line 320
    .restart local v5       #v:Ljava/lang/Object;,"TV;"
    :cond_35
    iput-object p4, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 321
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3e

    .line 325
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    move v6, v8

    goto :goto_16

    .end local v0           #c:I
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v5           #v:Ljava/lang/Object;,"TV;"
    :catchall_3e
    move-exception v6

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v6
.end method

.method setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .registers 4
    .parameter "newTable"

    .prologue
    .line 253
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 254
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 255
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 256
    return-void
.end method
