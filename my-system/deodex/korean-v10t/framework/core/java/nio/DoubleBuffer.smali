.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Ljava/nio/Buffer;-><init>(I)V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/DoubleBuffer;->_elementSizeShift:I

    .line 116
    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 50
    if-gez p0, :cond_8

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_8
    invoke-static {p0}, Ljava/nio/BufferFactory;->newDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .registers 9
    .parameter "array"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 93
    array-length v1, p0

    .line 94
    .local v1, length:I
    if-ltz p1, :cond_d

    if-ltz p2, :cond_d

    int-to-long v2, p1

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 95
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 98
    :cond_13
    invoke-static {p0}, Ljava/nio/BufferFactory;->newDoubleBuffer([D)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 99
    .local v0, buf:Ljava/nio/DoubleBuffer;
    iput p1, v0, Ljava/nio/DoubleBuffer;->position:I

    .line 100
    add-int v2, p1, p2

    iput v2, v0, Ljava/nio/DoubleBuffer;->limit:I

    .line 102
    return-object v0
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    .line 157
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method _arrayOffset()I
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->arrayOffset()I

    move-result v0

    .line 165
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final array()[D
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArray()[D

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/nio/DoubleBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .registers 11
    .parameter "otherBuffer"

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_2f

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    move v0, v7

    .line 218
    .local v0, compareRemaining:I
    :goto_f
    iget v6, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 219
    .local v6, thisPos:I
    iget v3, p1, Ljava/nio/DoubleBuffer;->position:I

    .line 222
    .local v3, otherPos:I
    :goto_13
    if-lez v0, :cond_3e

    .line 223
    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    .line 224
    .local v4, thisDouble:D
    invoke-virtual {p1, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    .line 226
    .local v1, otherDouble:D
    cmpl-double v7, v4, v1

    if-eqz v7, :cond_37

    cmpl-double v7, v4, v4

    if-eqz v7, :cond_29

    cmpl-double v7, v1, v1

    if-nez v7, :cond_37

    .line 228
    :cond_29
    cmpg-double v7, v4, v1

    if-gez v7, :cond_35

    const/4 v7, -0x1

    .line 235
    .end local v1           #otherDouble:D
    .end local v4           #thisDouble:D
    :goto_2e
    return v7

    .line 216
    .end local v0           #compareRemaining:I
    .end local v3           #otherPos:I
    .end local v6           #thisPos:I
    :cond_2f
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    move v0, v7

    goto :goto_f

    .line 228
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherDouble:D
    .restart local v3       #otherPos:I
    .restart local v4       #thisDouble:D
    .restart local v6       #thisPos:I
    :cond_35
    const/4 v7, 0x1

    goto :goto_2e

    .line 230
    :cond_37
    add-int/lit8 v6, v6, 0x1

    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 235
    .end local v1           #otherDouble:D
    .end local v4           #thisDouble:D
    :cond_3e
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_2e
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "other"

    .prologue
    const/4 v11, 0x0

    .line 271
    instance-of v7, p1, Ljava/nio/DoubleBuffer;

    if-nez v7, :cond_7

    move v7, v11

    .line 287
    :goto_6
    return v7

    .line 274
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/DoubleBuffer;

    move-object v4, v0

    .line 276
    .local v4, otherBuffer:Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v11

    .line 277
    goto :goto_6

    .line 280
    :cond_17
    iget v2, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 281
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/DoubleBuffer;->position:I

    .line 282
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 283
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_3b

    iget v7, p0, Ljava/nio/DoubleBuffer;->limit:I

    if-ge v3, v7, :cond_3b

    .line 284
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-nez v7, :cond_39

    const/4 v7, 0x1

    move v1, v7

    :goto_36
    move v6, v5

    .end local v5           #otherPosition:I
    .restart local v6       #otherPosition:I
    move v3, v2

    .end local v2           #myPosition:I
    .restart local v3       #myPosition:I
    goto :goto_1e

    .end local v3           #myPosition:I
    .end local v6           #otherPosition:I
    .restart local v2       #myPosition:I
    .restart local v5       #otherPosition:I
    :cond_39
    move v1, v11

    goto :goto_36

    .end local v2           #myPosition:I
    .end local v5           #otherPosition:I
    .restart local v3       #myPosition:I
    .restart local v6       #otherPosition:I
    :cond_3b
    move v7, v1

    .line 287
    goto :goto_6
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .parameter "dest"

    .prologue
    .line 317
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .registers 10
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 341
    array-length v1, p1

    .line 342
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 343
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 346
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 347
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 349
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2d

    .line 350
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 352
    :cond_2d
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 387
    iget v3, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 388
    .local v3, myPosition:I
    const/4 v0, 0x0

    .line 390
    .local v0, hash:I
    :goto_3
    iget v5, p0, Ljava/nio/DoubleBuffer;->limit:I

    if-ge v3, v5, :cond_1c

    .line 391
    add-int/lit8 v4, v3, 0x1

    .end local v3           #myPosition:I
    .local v4, myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 392
    .local v1, l:J
    long-to-int v5, v1

    add-int/2addr v5, v0

    const/16 v6, 0x20

    shr-long v6, v1, v6

    long-to-int v6, v6

    xor-int v0, v5, v6

    move v3, v4

    .end local v4           #myPosition:I
    .restart local v3       #myPosition:I
    goto :goto_3

    .line 394
    .end local v1           #l:J
    :cond_1c
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[D
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 537
    if-ne p1, p0, :cond_8

    .line 538
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 540
    :cond_8
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 541
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 543
    :cond_18
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [D

    .line 544
    .local v0, doubles:[D
    invoke-virtual {p1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 545
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 546
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 479
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .registers 10
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 505
    array-length v1, p1

    .line 506
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 507
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 510
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 511
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 513
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2c

    .line 514
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 516
    :cond_2c
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 594
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    const-string v1, ", status: capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 597
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 599
    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
