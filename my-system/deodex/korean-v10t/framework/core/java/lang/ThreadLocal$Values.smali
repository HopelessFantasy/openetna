.class Ljava/lang/ThreadLocal$Values;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10

.field private static final TOMBSTONE:Ljava/lang/Object;


# instance fields
.field private clean:I

.field private mask:I

.field private maximumLoad:I

.field private size:I

.field private table:[Ljava/lang/Object;

.field private tombstones:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    .line 181
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 182
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal$Values;)V
    .registers 3
    .parameter "fromParent"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iget-object v0, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 190
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->mask:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    .line 191
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->size:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 192
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 193
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    .line 194
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->clean:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    .line 195
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$Values;->inheritValues(Ljava/lang/ThreadLocal$Values;)V

    .line 196
    return-void
.end method

.method static synthetic access$000(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/ThreadLocal$Values;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    return v0
.end method

.method private cleanUp()V
    .registers 9

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->rehash()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 291
    :cond_6
    :goto_6
    return-void

    .line 259
    :cond_7
    iget v6, p0, Ljava/lang/ThreadLocal$Values;->size:I

    if-eqz v6, :cond_6

    .line 266
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    .line 267
    .local v2, index:I
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 268
    .local v5, table:[Ljava/lang/Object;
    array-length v1, v5

    .local v1, counter:I
    :goto_10
    if-lez v1, :cond_41

    .line 270
    aget-object v3, v5, v2

    .line 272
    .local v3, k:Ljava/lang/Object;
    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-eq v3, v6, :cond_1a

    if-nez v3, :cond_21

    .line 268
    :cond_1a
    :goto_1a
    shr-int/lit8 v1, v1, 0x1

    .line 269
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v2

    goto :goto_10

    .line 278
    :cond_21
    move-object v0, v3

    check-cast v0, Ljava/lang/ref/Reference;

    move-object v4, v0

    .line 280
    .local v4, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a

    .line 282
    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 283
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 284
    iget v6, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 285
    iget v6, p0, Ljava/lang/ThreadLocal$Values;->size:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1a

    .line 290
    .end local v3           #k:Ljava/lang/Object;
    .end local v4           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    :cond_41
    iput v2, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    goto :goto_6
.end method

.method private inheritValues(Ljava/lang/ThreadLocal$Values;)V
    .registers 13
    .parameter "fromParent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 204
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 205
    .local v5, table:[Ljava/lang/Object;
    array-length v6, v5

    const/4 v7, 0x2

    sub-int v1, v6, v7

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_5b

    .line 206
    aget-object v2, v5, v1

    .line 208
    .local v2, k:Ljava/lang/Object;
    if-eqz v2, :cond_12

    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v6, :cond_15

    .line 205
    :cond_12
    :goto_12
    add-int/lit8 v1, v1, -0x2

    goto :goto_8

    .line 214
    :cond_15
    move-object v0, v2

    check-cast v0, Ljava/lang/ref/Reference;

    move-object v4, v0

    .line 217
    .local v4, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Ljava/lang/InheritableThreadLocal<*>;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/InheritableThreadLocal;

    .line 218
    .local v3, key:Ljava/lang/InheritableThreadLocal;
    if-eqz v3, :cond_30

    .line 222
    add-int/lit8 v6, v1, 0x1

    iget-object v7, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/InheritableThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_12

    .line 225
    :cond_30
    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v6, v5, v1

    .line 226
    add-int/lit8 v6, v1, 0x1

    aput-object v10, v5, v6

    .line 227
    iget-object v6, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    sget-object v7, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v7, v6, v1

    .line 228
    iget-object v6, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    aput-object v10, v6, v7

    .line 230
    iget v6, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 231
    iget v6, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 233
    iget v6, p0, Ljava/lang/ThreadLocal$Values;->size:I

    sub-int/2addr v6, v9

    iput v6, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 234
    iget v6, p1, Ljava/lang/ThreadLocal$Values;->size:I

    sub-int/2addr v6, v9

    iput v6, p1, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_12

    .line 237
    .end local v2           #k:Ljava/lang/Object;
    .end local v3           #key:Ljava/lang/InheritableThreadLocal;
    .end local v4           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Ljava/lang/InheritableThreadLocal<*>;>;"
    :cond_5b
    return-void
.end method

.method private initializeTable(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 243
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    .line 246
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    .line 247
    return-void
.end method

.method private next(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 530
    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private rehash()Z
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 301
    iget v8, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v9, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/2addr v8, v9

    iget v9, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    if-ge v8, v9, :cond_d

    move v8, v11

    .line 356
    :goto_c
    return v8

    .line 305
    :cond_d
    iget-object v8, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v8, v8

    shr-int/lit8 v1, v8, 0x1

    .line 313
    .local v1, capacity:I
    move v5, v1

    .line 315
    .local v5, newCapacity:I
    iget v8, p0, Ljava/lang/ThreadLocal$Values;->size:I

    shr-int/lit8 v9, v1, 0x1

    if-le v8, v9, :cond_1b

    .line 318
    shl-int/lit8 v5, v1, 0x1

    .line 321
    :cond_1b
    iget-object v6, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 324
    .local v6, oldTable:[Ljava/lang/Object;
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    .line 327
    iput v11, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 330
    iget v8, p0, Ljava/lang/ThreadLocal$Values;->size:I

    if-nez v8, :cond_28

    move v8, v10

    .line 331
    goto :goto_c

    .line 335
    :cond_28
    array-length v8, v6

    const/4 v9, 0x2

    sub-int v2, v8, v9

    .local v2, i:I
    :goto_2c
    if-ltz v2, :cond_53

    .line 336
    aget-object v3, v6, v2

    .line 337
    .local v3, k:Ljava/lang/Object;
    if-eqz v3, :cond_36

    sget-object v8, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v3, v8, :cond_39

    .line 335
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x2

    goto :goto_2c

    .line 344
    :cond_39
    move-object v0, v3

    check-cast v0, Ljava/lang/ref/Reference;

    move-object v7, v0

    .line 346
    .local v7, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 347
    .local v4, key:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<*>;"
    if-eqz v4, :cond_4d

    .line 349
    add-int/lit8 v8, v2, 0x1

    aget-object v8, v6, v8

    invoke-virtual {p0, v4, v8}, Ljava/lang/ThreadLocal$Values;->add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_36

    .line 352
    :cond_4d
    iget v8, p0, Ljava/lang/ThreadLocal$Values;->size:I

    sub-int/2addr v8, v10

    iput v8, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_36

    .end local v3           #k:Ljava/lang/Object;
    .end local v4           #key:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<*>;"
    .end local v7           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    :cond_53
    move v8, v10

    .line 356
    goto :goto_c
.end method


# virtual methods
.method add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, key:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<*>;"
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v0, v2, v3

    .line 366
    .local v0, index:I
    :goto_8
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 367
    .local v1, k:Ljava/lang/Object;
    if-nez v1, :cond_1d

    .line 368
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v3

    aput-object v3, v2, v0

    .line 369
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    .line 370
    return-void

    .line 365
    :cond_1d
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v0

    goto :goto_8
.end method

.method getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, key:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<*>;"
    const/4 v7, -0x1

    .line 424
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 425
    .local v3, table:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v5

    iget v6, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v1, v5, v6

    .line 428
    .local v1, index:I
    aget-object v5, v3, v1

    if-nez v5, :cond_35

    .line 429
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v4

    .line 432
    .local v4, value:Ljava/lang/Object;
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    if-ne v5, v3, :cond_30

    aget-object v5, v3, v1

    if-nez v5, :cond_30

    .line 433
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v1

    .line 434
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    .line 435
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 437
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    move-object v5, v4

    .line 490
    .end local v4           #value:Ljava/lang/Object;
    :goto_2f
    return-object v5

    .line 442
    .restart local v4       #value:Ljava/lang/Object;
    :cond_30
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    move-object v5, v4

    .line 443
    goto :goto_2f

    .line 448
    .end local v4           #value:Ljava/lang/Object;
    :cond_35
    const/4 v0, -0x1

    .line 451
    .local v0, firstTombstone:I
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    .line 452
    :goto_3a
    aget-object v2, v3, v1

    .line 453
    .local v2, reference:Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    if-ne v2, v5, :cond_47

    .line 454
    add-int/lit8 v5, v1, 0x1

    aget-object v5, v3, v5

    goto :goto_2f

    .line 458
    :cond_47
    if-nez v2, :cond_8f

    .line 459
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v4

    .line 462
    .restart local v4       #value:Ljava/lang/Object;
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    if-ne v5, v3, :cond_8a

    .line 465
    if-le v0, v7, :cond_71

    aget-object v5, v3, v0

    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v5, v6, :cond_71

    .line 467
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v0

    .line 468
    add-int/lit8 v5, v0, 0x1

    aput-object v4, v3, v5

    .line 469
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 470
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    move-object v5, v4

    .line 474
    goto :goto_2f

    .line 478
    :cond_71
    aget-object v5, v3, v1

    if-nez v5, :cond_8a

    .line 479
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v1

    .line 480
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    .line 481
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 483
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    move-object v5, v4

    .line 484
    goto :goto_2f

    .line 489
    :cond_8a
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    move-object v5, v4

    .line 490
    goto :goto_2f

    .line 493
    .end local v4           #value:Ljava/lang/Object;
    :cond_8f
    if-ne v0, v7, :cond_96

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v5, :cond_96

    .line 495
    move v0, v1

    .line 451
    :cond_96
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_3a
.end method

.method put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, key:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<*>;"
    const/4 v5, -0x1

    .line 380
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    .line 384
    const/4 v0, -0x1

    .line 386
    .local v0, firstTombstone:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v3

    iget v4, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v1, v3, v4

    .line 387
    .local v1, index:I
    :goto_d
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 389
    .local v2, k:Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v3

    if-ne v2, v3, :cond_1e

    .line 391
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object p2, v3, v4

    .line 409
    :goto_1d
    return-void

    .line 395
    :cond_1e
    if-nez v2, :cond_52

    .line 396
    if-ne v0, v5, :cond_37

    .line 398
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v1

    .line 399
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object p2, v3, v4

    .line 400
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1d

    .line 405
    :cond_37
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v0

    .line 406
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aput-object p2, v3, v4

    .line 407
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 408
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1d

    .line 413
    :cond_52
    if-ne v0, v5, :cond_59

    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v3, :cond_59

    .line 414
    move v0, v1

    .line 386
    :cond_59
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_d
.end method

.method remove(Ljava/lang/ThreadLocal;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, key:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<*>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    .line 506
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v0, v2, v3

    .line 507
    .local v0, index:I
    :goto_b
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 509
    .local v1, reference:Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v2

    if-ne v1, v2, :cond_2f

    .line 511
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 512
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 513
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 514
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 520
    :cond_2e
    return-void

    .line 518
    :cond_2f
    if-eqz v1, :cond_2e

    .line 506
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v0

    goto :goto_b
.end method
