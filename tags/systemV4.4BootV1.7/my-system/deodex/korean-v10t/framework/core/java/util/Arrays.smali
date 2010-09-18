.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Ljava/util/Arrays;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/Arrays;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .registers 8
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 180
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    array-length v3, p0

    sub-int v0, v3, v5

    .line 181
    .local v0, high:I
    :goto_6
    if-gt v1, v0, :cond_1c

    .line 182
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 183
    aget-byte v3, p0, v2

    if-le p1, v3, :cond_13

    .line 184
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 185
    :cond_13
    aget-byte v3, p0, v2

    if-ne p1, v3, :cond_19

    move v3, v2

    .line 195
    :goto_18
    return v3

    .line 188
    :cond_19
    sub-int v0, v2, v5

    goto :goto_6

    .line 191
    :cond_1c
    if-gez v2, :cond_20

    .line 192
    const/4 v3, -0x1

    goto :goto_18

    .line 195
    :cond_20
    neg-int v3, v2

    aget-byte v4, p0, v2

    if-ge p1, v4, :cond_28

    move v4, v5

    :goto_26
    sub-int/2addr v3, v4

    goto :goto_18

    :cond_28
    const/4 v4, 0x2

    goto :goto_26
.end method

.method public static binarySearch([CC)I
    .registers 8
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 213
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    array-length v3, p0

    sub-int v0, v3, v5

    .line 214
    .local v0, high:I
    :goto_6
    if-gt v1, v0, :cond_1c

    .line 215
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 216
    aget-char v3, p0, v2

    if-le p1, v3, :cond_13

    .line 217
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 218
    :cond_13
    aget-char v3, p0, v2

    if-ne p1, v3, :cond_19

    move v3, v2

    .line 227
    :goto_18
    return v3

    .line 221
    :cond_19
    sub-int v0, v2, v5

    goto :goto_6

    .line 224
    :cond_1c
    if-gez v2, :cond_20

    .line 225
    const/4 v3, -0x1

    goto :goto_18

    .line 227
    :cond_20
    neg-int v3, v2

    aget-char v4, p0, v2

    if-ge p1, v4, :cond_28

    move v4, v5

    :goto_26
    sub-int/2addr v3, v4

    goto :goto_18

    :cond_28
    const/4 v4, 0x2

    goto :goto_26
.end method

.method public static binarySearch([DD)I
    .registers 12
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 246
    .local v1, longBits:J
    const/4 v3, 0x0

    .local v3, low:I
    const/4 v4, -0x1

    .local v4, mid:I
    array-length v5, p0

    sub-int v0, v5, v8

    .line 247
    .local v0, high:I
    :goto_a
    if-gt v3, v0, :cond_2a

    .line 248
    add-int v5, v3, v0

    shr-int/lit8 v4, v5, 0x1

    .line 249
    aget-wide v5, p0, v4

    invoke-static {v5, v6, p1, p2}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 250
    add-int/lit8 v3, v4, 0x1

    goto :goto_a

    .line 251
    :cond_1b
    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_27

    move v5, v4

    .line 260
    :goto_26
    return v5

    .line 254
    :cond_27
    sub-int v0, v4, v8

    goto :goto_a

    .line 257
    :cond_2a
    if-gez v4, :cond_2e

    .line 258
    const/4 v5, -0x1

    goto :goto_26

    .line 260
    :cond_2e
    neg-int v5, v4

    aget-wide v6, p0, v4

    invoke-static {p1, p2, v6, v7}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v6

    if-eqz v6, :cond_3a

    move v6, v8

    :goto_38
    sub-int/2addr v5, v6

    goto :goto_26

    :cond_3a
    const/4 v6, 0x2

    goto :goto_38
.end method

.method public static binarySearch([FF)I
    .registers 9
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 278
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 279
    .local v1, intBits:I
    const/4 v2, 0x0

    .local v2, low:I
    const/4 v3, -0x1

    .local v3, mid:I
    array-length v4, p0

    sub-int v0, v4, v6

    .line 280
    .local v0, high:I
    :goto_a
    if-gt v2, v0, :cond_28

    .line 281
    add-int v4, v2, v0

    shr-int/lit8 v3, v4, 0x1

    .line 282
    aget v4, p0, v3

    invoke-static {v4, p1}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 283
    add-int/lit8 v2, v3, 0x1

    goto :goto_a

    .line 284
    :cond_1b
    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v1, v4, :cond_25

    move v4, v3

    .line 293
    :goto_24
    return v4

    .line 287
    :cond_25
    sub-int v0, v3, v6

    goto :goto_a

    .line 290
    :cond_28
    if-gez v3, :cond_2c

    .line 291
    const/4 v4, -0x1

    goto :goto_24

    .line 293
    :cond_2c
    neg-int v4, v3

    aget v5, p0, v3

    invoke-static {p1, v5}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v6

    :goto_36
    sub-int/2addr v4, v5

    goto :goto_24

    :cond_38
    const/4 v5, 0x2

    goto :goto_36
.end method

.method public static binarySearch([II)I
    .registers 8
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 311
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    array-length v3, p0

    sub-int v0, v3, v5

    .line 312
    .local v0, high:I
    :goto_6
    if-gt v1, v0, :cond_1c

    .line 313
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 314
    aget v3, p0, v2

    if-le p1, v3, :cond_13

    .line 315
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 316
    :cond_13
    aget v3, p0, v2

    if-ne p1, v3, :cond_19

    move v3, v2

    .line 325
    :goto_18
    return v3

    .line 319
    :cond_19
    sub-int v0, v2, v5

    goto :goto_6

    .line 322
    :cond_1c
    if-gez v2, :cond_20

    .line 323
    const/4 v3, -0x1

    goto :goto_18

    .line 325
    :cond_20
    neg-int v3, v2

    aget v4, p0, v2

    if-ge p1, v4, :cond_28

    move v4, v5

    :goto_26
    sub-int/2addr v3, v4

    goto :goto_18

    :cond_28
    const/4 v4, 0x2

    goto :goto_26
.end method

.method public static binarySearch([JJ)I
    .registers 10
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 343
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    array-length v3, p0

    sub-int v0, v3, v6

    .line 344
    .local v0, high:I
    :goto_6
    if-gt v1, v0, :cond_20

    .line 345
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 346
    aget-wide v3, p0, v2

    cmp-long v3, p1, v3

    if-lez v3, :cond_15

    .line 347
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 348
    :cond_15
    aget-wide v3, p0, v2

    cmp-long v3, p1, v3

    if-nez v3, :cond_1d

    move v3, v2

    .line 357
    :goto_1c
    return v3

    .line 351
    :cond_1d
    sub-int v0, v2, v6

    goto :goto_6

    .line 354
    :cond_20
    if-gez v2, :cond_24

    .line 355
    const/4 v3, -0x1

    goto :goto_1c

    .line 357
    :cond_24
    neg-int v3, v2

    aget-wide v4, p0, v2

    cmp-long v4, p1, v4

    if-gez v4, :cond_2e

    move v4, v6

    :goto_2c
    sub-int/2addr v3, v4

    goto :goto_1c

    :cond_2e
    const/4 v4, 0x2

    goto :goto_2c
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10
    .parameter "array"
    .parameter "object"

    .prologue
    const/4 v7, 0x1

    .line 379
    array-length v6, p0

    if-nez v6, :cond_6

    .line 380
    const/4 v6, -0x1

    .line 394
    :goto_5
    return v6

    .line 382
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    .line 383
    .local v2, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, low:I
    const/4 v4, 0x0

    .local v4, mid:I
    array-length v6, p0

    sub-int v1, v6, v7

    .local v1, high:I
    const/4 v5, 0x0

    .line 384
    .local v5, result:I
    :goto_10
    if-gt v3, v1, :cond_28

    .line 385
    add-int v6, v3, v1

    shr-int/lit8 v4, v6, 0x1

    .line 386
    aget-object v6, p0, v4

    invoke-interface {v2, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_21

    .line 387
    add-int/lit8 v3, v4, 0x1

    goto :goto_10

    .line 388
    :cond_21
    if-nez v5, :cond_25

    move v6, v4

    .line 389
    goto :goto_5

    .line 391
    :cond_25
    sub-int v1, v4, v7

    goto :goto_10

    .line 394
    :cond_28
    neg-int v6, v4

    if-gtz v5, :cond_2d

    :goto_2b
    sub-int/2addr v6, v7

    goto :goto_5

    :cond_2d
    const/4 v7, 0x2

    goto :goto_2b
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v5, 0x1

    .line 419
    if-nez p2, :cond_8

    .line 420
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 434
    :goto_7
    return v4

    .line 423
    :cond_8
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, 0x0

    .local v2, mid:I
    array-length v4, p0

    sub-int v0, v4, v5

    .local v0, high:I
    const/4 v3, 0x0

    .line 424
    .local v3, result:I
    :goto_e
    if-gt v1, v0, :cond_26

    .line 425
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 426
    aget-object v4, p0, v2

    invoke-interface {p2, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1f

    .line 427
    add-int/lit8 v1, v2, 0x1

    goto :goto_e

    .line 428
    :cond_1f
    if-nez v3, :cond_23

    move v4, v2

    .line 429
    goto :goto_7

    .line 431
    :cond_23
    sub-int v0, v2, v5

    goto :goto_e

    .line 434
    :cond_26
    neg-int v4, v2

    if-ltz v3, :cond_2b

    :goto_29
    sub-int/2addr v4, v5

    goto :goto_7

    :cond_2b
    const/4 v5, 0x2

    goto :goto_29
.end method

.method public static binarySearch([SS)I
    .registers 8
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 452
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    array-length v3, p0

    sub-int v0, v3, v5

    .line 453
    .local v0, high:I
    :goto_6
    if-gt v1, v0, :cond_1c

    .line 454
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 455
    aget-short v3, p0, v2

    if-le p1, v3, :cond_13

    .line 456
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 457
    :cond_13
    aget-short v3, p0, v2

    if-ne p1, v3, :cond_19

    move v3, v2

    .line 466
    :goto_18
    return v3

    .line 460
    :cond_19
    sub-int v0, v2, v5

    goto :goto_6

    .line 463
    :cond_1c
    if-gez v2, :cond_20

    .line 464
    const/4 v3, -0x1

    goto :goto_18

    .line 466
    :cond_20
    neg-int v3, v2

    aget-short v4, p0, v2

    if-ge p1, v4, :cond_28

    move v4, v5

    :goto_26
    sub-int/2addr v3, v4

    goto :goto_18

    :cond_28
    const/4 v4, 0x2

    goto :goto_26
.end method

.method private static checkBounds(III)V
    .registers 6
    .parameter "arrLength"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1720
    if-le p1, p2, :cond_2b

    .line 1721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_2b
    if-ltz p1, :cond_2f

    if-le p2, p0, :cond_35

    .line 1725
    :cond_2f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1727
    :cond_35
    return-void
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1536
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 1549
    :goto_5
    return v3

    .line 1539
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_10

    :cond_e
    move v3, v5

    .line 1540
    goto :goto_5

    .line 1542
    :cond_10
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_23

    .line 1543
    aget-object v0, p0, v2

    .local v0, e1:Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1545
    .local v1, e2:Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    move v3, v5

    .line 1546
    goto :goto_5

    .line 1542
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v0           #e1:Ljava/lang/Object;
    .end local v1           #e2:Ljava/lang/Object;
    :cond_23
    move v3, v6

    .line 1549
    goto :goto_5
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"

    .prologue
    const/4 v3, 0x0

    .line 1555
    if-ne p0, p1, :cond_5

    .line 1556
    const/4 v2, 0x1

    .line 1602
    .end local p0
    .end local p1
    :goto_4
    return v2

    .line 1559
    .restart local p0
    .restart local p1
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 1560
    goto :goto_4

    .line 1563
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1564
    .local v0, cl1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1566
    .local v1, cl2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_1f

    move v2, v3

    .line 1567
    goto :goto_4

    .line 1570
    :cond_1f
    if-nez v0, :cond_26

    .line 1571
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 1577
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1578
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 1581
    .restart local p0
    .restart local p1
    :cond_39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1582
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_4

    .line 1584
    .restart local p0
    .restart local p1
    :cond_4e
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1585
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    check-cast p1, [C

    .end local p1
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_4

    .line 1587
    .restart local p0
    .restart local p1
    :cond_63
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1588
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_4

    .line 1590
    .restart local p0
    .restart local p1
    :cond_78
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1591
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto/16 :goto_4

    .line 1593
    .restart local p0
    .restart local p1
    :cond_8e
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1594
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto/16 :goto_4

    .line 1596
    .restart local p0
    .restart local p1
    :cond_a4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1597
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    check-cast p1, [F

    .end local p1
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_4

    .line 1599
    .restart local p0
    .restart local p1
    :cond_ba
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1600
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    check-cast p1, [D

    .end local p1
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_4

    .line 1602
    .restart local p0
    .restart local p1
    :cond_d0
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    check-cast p1, [S

    .end local p1
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    goto/16 :goto_4
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1195
    if-nez p0, :cond_4

    .line 1196
    const/4 v6, 0x0

    .line 1203
    :goto_3
    return v6

    .line 1198
    :cond_4
    const/4 v3, 0x1

    .line 1199
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_17

    aget-object v1, v0, v4

    .line 1200
    .local v1, element:Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v2

    .line 1201
    .local v2, elementHashCode:I
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1199
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #elementHashCode:I
    :cond_17
    move v6, v3

    .line 1203
    goto :goto_3
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .registers 3
    .parameter "element"

    .prologue
    .line 1208
    if-nez p0, :cond_4

    .line 1209
    const/4 v1, 0x0

    .line 1245
    .end local p0
    :goto_3
    return v1

    .line 1212
    .restart local p0
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1214
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_13

    .line 1215
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    .line 1221
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1222
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_3

    .line 1224
    .restart local p0
    :cond_22
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1225
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_3

    .line 1227
    .restart local p0
    :cond_33
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1228
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_3

    .line 1230
    .restart local p0
    :cond_44
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1231
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_3

    .line 1233
    .restart local p0
    :cond_55
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1234
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_3

    .line 1236
    .restart local p0
    :cond_66
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1237
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_3

    .line 1239
    .restart local p0
    :cond_77
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1240
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto/16 :goto_3

    .line 1242
    .restart local p0
    :cond_89
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1243
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto/16 :goto_3

    .line 1245
    .restart local p0
    :cond_9b
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto/16 :goto_3
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2916
    if-nez p0, :cond_5

    .line 2917
    const-string v1, "null"

    .line 2922
    :goto_4
    return-object v1

    .line 2920
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2921
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 13
    .parameter "array"
    .parameter "origArrays"
    .parameter "sb"

    .prologue
    const/4 v8, 0x0

    const-string v9, "null"

    .line 2943
    if-nez p0, :cond_b

    .line 2944
    const-string v7, "null"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    :goto_a
    return-void

    .line 2948
    :cond_b
    const/16 v7, 0x5b

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2950
    const/4 v4, 0x0

    .local v4, i:I
    :goto_11
    array-length v7, p0

    if-ge v4, v7, :cond_11d

    .line 2951
    if-eqz v4, :cond_1b

    .line 2952
    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    :cond_1b
    aget-object v1, p0, v4

    .line 2956
    .local v1, elem:Ljava/lang/Object;
    if-nez v1, :cond_27

    .line 2958
    const-string v7, "null"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
    .end local v1           #elem:Ljava/lang/Object;
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2961
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2962
    .local v2, elemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_116

    .line 2966
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 2967
    .local v3, elemElemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 2969
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2970
    check-cast v1, [Z

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 2971
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_4f
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 2972
    check-cast v1, [B

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 2973
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_63
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 2974
    check-cast v1, [C

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 2975
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_77
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 2976
    check-cast v1, [D

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 2977
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_8b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 2978
    check-cast v1, [F

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 2979
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_9f
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 2980
    check-cast v1, [I

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24

    .line 2981
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_b4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 2982
    check-cast v1, [J

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24

    .line 2983
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_c9
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 2984
    check-cast v1, [S

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24

    .line 2987
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_de
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2991
    :cond_e4
    sget-boolean v7, Ljava/util/Arrays;->$assertionsDisabled:Z

    if-nez v7, :cond_f2

    instance-of v7, v1, [Ljava/lang/Object;

    if-nez v7, :cond_f2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2992
    :cond_f2
    invoke-static {p1, v1}, Ljava/util/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 2993
    const-string v7, "[...]"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24

    .line 2995
    :cond_ff
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #elem:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 2996
    .local v5, newArray:[Ljava/lang/Object;
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [Ljava/lang/Object;

    .line 2997
    .local v6, newOrigArrays:[Ljava/lang/Object;
    array-length v7, p1

    invoke-static {p1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2999
    array-length v7, p1

    aput-object v5, v6, v7

    .line 3001
    invoke-static {v5, v6, p2}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto/16 :goto_24

    .line 3005
    .end local v3           #elemElemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #newArray:[Ljava/lang/Object;
    .end local v6           #newOrigArrays:[Ljava/lang/Object;
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_116
    aget-object v7, p0, v4

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_24

    .line 3009
    .end local v1           #elem:Ljava/lang/Object;
    .end local v2           #elemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_11d
    const/16 v7, 0x5d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .parameter "origArrays"
    .parameter "array"

    .prologue
    const/4 v5, 0x0

    .line 3027
    if-eqz p0, :cond_6

    array-length v4, p0

    if-nez v4, :cond_8

    :cond_6
    move v4, v5

    .line 3035
    :goto_7
    return v4

    .line 3030
    :cond_8
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 3031
    .local v1, element:Ljava/lang/Object;
    if-ne v1, p1, :cond_13

    .line 3032
    const/4 v4, 0x1

    goto :goto_7

    .line 3030
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v1           #element:Ljava/lang/Object;
    :cond_16
    move v4, v5

    .line 3035
    goto :goto_7
.end method

.method public static equals([B[B)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1261
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1272
    :goto_5
    return v1

    .line 1264
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1265
    goto :goto_5

    .line 1267
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1268
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1269
    goto :goto_5

    .line 1267
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1272
    goto :goto_5
.end method

.method public static equals([C[C)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1315
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1326
    :goto_5
    return v1

    .line 1318
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1319
    goto :goto_5

    .line 1321
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1322
    aget-char v1, p0, v0

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1323
    goto :goto_5

    .line 1321
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1326
    goto :goto_5
.end method

.method public static equals([D[D)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1428
    if-ne p0, p1, :cond_6

    move v1, v6

    .line 1440
    :goto_5
    return v1

    .line 1431
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v5

    .line 1432
    goto :goto_5

    .line 1434
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_29

    .line 1435
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    move v1, v5

    .line 1437
    goto :goto_5

    .line 1434
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_29
    move v1, v6

    .line 1440
    goto :goto_5
.end method

.method public static equals([F[F)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1398
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1410
    :goto_5
    return v1

    .line 1401
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1402
    goto :goto_5

    .line 1404
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_27

    .line 1405
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_24

    move v1, v3

    .line 1407
    goto :goto_5

    .line 1404
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_27
    move v1, v4

    .line 1410
    goto :goto_5
.end method

.method public static equals([I[I)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1342
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1353
    :goto_5
    return v1

    .line 1345
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1346
    goto :goto_5

    .line 1348
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1349
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1350
    goto :goto_5

    .line 1348
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1353
    goto :goto_5
.end method

.method public static equals([J[J)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1369
    if-ne p0, p1, :cond_6

    move v1, v6

    .line 1380
    :goto_5
    return v1

    .line 1372
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v5

    .line 1373
    goto :goto_5

    .line 1375
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_21

    .line 1376
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    move v1, v5

    .line 1377
    goto :goto_5

    .line 1375
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    move v1, v6

    .line 1380
    goto :goto_5
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1483
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 1495
    :goto_5
    return v3

    .line 1486
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_10

    :cond_e
    move v3, v5

    .line 1487
    goto :goto_5

    .line 1489
    :cond_10
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 1490
    aget-object v0, p0, v2

    .local v0, e1:Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1491
    .local v1, e2:Ljava/lang/Object;
    if-nez v0, :cond_1f

    if-nez v1, :cond_25

    .line 1489
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1491
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_25
    move v3, v5

    .line 1492
    goto :goto_5

    .end local v0           #e1:Ljava/lang/Object;
    .end local v1           #e2:Ljava/lang/Object;
    :cond_27
    move v3, v6

    .line 1495
    goto :goto_5
.end method

.method public static equals([S[S)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1288
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1299
    :goto_5
    return v1

    .line 1291
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1292
    goto :goto_5

    .line 1294
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1295
    aget-short v1, p0, v0

    aget-short v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1296
    goto :goto_5

    .line 1294
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1299
    goto :goto_5
.end method

.method public static equals([Z[Z)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1456
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1467
    :goto_5
    return v1

    .line 1459
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1460
    goto :goto_5

    .line 1462
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1463
    aget-boolean v1, p0, v0

    aget-boolean v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1464
    goto :goto_5

    .line 1462
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1467
    goto :goto_5
.end method

.method public static fill([BB)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 479
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 480
    aput-byte p1, p0, v0

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    :cond_9
    return-void
.end method

.method public static fill([BIIB)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 503
    array-length v1, p0

    .line 504
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 505
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 507
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 508
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 510
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 511
    aput-byte p3, p0, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 513
    :cond_1b
    return-void
.end method

.method public static fill([CC)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 571
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 572
    aput-char p1, p0, v0

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_9
    return-void
.end method

.method public static fill([CIIC)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 595
    array-length v1, p0

    .line 596
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 597
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 599
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 600
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 602
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 603
    aput-char p3, p0, v0

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 605
    :cond_1b
    return-void
.end method

.method public static fill([DD)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 755
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 756
    aput-wide p1, p0, v0

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    :cond_9
    return-void
.end method

.method public static fill([DIID)V
    .registers 8
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 779
    array-length v1, p0

    .line 780
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 781
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 783
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 784
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 786
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 787
    aput-wide p3, p0, v0

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 789
    :cond_1b
    return-void
.end method

.method public static fill([FF)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 709
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 710
    aput p1, p0, v0

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    :cond_9
    return-void
.end method

.method public static fill([FIIF)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 733
    array-length v1, p0

    .line 734
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 735
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 737
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 738
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 740
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 741
    aput p3, p0, v0

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 743
    :cond_1b
    return-void
.end method

.method public static fill([II)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 617
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 618
    aput p1, p0, v0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    :cond_9
    return-void
.end method

.method public static fill([IIII)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 641
    array-length v1, p0

    .line 642
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 643
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 645
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 646
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 648
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 649
    aput p3, p0, v0

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 651
    :cond_1b
    return-void
.end method

.method public static fill([JIIJ)V
    .registers 8
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 687
    array-length v1, p0

    .line 688
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 689
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 691
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 692
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 694
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 695
    aput-wide p3, p0, v0

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 697
    :cond_1b
    return-void
.end method

.method public static fill([JJ)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 664
    aput-wide p1, p0, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 666
    :cond_9
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 871
    array-length v1, p0

    .line 872
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 873
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 875
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 876
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 878
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 879
    aput-object p3, p0, v0

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 881
    :cond_1b
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 847
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 848
    aput-object p1, p0, v0

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 850
    :cond_9
    return-void
.end method

.method public static fill([SIIS)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 549
    array-length v1, p0

    .line 550
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 551
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 553
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 554
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 556
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 557
    aput-short p3, p0, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 559
    :cond_1b
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 526
    aput-short p1, p0, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    :cond_9
    return-void
.end method

.method public static fill([ZIIZ)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 825
    array-length v1, p0

    .line 826
    .local v1, length:I
    if-le p1, p2, :cond_9

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 829
    :cond_9
    if-ltz p1, :cond_d

    if-le p2, v1, :cond_13

    .line 830
    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 832
    :cond_13
    move v0, p1

    .local v0, i:I
    :goto_14
    if-ge v0, p2, :cond_1b

    .line 833
    aput-boolean p3, p0, v0

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 835
    :cond_1b
    return-void
.end method

.method public static fill([ZZ)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 801
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 802
    aput-boolean p1, p0, v0

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 804
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1017
    if-nez p0, :cond_4

    .line 1018
    const/4 v5, 0x0

    .line 1025
    :goto_3
    return v5

    .line 1020
    :cond_4
    const/4 v2, 0x1

    .line 1021
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-byte v1, v0, v3

    .line 1023
    .local v1, element:B
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1021
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:B
    :cond_13
    move v5, v2

    .line 1025
    goto :goto_3
.end method

.method public static hashCode([C)I
    .registers 7
    .parameter "array"

    .prologue
    .line 988
    if-nez p0, :cond_4

    .line 989
    const/4 v5, 0x0

    .line 996
    :goto_3
    return v5

    .line 991
    :cond_4
    const/4 v2, 0x1

    .line 992
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-char v1, v0, v3

    .line 994
    .local v1, element:C
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 992
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:C
    :cond_13
    move v5, v2

    .line 996
    goto :goto_3
.end method

.method public static hashCode([D)I
    .registers 12
    .parameter "array"

    .prologue
    .line 1111
    if-nez p0, :cond_4

    .line 1112
    const/4 v8, 0x0

    .line 1124
    :goto_3
    return v8

    .line 1114
    :cond_4
    const/4 v3, 0x1

    .line 1116
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[D
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_1d

    aget-wide v1, v0, v4

    .line 1117
    .local v1, element:D
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 1122
    .local v6, v:J
    mul-int/lit8 v8, v3, 0x1f

    const/16 v9, 0x20

    ushr-long v9, v6, v9

    xor-long/2addr v9, v6

    long-to-int v9, v9

    add-int v3, v8, v9

    .line 1116
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .end local v1           #element:D
    .end local v6           #v:J
    :cond_1d
    move v8, v3

    .line 1124
    goto :goto_3
.end method

.method public static hashCode([F)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1079
    if-nez p0, :cond_4

    .line 1080
    const/4 v5, 0x0

    .line 1090
    :goto_3
    return v5

    .line 1082
    :cond_4
    const/4 v2, 0x1

    .line 1083
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[F
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_17

    aget v1, v0, v3

    .line 1088
    .local v1, element:F
    mul-int/lit8 v5, v2, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int v2, v5, v6

    .line 1083
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:F
    :cond_17
    move v5, v2

    .line 1090
    goto :goto_3
.end method

.method public static hashCode([I)I
    .registers 7
    .parameter "array"

    .prologue
    .line 930
    if-nez p0, :cond_4

    .line 931
    const/4 v5, 0x0

    .line 938
    :goto_3
    return v5

    .line 933
    :cond_4
    const/4 v2, 0x1

    .line 934
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget v1, v0, v3

    .line 936
    .local v1, element:I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 934
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:I
    :cond_13
    move v5, v2

    .line 938
    goto :goto_3
.end method

.method public static hashCode([J)I
    .registers 10
    .parameter "array"

    .prologue
    .line 1046
    if-nez p0, :cond_4

    .line 1047
    const/4 v6, 0x0

    .line 1058
    :goto_3
    return v6

    .line 1049
    :cond_4
    const/4 v3, 0x1

    .line 1050
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_19

    aget-wide v1, v0, v4

    .line 1055
    .local v1, elementValue:J
    mul-int/lit8 v6, v3, 0x1f

    const/16 v7, 0x20

    ushr-long v7, v1, v7

    xor-long/2addr v7, v1

    long-to-int v7, v7

    add-int v3, v6, v7

    .line 1050
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .end local v1           #elementValue:J
    :cond_19
    move v6, v3

    .line 1058
    goto :goto_3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1149
    if-nez p0, :cond_4

    .line 1150
    const/4 v6, 0x0

    .line 1163
    :goto_3
    return v6

    .line 1152
    :cond_4
    const/4 v3, 0x1

    .line 1153
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_1b

    aget-object v1, v0, v4

    .line 1156
    .local v1, element:Ljava/lang/Object;
    if-nez v1, :cond_16

    .line 1157
    const/4 v2, 0x0

    .line 1161
    .local v2, elementHashCode:I
    :goto_f
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1153
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1159
    .end local v2           #elementHashCode:I
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .restart local v2       #elementHashCode:I
    goto :goto_f

    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #elementHashCode:I
    :cond_1b
    move v6, v3

    .line 1163
    goto :goto_3
.end method

.method public static hashCode([S)I
    .registers 7
    .parameter "array"

    .prologue
    .line 959
    if-nez p0, :cond_4

    .line 960
    const/4 v5, 0x0

    .line 967
    :goto_3
    return v5

    .line 962
    :cond_4
    const/4 v2, 0x1

    .line 963
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[S
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-short v1, v0, v3

    .line 965
    .local v1, element:S
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 963
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:S
    :cond_13
    move v5, v2

    .line 967
    goto :goto_3
.end method

.method public static hashCode([Z)I
    .registers 8
    .parameter "array"

    .prologue
    .line 901
    if-nez p0, :cond_4

    .line 902
    const/4 v5, 0x0

    .line 909
    :goto_3
    return v5

    .line 904
    :cond_4
    const/4 v2, 0x1

    .line 905
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Z
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_1a

    aget-boolean v1, v0, v3

    .line 907
    .local v1, element:Z
    mul-int/lit8 v5, v2, 0x1f

    if-eqz v1, :cond_17

    const/16 v6, 0x4cf

    :goto_12
    add-int v2, v5, v6

    .line 905
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 907
    :cond_17
    const/16 v6, 0x4d5

    goto :goto_12

    .end local v1           #element:Z
    :cond_1a
    move v5, v2

    .line 909
    goto :goto_3
.end method

.method private static lessThan(DD)Z
    .registers 14
    .parameter "double1"
    .parameter "double2"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1607
    const-wide/high16 v6, 0x7ff8

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1608
    .local v0, NaNbits:J
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .local v2, d1:J
    cmp-long v6, v2, v0

    if-nez v6, :cond_12

    move v6, v8

    .line 1621
    :goto_11
    return v6

    .line 1611
    :cond_12
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .local v4, d2:J
    cmp-long v6, v4, v0

    if-nez v6, :cond_1c

    move v6, v9

    .line 1612
    goto :goto_11

    .line 1614
    :cond_1c
    cmpl-double v6, p0, p2

    if-nez v6, :cond_2e

    .line 1615
    cmp-long v6, v2, v4

    if-nez v6, :cond_26

    move v6, v8

    .line 1616
    goto :goto_11

    .line 1619
    :cond_26
    cmp-long v6, v2, v4

    if-gez v6, :cond_2c

    move v6, v9

    goto :goto_11

    :cond_2c
    move v6, v8

    goto :goto_11

    .line 1621
    :cond_2e
    cmpg-double v6, p0, p2

    if-gez v6, :cond_34

    move v6, v9

    goto :goto_11

    :cond_34
    move v6, v8

    goto :goto_11
.end method

.method private static lessThan(FF)Z
    .registers 8
    .parameter "float1"
    .parameter "float2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1626
    const/high16 v3, 0x7fc0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1627
    .local v0, NaNbits:I
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .local v1, f1:I
    if-ne v1, v0, :cond_10

    move v3, v4

    .line 1640
    :goto_f
    return v3

    .line 1630
    :cond_10
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .local v2, f2:I
    if-ne v2, v0, :cond_18

    move v3, v5

    .line 1631
    goto :goto_f

    .line 1633
    :cond_18
    cmpl-float v3, p0, p1

    if-nez v3, :cond_26

    .line 1634
    if-ne v1, v2, :cond_20

    move v3, v4

    .line 1635
    goto :goto_f

    .line 1638
    :cond_20
    if-ge v1, v2, :cond_24

    move v3, v5

    goto :goto_f

    :cond_24
    move v3, v4

    goto :goto_f

    .line 1640
    :cond_26
    cmpg-float v3, p0, p1

    if-gez v3, :cond_2c

    move v3, v5

    goto :goto_f

    :cond_2c
    move v3, v4

    goto :goto_f
.end method

.method private static med3([BIII)I
    .registers 8
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1644
    aget-byte v0, p0, p1

    .local v0, x:B
    aget-byte v1, p0, p2

    .local v1, y:B
    aget-byte v2, p0, p3

    .line 1645
    .local v2, z:B
    if-ge v0, v1, :cond_12

    if-ge v1, v2, :cond_c

    move v3, p2

    :goto_b
    return v3

    :cond_c
    if-ge v0, v2, :cond_10

    move v3, p3

    goto :goto_b

    :cond_10
    move v3, p1

    goto :goto_b

    :cond_12
    if-le v1, v2, :cond_16

    move v3, p2

    goto :goto_b

    :cond_16
    if-le v0, v2, :cond_1a

    move v3, p3

    goto :goto_b

    :cond_1a
    move v3, p1

    goto :goto_b
.end method

.method private static med3([CIII)I
    .registers 8
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1650
    aget-char v0, p0, p1

    .local v0, x:C
    aget-char v1, p0, p2

    .local v1, y:C
    aget-char v2, p0, p3

    .line 1651
    .local v2, z:C
    if-ge v0, v1, :cond_12

    if-ge v1, v2, :cond_c

    move v3, p2

    :goto_b
    return v3

    :cond_c
    if-ge v0, v2, :cond_10

    move v3, p3

    goto :goto_b

    :cond_10
    move v3, p1

    goto :goto_b

    :cond_12
    if-le v1, v2, :cond_16

    move v3, p2

    goto :goto_b

    :cond_16
    if-le v0, v2, :cond_1a

    move v3, p3

    goto :goto_b

    :cond_1a
    move v3, p1

    goto :goto_b
.end method

.method private static med3([DIII)I
    .registers 11
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1656
    aget-wide v0, p0, p1

    .local v0, x:D
    aget-wide v2, p0, p2

    .local v2, y:D
    aget-wide v4, p0, p3

    .line 1657
    .local v4, z:D
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v6

    if-eqz v6, :cond_14

    move v6, p2

    :goto_13
    return v6

    :cond_14
    invoke-static {v0, v1, v4, v5}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v6, p3

    goto :goto_13

    :cond_1c
    move v6, p1

    goto :goto_13

    :cond_1e
    invoke-static {v4, v5, v2, v3}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v6

    if-eqz v6, :cond_26

    move v6, p2

    goto :goto_13

    :cond_26
    invoke-static {v4, v5, v0, v1}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v6

    if-eqz v6, :cond_2e

    move v6, p3

    goto :goto_13

    :cond_2e
    move v6, p1

    goto :goto_13
.end method

.method private static med3([FIII)I
    .registers 8
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1662
    aget v0, p0, p1

    .local v0, x:F
    aget v1, p0, p2

    .local v1, y:F
    aget v2, p0, p3

    .line 1663
    .local v2, z:F
    invoke-static {v0, v1}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {v1, v2}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, p2

    :goto_13
    return v3

    :cond_14
    invoke-static {v0, v2}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, p3

    goto :goto_13

    :cond_1c
    move v3, p1

    goto :goto_13

    :cond_1e
    invoke-static {v2, v1}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, p2

    goto :goto_13

    :cond_26
    invoke-static {v2, v0}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, p3

    goto :goto_13

    :cond_2e
    move v3, p1

    goto :goto_13
.end method

.method private static med3([IIII)I
    .registers 8
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1668
    aget v0, p0, p1

    .local v0, x:I
    aget v1, p0, p2

    .local v1, y:I
    aget v2, p0, p3

    .line 1669
    .local v2, z:I
    if-ge v0, v1, :cond_12

    if-ge v1, v2, :cond_c

    move v3, p2

    :goto_b
    return v3

    :cond_c
    if-ge v0, v2, :cond_10

    move v3, p3

    goto :goto_b

    :cond_10
    move v3, p1

    goto :goto_b

    :cond_12
    if-le v1, v2, :cond_16

    move v3, p2

    goto :goto_b

    :cond_16
    if-le v0, v2, :cond_1a

    move v3, p3

    goto :goto_b

    :cond_1a
    move v3, p1

    goto :goto_b
.end method

.method private static med3([JIII)I
    .registers 11
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1674
    aget-wide v0, p0, p1

    .local v0, x:J
    aget-wide v2, p0, p2

    .local v2, y:J
    aget-wide v4, p0, p3

    .line 1675
    .local v4, z:J
    cmp-long v6, v0, v2

    if-gez v6, :cond_18

    cmp-long v6, v2, v4

    if-gez v6, :cond_10

    move v6, p2

    :goto_f
    return v6

    :cond_10
    cmp-long v6, v0, v4

    if-gez v6, :cond_16

    move v6, p3

    goto :goto_f

    :cond_16
    move v6, p1

    goto :goto_f

    :cond_18
    cmp-long v6, v2, v4

    if-lez v6, :cond_1e

    move v6, p2

    goto :goto_f

    :cond_1e
    cmp-long v6, v0, v4

    if-lez v6, :cond_24

    move v6, p3

    goto :goto_f

    :cond_24
    move v6, p1

    goto :goto_f
.end method

.method private static med3([SIII)I
    .registers 8
    .parameter "array"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1680
    aget-short v0, p0, p1

    .local v0, x:S
    aget-short v1, p0, p2

    .local v1, y:S
    aget-short v2, p0, p3

    .line 1681
    .local v2, z:S
    if-ge v0, v1, :cond_12

    if-ge v1, v2, :cond_c

    move v3, p2

    :goto_b
    return v3

    :cond_c
    if-ge v0, v2, :cond_10

    move v3, p3

    goto :goto_b

    :cond_10
    move v3, p1

    goto :goto_b

    :cond_12
    if-le v1, v2, :cond_16

    move v3, p2

    goto :goto_b

    :cond_16
    if-le v0, v2, :cond_1a

    move v3, p3

    goto :goto_b

    :cond_1a
    move v3, p1

    goto :goto_b
.end method

.method private static sort(II[B)V
    .registers 14
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 1731
    sub-int v2, p1, p0

    .line 1732
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2b

    .line 1733
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_29

    .line 1734
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_26

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget-byte v3, p2, v3

    aget-byte v4, p2, v1

    if-le v3, v4, :cond_26

    .line 1735
    aget-byte v3, p2, v1

    .line 1736
    .local v3, temp:B
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-byte v4, p2, v4

    aput-byte v4, p2, v1

    .line 1737
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aput-byte v3, p2, v4

    .line 1734
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1733
    .end local v3           #temp:B
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_29
    move p0, v2

    .line 1805
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2a
    :goto_2a
    return-void

    .line 1742
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2b
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 1743
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_11e

    .line 1744
    move v0, p0

    .line 1745
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 1746
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_119

    .line 1747
    div-int/lit8 v1, v2, 0x8

    .line 1748
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([BIII)I

    move-result v0

    .line 1750
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([BIII)I

    move-result v2

    .line 1751
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([BIII)I

    move-result v3

    .line 1753
    .end local v4           #top:I
    .local v3, top:I
    :goto_57
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([BIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v10, v0

    .end local v0           #middle:I
    .local v10, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v10

    .line 1755
    .end local v3           #top:I
    .end local v10           #middle:I
    .local v1, middle:I
    :goto_5e
    aget-byte v5, p2, v1

    .line 1757
    .local v5, partionValue:B
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 1758
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 1760
    .end local v0           #a:I
    .local v1, a:I
    :goto_6a
    if-gt v2, v3, :cond_83

    aget-byte v0, p2, v2

    if-gt v0, v5, :cond_83

    .line 1761
    aget-byte v0, p2, v2

    if-ne v0, v5, :cond_116

    .line 1762
    aget-byte v6, p2, v1

    .line 1763
    .local v6, temp:B
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget-byte v7, p2, v2

    aput-byte v7, p2, v1

    .line 1764
    aput-byte v6, p2, v2

    .line 1766
    .end local v6           #temp:B
    :goto_7e
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6a

    .line 1768
    :cond_83
    :goto_83
    if-lt v3, v2, :cond_9d

    aget-byte v0, p2, v3

    if-lt v0, v5, :cond_9d

    .line 1769
    aget-byte v0, p2, v3

    if-ne v0, v5, :cond_99

    .line 1770
    aget-byte v6, p2, v3

    .line 1771
    .restart local v6       #temp:B
    aget-byte v0, p2, v4

    aput-byte v0, p2, v3

    .line 1772
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput-byte v6, p2, v4

    move v4, v0

    .line 1774
    .end local v0           #d:I
    .end local v6           #temp:B
    .restart local v4       #d:I
    :cond_99
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_83

    .line 1776
    :cond_9d
    if-le v2, v3, :cond_c3

    .line 1783
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_d3

    .end local v5           #partionValue:B
    sub-int v0, v1, p0

    move v6, v0

    .line 1784
    .local v6, length:I
    :goto_a8
    move v5, p0

    .line 1785
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .local v10, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 1786
    .end local v10           #h:I
    .local v5, h:I
    :goto_ae
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_d7

    .line 1787
    aget-byte v8, p2, v0

    .line 1788
    .local v8, temp:B
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-byte v9, p2, v5

    aput-byte v9, p2, v0

    .line 1789
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-byte v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_ae

    .line 1779
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:B
    .local v5, partionValue:B
    :cond_c3
    aget-byte v6, p2, v2

    .line 1780
    .local v6, temp:B
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget-byte v7, p2, v3

    aput-byte v7, p2, v2

    .line 1781
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput-byte v6, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6a

    .line 1783
    .end local v5           #partionValue:B
    .end local v6           #temp:B
    :cond_d3
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_a8

    .line 1791
    .local v0, l:I
    .local v5, h:I
    .restart local v7       #length:I
    :cond_d7
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_fd

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 1792
    .end local v7           #length:I
    .local v6, length:I
    :goto_e2
    move v5, v2

    .line 1793
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .restart local v10       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 1794
    .end local v10           #h:I
    .local v5, h:I
    :goto_e8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_103

    .line 1795
    aget-byte v8, p2, v0

    .line 1796
    .restart local v8       #temp:B
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-byte v9, p2, v5

    aput-byte v9, p2, v0

    .line 1797
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-byte v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_e8

    .line 1791
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:B
    .restart local v7       #length:I
    :cond_fd
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_e2

    .line 1799
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_103
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_10b

    .line 1800
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[B)V

    .line 1802
    .end local v0           #length:I
    :cond_10b
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2a

    .line 1803
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[B)V

    goto/16 :goto_2a

    .local v5, partionValue:B
    .local p0, start:I
    :cond_116
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_7e

    .end local v5           #partionValue:B
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_119
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_57

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_11e
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_5e
.end method

.method private static sort(II[C)V
    .registers 14
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 1843
    sub-int v2, p1, p0

    .line 1844
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2b

    .line 1845
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_29

    .line 1846
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_26

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget-char v3, p2, v3

    aget-char v4, p2, v1

    if-le v3, v4, :cond_26

    .line 1847
    aget-char v3, p2, v1

    .line 1848
    .local v3, temp:C
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-char v4, p2, v4

    aput-char v4, p2, v1

    .line 1849
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aput-char v3, p2, v4

    .line 1846
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1845
    .end local v3           #temp:C
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_29
    move p0, v2

    .line 1917
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2a
    :goto_2a
    return-void

    .line 1854
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2b
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 1855
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_11e

    .line 1856
    move v0, p0

    .line 1857
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 1858
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_119

    .line 1859
    div-int/lit8 v1, v2, 0x8

    .line 1860
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([CIII)I

    move-result v0

    .line 1862
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([CIII)I

    move-result v2

    .line 1863
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([CIII)I

    move-result v3

    .line 1865
    .end local v4           #top:I
    .local v3, top:I
    :goto_57
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([CIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v10, v0

    .end local v0           #middle:I
    .local v10, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v10

    .line 1867
    .end local v3           #top:I
    .end local v10           #middle:I
    .local v1, middle:I
    :goto_5e
    aget-char v5, p2, v1

    .line 1869
    .local v5, partionValue:C
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 1870
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 1872
    .end local v0           #a:I
    .local v1, a:I
    :goto_6a
    if-gt v2, v3, :cond_83

    aget-char v0, p2, v2

    if-gt v0, v5, :cond_83

    .line 1873
    aget-char v0, p2, v2

    if-ne v0, v5, :cond_116

    .line 1874
    aget-char v6, p2, v1

    .line 1875
    .local v6, temp:C
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget-char v7, p2, v2

    aput-char v7, p2, v1

    .line 1876
    aput-char v6, p2, v2

    .line 1878
    .end local v6           #temp:C
    :goto_7e
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6a

    .line 1880
    :cond_83
    :goto_83
    if-lt v3, v2, :cond_9d

    aget-char v0, p2, v3

    if-lt v0, v5, :cond_9d

    .line 1881
    aget-char v0, p2, v3

    if-ne v0, v5, :cond_99

    .line 1882
    aget-char v6, p2, v3

    .line 1883
    .restart local v6       #temp:C
    aget-char v0, p2, v4

    aput-char v0, p2, v3

    .line 1884
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput-char v6, p2, v4

    move v4, v0

    .line 1886
    .end local v0           #d:I
    .end local v6           #temp:C
    .restart local v4       #d:I
    :cond_99
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_83

    .line 1888
    :cond_9d
    if-le v2, v3, :cond_c3

    .line 1895
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_d3

    .end local v5           #partionValue:C
    sub-int v0, v1, p0

    move v6, v0

    .line 1896
    .local v6, length:I
    :goto_a8
    move v5, p0

    .line 1897
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .local v10, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 1898
    .end local v10           #h:I
    .local v5, h:I
    :goto_ae
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_d7

    .line 1899
    aget-char v8, p2, v0

    .line 1900
    .local v8, temp:C
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-char v9, p2, v5

    aput-char v9, p2, v0

    .line 1901
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-char v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_ae

    .line 1891
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:C
    .local v5, partionValue:C
    :cond_c3
    aget-char v6, p2, v2

    .line 1892
    .local v6, temp:C
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget-char v7, p2, v3

    aput-char v7, p2, v2

    .line 1893
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput-char v6, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6a

    .line 1895
    .end local v5           #partionValue:C
    .end local v6           #temp:C
    :cond_d3
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_a8

    .line 1903
    .local v0, l:I
    .local v5, h:I
    .restart local v7       #length:I
    :cond_d7
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_fd

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 1904
    .end local v7           #length:I
    .local v6, length:I
    :goto_e2
    move v5, v2

    .line 1905
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .restart local v10       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 1906
    .end local v10           #h:I
    .local v5, h:I
    :goto_e8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_103

    .line 1907
    aget-char v8, p2, v0

    .line 1908
    .restart local v8       #temp:C
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-char v9, p2, v5

    aput-char v9, p2, v0

    .line 1909
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-char v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_e8

    .line 1903
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:C
    .restart local v7       #length:I
    :cond_fd
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_e2

    .line 1911
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_103
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_10b

    .line 1912
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[C)V

    .line 1914
    .end local v0           #length:I
    :cond_10b
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2a

    .line 1915
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[C)V

    goto/16 :goto_2a

    .local v5, partionValue:C
    .local p0, start:I
    :cond_116
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_7e

    .end local v5           #partionValue:C
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_119
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_57

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_11e
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_5e
.end method

.method private static sort(II[D)V
    .registers 16
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 1958
    sub-int v2, p1, p0

    .line 1959
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2f

    .line 1960
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_2d

    .line 1961
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_2a

    aget-wide v3, p2, v1

    const/4 v5, 0x1

    sub-int v5, v1, v5

    aget-wide v5, p2, v5

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1962
    aget-wide v3, p2, v1

    .line 1963
    .local v3, temp:D
    const/4 v5, 0x1

    sub-int v5, v1, v5

    aget-wide v5, p2, v5

    aput-wide v5, p2, v1

    .line 1964
    const/4 v5, 0x1

    sub-int v5, v1, v5

    aput-wide v3, p2, v5

    .line 1961
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1960
    .end local v3           #temp:D
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_2d
    move p0, v2

    .line 2032
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2e
    :goto_2e
    return-void

    .line 1969
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2f
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 1970
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_12e

    .line 1971
    move v0, p0

    .line 1972
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 1973
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_129

    .line 1974
    div-int/lit8 v1, v2, 0x8

    .line 1975
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([DIII)I

    move-result v0

    .line 1977
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([DIII)I

    move-result v2

    .line 1978
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([DIII)I

    move-result v3

    .line 1980
    .end local v4           #top:I
    .local v3, top:I
    :goto_5b
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([DIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v12, v0

    .end local v0           #middle:I
    .local v12, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v12

    .line 1982
    .end local v3           #top:I
    .end local v12           #middle:I
    .local v1, middle:I
    :goto_62
    aget-wide v5, p2, v1

    .line 1984
    .local v5, partionValue:D
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 1985
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 1987
    .end local v0           #a:I
    .local v1, a:I
    :goto_6e
    if-gt v2, v3, :cond_8d

    aget-wide v7, p2, v2

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1988
    aget-wide v7, p2, v2

    cmpl-double v0, v7, v5

    if-nez v0, :cond_126

    .line 1989
    aget-wide v7, p2, v1

    .line 1990
    .local v7, temp:D
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget-wide v9, p2, v2

    aput-wide v9, p2, v1

    .line 1991
    aput-wide v7, p2, v2

    .line 1993
    .end local v7           #temp:D
    :goto_88
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6e

    .line 1995
    :cond_8d
    :goto_8d
    if-lt v3, v2, :cond_ad

    aget-wide v7, p2, v3

    invoke-static {v7, v8, v5, v6}, Ljava/util/Arrays;->lessThan(DD)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1996
    aget-wide v7, p2, v3

    cmpl-double v0, v7, v5

    if-nez v0, :cond_a9

    .line 1997
    aget-wide v7, p2, v3

    .line 1998
    .restart local v7       #temp:D
    aget-wide v9, p2, v4

    aput-wide v9, p2, v3

    .line 1999
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput-wide v7, p2, v4

    move v4, v0

    .line 2001
    .end local v0           #d:I
    .end local v7           #temp:D
    .restart local v4       #d:I
    :cond_a9
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_8d

    .line 2003
    :cond_ad
    if-le v2, v3, :cond_d3

    .line 2010
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_e3

    .end local v5           #partionValue:D
    sub-int v0, v1, p0

    move v6, v0

    .line 2011
    .local v6, length:I
    :goto_b8
    move v5, p0

    .line 2012
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v12, v0

    .end local v0           #h:I
    .local v12, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v12

    .line 2013
    .end local v12           #h:I
    .local v5, h:I
    :goto_be
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_e7

    .line 2014
    aget-wide v8, p2, v0

    .line 2015
    .local v8, temp:D
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-wide v10, p2, v5

    aput-wide v10, p2, v0

    .line 2016
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-wide v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_be

    .line 2006
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:D
    .local v5, partionValue:D
    :cond_d3
    aget-wide v7, p2, v2

    .line 2007
    .local v7, temp:D
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget-wide v9, p2, v3

    aput-wide v9, p2, v2

    .line 2008
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput-wide v7, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6e

    .line 2010
    .end local v5           #partionValue:D
    .end local v7           #temp:D
    :cond_e3
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_b8

    .line 2018
    .local v0, l:I
    .local v5, h:I
    .local v7, length:I
    :cond_e7
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_10d

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 2019
    .end local v7           #length:I
    .restart local v6       #length:I
    :goto_f2
    move v5, v2

    .line 2020
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v12, v0

    .end local v0           #h:I
    .restart local v12       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v12

    .line 2021
    .end local v12           #h:I
    .local v5, h:I
    :goto_f8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_113

    .line 2022
    aget-wide v8, p2, v0

    .line 2023
    .restart local v8       #temp:D
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-wide v10, p2, v5

    aput-wide v10, p2, v0

    .line 2024
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-wide v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_f8

    .line 2018
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:D
    .restart local v7       #length:I
    :cond_10d
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_f2

    .line 2026
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_113
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_11b

    .line 2027
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[D)V

    .line 2029
    .end local v0           #length:I
    :cond_11b
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2e

    .line 2030
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[D)V

    goto/16 :goto_2e

    .local v5, partionValue:D
    .local p0, start:I
    :cond_126
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_88

    .end local v5           #partionValue:D
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_129
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_5b

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_12e
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_62
.end method

.method private static sort(II[F)V
    .registers 14
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 2073
    sub-int v2, p1, p0

    .line 2074
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2f

    .line 2075
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_2d

    .line 2076
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_2a

    aget v3, p2, v1

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget v4, p2, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2077
    aget v3, p2, v1

    .line 2078
    .local v3, temp:F
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget v4, p2, v4

    aput v4, p2, v1

    .line 2079
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aput v3, p2, v4

    .line 2076
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2075
    .end local v3           #temp:F
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_2d
    move p0, v2

    .line 2147
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2e
    :goto_2e
    return-void

    .line 2084
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2f
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 2085
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_12e

    .line 2086
    move v0, p0

    .line 2087
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 2088
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_129

    .line 2089
    div-int/lit8 v1, v2, 0x8

    .line 2090
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([FIII)I

    move-result v0

    .line 2092
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([FIII)I

    move-result v2

    .line 2093
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([FIII)I

    move-result v3

    .line 2095
    .end local v4           #top:I
    .local v3, top:I
    :goto_5b
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([FIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v10, v0

    .end local v0           #middle:I
    .local v10, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v10

    .line 2097
    .end local v3           #top:I
    .end local v10           #middle:I
    .local v1, middle:I
    :goto_62
    aget v5, p2, v1

    .line 2099
    .local v5, partionValue:F
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 2100
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 2102
    .end local v0           #a:I
    .local v1, a:I
    :goto_6e
    if-gt v2, v3, :cond_8d

    aget v0, p2, v2

    invoke-static {v5, v0}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 2103
    aget v0, p2, v2

    cmpl-float v0, v0, v5

    if-nez v0, :cond_126

    .line 2104
    aget v6, p2, v1

    .line 2105
    .local v6, temp:F
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget v7, p2, v2

    aput v7, p2, v1

    .line 2106
    aput v6, p2, v2

    .line 2108
    .end local v6           #temp:F
    :goto_88
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6e

    .line 2110
    :cond_8d
    :goto_8d
    if-lt v3, v2, :cond_ad

    aget v0, p2, v3

    invoke-static {v0, v5}, Ljava/util/Arrays;->lessThan(FF)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2111
    aget v0, p2, v3

    cmpl-float v0, v0, v5

    if-nez v0, :cond_a9

    .line 2112
    aget v6, p2, v3

    .line 2113
    .restart local v6       #temp:F
    aget v0, p2, v4

    aput v0, p2, v3

    .line 2114
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput v6, p2, v4

    move v4, v0

    .line 2116
    .end local v0           #d:I
    .end local v6           #temp:F
    .restart local v4       #d:I
    :cond_a9
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_8d

    .line 2118
    :cond_ad
    if-le v2, v3, :cond_d3

    .line 2125
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_e3

    .end local v5           #partionValue:F
    sub-int v0, v1, p0

    move v6, v0

    .line 2126
    .local v6, length:I
    :goto_b8
    move v5, p0

    .line 2127
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .local v10, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 2128
    .end local v10           #h:I
    .local v5, h:I
    :goto_be
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_e7

    .line 2129
    aget v8, p2, v0

    .line 2130
    .local v8, temp:F
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget v9, p2, v5

    aput v9, p2, v0

    .line 2131
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_be

    .line 2121
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:F
    .local v5, partionValue:F
    :cond_d3
    aget v6, p2, v2

    .line 2122
    .local v6, temp:F
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget v7, p2, v3

    aput v7, p2, v2

    .line 2123
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput v6, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6e

    .line 2125
    .end local v5           #partionValue:F
    .end local v6           #temp:F
    :cond_e3
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_b8

    .line 2133
    .local v0, l:I
    .local v5, h:I
    .restart local v7       #length:I
    :cond_e7
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_10d

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 2134
    .end local v7           #length:I
    .local v6, length:I
    :goto_f2
    move v5, v2

    .line 2135
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .restart local v10       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 2136
    .end local v10           #h:I
    .local v5, h:I
    :goto_f8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_113

    .line 2137
    aget v8, p2, v0

    .line 2138
    .restart local v8       #temp:F
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget v9, p2, v5

    aput v9, p2, v0

    .line 2139
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_f8

    .line 2133
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:F
    .restart local v7       #length:I
    :cond_10d
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_f2

    .line 2141
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_113
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_11b

    .line 2142
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[F)V

    .line 2144
    .end local v0           #length:I
    :cond_11b
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2e

    .line 2145
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[F)V

    goto/16 :goto_2e

    .local v5, partionValue:F
    .local p0, start:I
    :cond_126
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_88

    .end local v5           #partionValue:F
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_129
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_5b

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_12e
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_62
.end method

.method private static sort(II[I)V
    .registers 14
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 2185
    sub-int v2, p1, p0

    .line 2186
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2b

    .line 2187
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_29

    .line 2188
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_26

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget v3, p2, v3

    aget v4, p2, v1

    if-le v3, v4, :cond_26

    .line 2189
    aget v3, p2, v1

    .line 2190
    .local v3, temp:I
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget v4, p2, v4

    aput v4, p2, v1

    .line 2191
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aput v3, p2, v4

    .line 2188
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2187
    .end local v3           #temp:I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_29
    move p0, v2

    .line 2259
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2a
    :goto_2a
    return-void

    .line 2196
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2b
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 2197
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_11e

    .line 2198
    move v0, p0

    .line 2199
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 2200
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_119

    .line 2201
    div-int/lit8 v1, v2, 0x8

    .line 2202
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([IIII)I

    move-result v0

    .line 2204
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([IIII)I

    move-result v2

    .line 2205
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([IIII)I

    move-result v3

    .line 2207
    .end local v4           #top:I
    .local v3, top:I
    :goto_57
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([IIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v10, v0

    .end local v0           #middle:I
    .local v10, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v10

    .line 2209
    .end local v3           #top:I
    .end local v10           #middle:I
    .local v1, middle:I
    :goto_5e
    aget v5, p2, v1

    .line 2211
    .local v5, partionValue:I
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 2212
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 2214
    .end local v0           #a:I
    .local v1, a:I
    :goto_6a
    if-gt v2, v3, :cond_83

    aget v0, p2, v2

    if-gt v0, v5, :cond_83

    .line 2215
    aget v0, p2, v2

    if-ne v0, v5, :cond_116

    .line 2216
    aget v6, p2, v1

    .line 2217
    .local v6, temp:I
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget v7, p2, v2

    aput v7, p2, v1

    .line 2218
    aput v6, p2, v2

    .line 2220
    .end local v6           #temp:I
    :goto_7e
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6a

    .line 2222
    :cond_83
    :goto_83
    if-lt v3, v2, :cond_9d

    aget v0, p2, v3

    if-lt v0, v5, :cond_9d

    .line 2223
    aget v0, p2, v3

    if-ne v0, v5, :cond_99

    .line 2224
    aget v6, p2, v3

    .line 2225
    .restart local v6       #temp:I
    aget v0, p2, v4

    aput v0, p2, v3

    .line 2226
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput v6, p2, v4

    move v4, v0

    .line 2228
    .end local v0           #d:I
    .end local v6           #temp:I
    .restart local v4       #d:I
    :cond_99
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_83

    .line 2230
    :cond_9d
    if-le v2, v3, :cond_c3

    .line 2237
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_d3

    .end local v5           #partionValue:I
    sub-int v0, v1, p0

    move v6, v0

    .line 2238
    .local v6, length:I
    :goto_a8
    move v5, p0

    .line 2239
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .local v10, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 2240
    .end local v10           #h:I
    .local v5, h:I
    :goto_ae
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_d7

    .line 2241
    aget v8, p2, v0

    .line 2242
    .local v8, temp:I
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget v9, p2, v5

    aput v9, p2, v0

    .line 2243
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_ae

    .line 2233
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:I
    .local v5, partionValue:I
    :cond_c3
    aget v6, p2, v2

    .line 2234
    .local v6, temp:I
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget v7, p2, v3

    aput v7, p2, v2

    .line 2235
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput v6, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6a

    .line 2237
    .end local v5           #partionValue:I
    .end local v6           #temp:I
    :cond_d3
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_a8

    .line 2245
    .local v0, l:I
    .local v5, h:I
    .restart local v7       #length:I
    :cond_d7
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_fd

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 2246
    .end local v7           #length:I
    .local v6, length:I
    :goto_e2
    move v5, v2

    .line 2247
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .restart local v10       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 2248
    .end local v10           #h:I
    .local v5, h:I
    :goto_e8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_103

    .line 2249
    aget v8, p2, v0

    .line 2250
    .restart local v8       #temp:I
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget v9, p2, v5

    aput v9, p2, v0

    .line 2251
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_e8

    .line 2245
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:I
    .restart local v7       #length:I
    :cond_fd
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_e2

    .line 2253
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_103
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_10b

    .line 2254
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[I)V

    .line 2256
    .end local v0           #length:I
    :cond_10b
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2a

    .line 2257
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[I)V

    goto/16 :goto_2a

    .local v5, partionValue:I
    .local p0, start:I
    :cond_116
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_7e

    .end local v5           #partionValue:I
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_119
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_57

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_11e
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_5e
.end method

.method private static sort(II[J)V
    .registers 16
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 2297
    sub-int v2, p1, p0

    .line 2298
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2d

    .line 2299
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_2b

    .line 2300
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_28

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget-wide v3, p2, v3

    aget-wide v5, p2, v1

    cmp-long v3, v3, v5

    if-lez v3, :cond_28

    .line 2301
    aget-wide v3, p2, v1

    .line 2302
    .local v3, temp:J
    const/4 v5, 0x1

    sub-int v5, v1, v5

    aget-wide v5, p2, v5

    aput-wide v5, p2, v1

    .line 2303
    const/4 v5, 0x1

    sub-int v5, v1, v5

    aput-wide v3, p2, v5

    .line 2300
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2299
    .end local v3           #temp:J
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_2b
    move p0, v2

    .line 2371
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2c
    :goto_2c
    return-void

    .line 2308
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2d
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 2309
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_128

    .line 2310
    move v0, p0

    .line 2311
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 2312
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_123

    .line 2313
    div-int/lit8 v1, v2, 0x8

    .line 2314
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([JIII)I

    move-result v0

    .line 2316
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([JIII)I

    move-result v2

    .line 2317
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([JIII)I

    move-result v3

    .line 2319
    .end local v4           #top:I
    .local v3, top:I
    :goto_59
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([JIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v12, v0

    .end local v0           #middle:I
    .local v12, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v12

    .line 2321
    .end local v3           #top:I
    .end local v12           #middle:I
    .local v1, middle:I
    :goto_60
    aget-wide v5, p2, v1

    .line 2323
    .local v5, partionValue:J
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 2324
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 2326
    .end local v0           #a:I
    .local v1, a:I
    :goto_6c
    if-gt v2, v3, :cond_89

    aget-wide v7, p2, v2

    cmp-long v0, v7, v5

    if-gtz v0, :cond_89

    .line 2327
    aget-wide v7, p2, v2

    cmp-long v0, v7, v5

    if-nez v0, :cond_120

    .line 2328
    aget-wide v7, p2, v1

    .line 2329
    .local v7, temp:J
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget-wide v9, p2, v2

    aput-wide v9, p2, v1

    .line 2330
    aput-wide v7, p2, v2

    .line 2332
    .end local v7           #temp:J
    :goto_84
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6c

    .line 2334
    :cond_89
    :goto_89
    if-lt v3, v2, :cond_a7

    aget-wide v7, p2, v3

    cmp-long v0, v7, v5

    if-ltz v0, :cond_a7

    .line 2335
    aget-wide v7, p2, v3

    cmp-long v0, v7, v5

    if-nez v0, :cond_a3

    .line 2336
    aget-wide v7, p2, v3

    .line 2337
    .restart local v7       #temp:J
    aget-wide v9, p2, v4

    aput-wide v9, p2, v3

    .line 2338
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput-wide v7, p2, v4

    move v4, v0

    .line 2340
    .end local v0           #d:I
    .end local v7           #temp:J
    .restart local v4       #d:I
    :cond_a3
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_89

    .line 2342
    :cond_a7
    if-le v2, v3, :cond_cd

    .line 2349
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_dd

    .end local v5           #partionValue:J
    sub-int v0, v1, p0

    move v6, v0

    .line 2350
    .local v6, length:I
    :goto_b2
    move v5, p0

    .line 2351
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v12, v0

    .end local v0           #h:I
    .local v12, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v12

    .line 2352
    .end local v12           #h:I
    .local v5, h:I
    :goto_b8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_e1

    .line 2353
    aget-wide v8, p2, v0

    .line 2354
    .local v8, temp:J
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-wide v10, p2, v5

    aput-wide v10, p2, v0

    .line 2355
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-wide v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_b8

    .line 2345
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:J
    .local v5, partionValue:J
    :cond_cd
    aget-wide v7, p2, v2

    .line 2346
    .local v7, temp:J
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget-wide v9, p2, v3

    aput-wide v9, p2, v2

    .line 2347
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput-wide v7, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6c

    .line 2349
    .end local v5           #partionValue:J
    .end local v7           #temp:J
    :cond_dd
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_b2

    .line 2357
    .local v0, l:I
    .local v5, h:I
    .local v7, length:I
    :cond_e1
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_107

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 2358
    .end local v7           #length:I
    .restart local v6       #length:I
    :goto_ec
    move v5, v2

    .line 2359
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v12, v0

    .end local v0           #h:I
    .restart local v12       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v12

    .line 2360
    .end local v12           #h:I
    .local v5, h:I
    :goto_f2
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_10d

    .line 2361
    aget-wide v8, p2, v0

    .line 2362
    .restart local v8       #temp:J
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-wide v10, p2, v5

    aput-wide v10, p2, v0

    .line 2363
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-wide v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_f2

    .line 2357
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:J
    .restart local v7       #length:I
    :cond_107
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_ec

    .line 2365
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_10d
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_115

    .line 2366
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[J)V

    .line 2368
    .end local v0           #length:I
    :cond_115
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2c

    .line 2369
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[J)V

    goto/16 :goto_2c

    .local v5, partionValue:J
    .local p0, start:I
    :cond_120
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_84

    .end local v5           #partionValue:J
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_123
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_59

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_128
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_60
.end method

.method private static sort(II[S)V
    .registers 14
    .parameter "start"
    .parameter "end"
    .parameter "array"

    .prologue
    .line 2530
    sub-int v2, p1, p0

    .line 2531
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2b

    .line 2532
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, p1, :cond_29

    .line 2533
    move v1, v0

    .local v1, j:I
    :goto_a
    if-le v1, p0, :cond_26

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget-short v3, p2, v3

    aget-short v4, p2, v1

    if-le v3, v4, :cond_26

    .line 2534
    aget-short v3, p2, v1

    .line 2535
    .local v3, temp:S
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-short v4, p2, v4

    aput-short v4, p2, v1

    .line 2536
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aput-short v3, p2, v4

    .line 2533
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2532
    .end local v3           #temp:S
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #j:I
    :cond_29
    move p0, v2

    .line 2604
    .end local v0           #i:I
    .end local v2           #length:I
    .local p0, length:I
    :cond_2a
    :goto_2a
    return-void

    .line 2541
    .restart local v2       #length:I
    .local p0, start:I
    :cond_2b
    add-int v0, p0, p1

    div-int/lit8 v3, v0, 0x2

    .line 2542
    .local v3, middle:I
    const/4 v0, 0x7

    if-le v2, v0, :cond_11e

    .line 2543
    move v0, p0

    .line 2544
    .local v0, bottom:I
    const/4 v1, 0x1

    sub-int v4, p1, v1

    .line 2545
    .local v4, top:I
    const/16 v1, 0x28

    if-le v2, v1, :cond_119

    .line 2546
    div-int/lit8 v1, v2, 0x8

    .line 2547
    .end local v2           #length:I
    .local v1, length:I
    add-int v2, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-static {p2, v0, v2, v5}, Ljava/util/Arrays;->med3([SIII)I

    move-result v0

    .line 2549
    sub-int v2, v3, v1

    add-int v5, v3, v1

    invoke-static {p2, v2, v3, v5}, Ljava/util/Arrays;->med3([SIII)I

    move-result v2

    .line 2550
    .end local v3           #middle:I
    .local v2, middle:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v5, v4, v1

    invoke-static {p2, v3, v5, v4}, Ljava/util/Arrays;->med3([SIII)I

    move-result v3

    .line 2552
    .end local v4           #top:I
    .local v3, top:I
    :goto_57
    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->med3([SIII)I

    move-result v0

    .end local v2           #middle:I
    .local v0, middle:I
    move v10, v0

    .end local v0           #middle:I
    .local v10, middle:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move v1, v10

    .line 2554
    .end local v3           #top:I
    .end local v10           #middle:I
    .local v1, middle:I
    :goto_5e
    aget-short v5, p2, v1

    .line 2556
    .local v5, partionValue:S
    move v1, p0

    .local v1, b:I
    move v0, p0

    .line 2557
    .local v0, a:I
    const/4 v2, 0x1

    sub-int v3, p1, v2

    .local v3, d:I
    move v2, v3

    .local v2, c:I
    move v4, v3

    .end local v3           #d:I
    .local v4, d:I
    move v3, v2

    .end local v2           #c:I
    .local v3, c:I
    move v2, v1

    .end local v1           #b:I
    .local v2, b:I
    move v1, v0

    .line 2559
    .end local v0           #a:I
    .local v1, a:I
    :goto_6a
    if-gt v2, v3, :cond_83

    aget-short v0, p2, v2

    if-gt v0, v5, :cond_83

    .line 2560
    aget-short v0, p2, v2

    if-ne v0, v5, :cond_116

    .line 2561
    aget-short v6, p2, v1

    .line 2562
    .local v6, temp:S
    add-int/lit8 v0, v1, 0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    aget-short v7, p2, v2

    aput-short v7, p2, v1

    .line 2563
    aput-short v6, p2, v2

    .line 2565
    .end local v6           #temp:S
    :goto_7e
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b:I
    .local v1, b:I
    move v2, v1

    .end local v1           #b:I
    .restart local v2       #b:I
    move v1, v0

    .end local v0           #a:I
    .local v1, a:I
    goto :goto_6a

    .line 2567
    :cond_83
    :goto_83
    if-lt v3, v2, :cond_9d

    aget-short v0, p2, v3

    if-lt v0, v5, :cond_9d

    .line 2568
    aget-short v0, p2, v3

    if-ne v0, v5, :cond_99

    .line 2569
    aget-short v6, p2, v3

    .line 2570
    .restart local v6       #temp:S
    aget-short v0, p2, v4

    aput-short v0, p2, v3

    .line 2571
    const/4 v0, 0x1

    sub-int v0, v4, v0

    .end local v4           #d:I
    .local v0, d:I
    aput-short v6, p2, v4

    move v4, v0

    .line 2573
    .end local v0           #d:I
    .end local v6           #temp:S
    .restart local v4       #d:I
    :cond_99
    add-int/lit8 v0, v3, -0x1

    .end local v3           #c:I
    .local v0, c:I
    move v3, v0

    .end local v0           #c:I
    .restart local v3       #c:I
    goto :goto_83

    .line 2575
    :cond_9d
    if-le v2, v3, :cond_c3

    .line 2582
    sub-int v0, v1, p0

    sub-int v5, v2, v1

    if-ge v0, v5, :cond_d3

    .end local v5           #partionValue:S
    sub-int v0, v1, p0

    move v6, v0

    .line 2583
    .local v6, length:I
    :goto_a8
    move v5, p0

    .line 2584
    .local v5, l:I
    sub-int v0, v2, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .local v10, h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 2585
    .end local v10           #h:I
    .local v5, h:I
    :goto_ae
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .local v7, length:I
    if-lez v6, :cond_d7

    .line 2586
    aget-short v8, p2, v0

    .line 2587
    .local v8, temp:S
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-short v9, p2, v5

    aput-short v9, p2, v0

    .line 2588
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-short v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_ae

    .line 2578
    .end local v0           #l:I
    .end local v6           #length:I
    .end local v8           #temp:S
    .local v5, partionValue:S
    :cond_c3
    aget-short v6, p2, v2

    .line 2579
    .local v6, temp:S
    add-int/lit8 v0, v2, 0x1

    .end local v2           #b:I
    .local v0, b:I
    aget-short v7, p2, v3

    aput-short v7, p2, v2

    .line 2580
    const/4 v2, 0x1

    sub-int v2, v3, v2

    .end local v3           #c:I
    .local v2, c:I
    aput-short v6, p2, v3

    move v3, v2

    .end local v2           #c:I
    .restart local v3       #c:I
    move v2, v0

    .end local v0           #b:I
    .local v2, b:I
    goto :goto_6a

    .line 2582
    .end local v5           #partionValue:S
    .end local v6           #temp:S
    :cond_d3
    sub-int v0, v2, v1

    move v6, v0

    goto :goto_a8

    .line 2590
    .local v0, l:I
    .local v5, h:I
    .restart local v7       #length:I
    :cond_d7
    sub-int v0, v4, v3

    const/4 v5, 0x1

    sub-int v5, p1, v5

    sub-int/2addr v5, v4

    if-ge v0, v5, :cond_fd

    .end local v0           #l:I
    .end local v5           #h:I
    sub-int v0, v4, v3

    move v6, v0

    .line 2591
    .end local v7           #length:I
    .local v6, length:I
    :goto_e2
    move v5, v2

    .line 2592
    .local v5, l:I
    sub-int v0, p1, v6

    .local v0, h:I
    move v10, v0

    .end local v0           #h:I
    .restart local v10       #h:I
    move v0, v5

    .end local v5           #l:I
    .local v0, l:I
    move v5, v10

    .line 2593
    .end local v10           #h:I
    .local v5, h:I
    :goto_e8
    const/4 v7, 0x1

    sub-int v7, v6, v7

    .end local v6           #length:I
    .restart local v7       #length:I
    if-lez v6, :cond_103

    .line 2594
    aget-short v8, p2, v0

    .line 2595
    .restart local v8       #temp:S
    add-int/lit8 v6, v0, 0x1

    .end local v0           #l:I
    .local v6, l:I
    aget-short v9, p2, v5

    aput-short v9, p2, v0

    .line 2596
    add-int/lit8 v0, v5, 0x1

    .end local v5           #h:I
    .local v0, h:I
    aput-short v8, p2, v5

    move v5, v0

    .end local v0           #h:I
    .restart local v5       #h:I
    move v0, v6

    .end local v6           #l:I
    .local v0, l:I
    move v6, v7

    .end local v7           #length:I
    .local v6, length:I
    goto :goto_e8

    .line 2590
    .end local v0           #l:I
    .end local v5           #h:I
    .end local v6           #length:I
    .end local v8           #temp:S
    .restart local v7       #length:I
    :cond_fd
    const/4 v0, 0x1

    sub-int v0, p1, v0

    sub-int/2addr v0, v4

    move v6, v0

    goto :goto_e2

    .line 2598
    .restart local v0       #l:I
    .restart local v5       #h:I
    :cond_103
    sub-int v0, v2, v1

    .end local v7           #length:I
    .local v0, length:I
    if-lez v0, :cond_10b

    .line 2599
    add-int/2addr v0, p0

    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->sort(II[S)V

    .line 2601
    .end local v0           #length:I
    :cond_10b
    sub-int p0, v4, v3

    .local p0, length:I
    if-lez p0, :cond_2a

    .line 2602
    sub-int v0, p1, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort(II[S)V

    goto/16 :goto_2a

    .local v5, partionValue:S
    .local p0, start:I
    :cond_116
    move v0, v1

    .end local v1           #a:I
    .local v0, a:I
    goto/16 :goto_7e

    .end local v5           #partionValue:S
    .local v0, bottom:I
    .local v2, length:I
    .local v3, middle:I
    .local v4, top:I
    :cond_119
    move v1, v2

    .end local v2           #length:I
    .local v1, length:I
    move v2, v3

    .end local v3           #middle:I
    .local v2, middle:I
    move v3, v4

    .end local v4           #top:I
    .local v3, top:I
    goto/16 :goto_57

    .end local v0           #bottom:I
    .end local v1           #length:I
    .local v2, length:I
    .local v3, middle:I
    :cond_11e
    move v1, v3

    .end local v3           #middle:I
    .local v1, middle:I
    move v0, v2

    .end local v2           #length:I
    .local v0, length:I
    goto/16 :goto_5e
.end method

.method public static sort([B)V
    .registers 3
    .parameter "array"

    .prologue
    .line 1693
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[B)V

    .line 1694
    return-void
.end method

.method public static sort([BII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1712
    if-nez p0, :cond_8

    .line 1713
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1715
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 1716
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[B)V

    .line 1717
    return-void
.end method

.method public static sort([C)V
    .registers 3
    .parameter "array"

    .prologue
    .line 1815
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[C)V

    .line 1816
    return-void
.end method

.method public static sort([CII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1834
    if-nez p0, :cond_8

    .line 1835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1837
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 1838
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[C)V

    .line 1839
    return-void
.end method

.method public static sort([D)V
    .registers 3
    .parameter "array"

    .prologue
    .line 1928
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[D)V

    .line 1929
    return-void
.end method

.method public static sort([DII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1949
    if-nez p0, :cond_8

    .line 1950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1952
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 1953
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[D)V

    .line 1954
    return-void
.end method

.method public static sort([F)V
    .registers 3
    .parameter "array"

    .prologue
    .line 2043
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[F)V

    .line 2044
    return-void
.end method

.method public static sort([FII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2064
    if-nez p0, :cond_8

    .line 2065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2067
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 2068
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[F)V

    .line 2069
    return-void
.end method

.method public static sort([I)V
    .registers 3
    .parameter "array"

    .prologue
    .line 2157
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[I)V

    .line 2158
    return-void
.end method

.method public static sort([III)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2176
    if-nez p0, :cond_8

    .line 2177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2179
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 2180
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[I)V

    .line 2181
    return-void
.end method

.method public static sort([J)V
    .registers 3
    .parameter "array"

    .prologue
    .line 2269
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[J)V

    .line 2270
    return-void
.end method

.method public static sort([JII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2288
    if-nez p0, :cond_8

    .line 2289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2291
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 2292
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[J)V

    .line 2293
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .registers 1
    .parameter "array"

    .prologue
    .line 2420
    invoke-static {p0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;)V

    .line 2421
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2445
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 2446
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2472
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 2473
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2489
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2490
    return-void
.end method

.method public static sort([S)V
    .registers 3
    .parameter "array"

    .prologue
    .line 2502
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->sort(II[S)V

    .line 2503
    return-void
.end method

.method public static sort([SII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2521
    if-nez p0, :cond_8

    .line 2522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2524
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkBounds(III)V

    .line 2525
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->sort(II[S)V

    .line 2526
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2653
    if-nez p0, :cond_5

    .line 2654
    const-string v2, "null"

    .line 2667
    :goto_4
    return-object v2

    .line 2656
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2657
    const-string v2, "[]"

    goto :goto_4

    .line 2659
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2660
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2661
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2662
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2663
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2662
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2666
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2667
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([C)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2685
    if-nez p0, :cond_5

    .line 2686
    const-string v2, "null"

    .line 2699
    :goto_4
    return-object v2

    .line 2688
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2689
    const-string v2, "[]"

    goto :goto_4

    .line 2691
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2692
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2693
    const/4 v2, 0x0

    aget-char v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2694
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2695
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2694
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2698
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2699
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([D)Ljava/lang/String;
    .registers 5
    .parameter "array"

    .prologue
    .line 2717
    if-nez p0, :cond_5

    .line 2718
    const-string v2, "null"

    .line 2731
    :goto_4
    return-object v2

    .line 2720
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2721
    const-string v2, "[]"

    goto :goto_4

    .line 2723
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2724
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2725
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2726
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2727
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2726
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2730
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([F)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2749
    if-nez p0, :cond_5

    .line 2750
    const-string v2, "null"

    .line 2763
    :goto_4
    return-object v2

    .line 2752
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2753
    const-string v2, "[]"

    goto :goto_4

    .line 2755
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2756
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2757
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2758
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2759
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2758
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2762
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2781
    if-nez p0, :cond_5

    .line 2782
    const-string v2, "null"

    .line 2795
    :goto_4
    return-object v2

    .line 2784
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2785
    const-string v2, "[]"

    goto :goto_4

    .line 2787
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2788
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2789
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2790
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2791
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2790
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2794
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2795
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([J)Ljava/lang/String;
    .registers 5
    .parameter "array"

    .prologue
    .line 2813
    if-nez p0, :cond_5

    .line 2814
    const-string v2, "null"

    .line 2827
    :goto_4
    return-object v2

    .line 2816
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2817
    const-string v2, "[]"

    goto :goto_4

    .line 2819
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2820
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2821
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2822
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2823
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2822
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2826
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2827
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2877
    if-nez p0, :cond_5

    .line 2878
    const-string v2, "null"

    .line 2891
    :goto_4
    return-object v2

    .line 2880
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2881
    const-string v2, "[]"

    goto :goto_4

    .line 2883
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2884
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2885
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2886
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2887
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2886
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2890
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2891
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([S)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2845
    if-nez p0, :cond_5

    .line 2846
    const-string v2, "null"

    .line 2859
    :goto_4
    return-object v2

    .line 2848
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2849
    const-string v2, "[]"

    goto :goto_4

    .line 2851
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2852
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2853
    const/4 v2, 0x0

    aget-short v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2854
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2855
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2854
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2858
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2859
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([Z)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2621
    if-nez p0, :cond_5

    .line 2622
    const-string v2, "null"

    .line 2635
    :goto_4
    return-object v2

    .line 2624
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2625
    const-string v2, "[]"

    goto :goto_4

    .line 2627
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2628
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2629
    const/4 v2, 0x0

    aget-boolean v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2630
    const/4 v0, 0x1

    .local v0, i:I
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 2631
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    aget-boolean v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2630
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2634
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2635
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method
