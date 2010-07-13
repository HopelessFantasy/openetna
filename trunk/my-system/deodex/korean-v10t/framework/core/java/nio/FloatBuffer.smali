.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ljava/nio/Buffer;-><init>(I)V

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Ljava/nio/FloatBuffer;->_elementSizeShift:I

    .line 118
    return-void
.end method

.method public static allocate(I)Ljava/nio/FloatBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    if-gez p0, :cond_8

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_8
    invoke-static {p0}, Ljava/nio/BufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([F)Ljava/nio/FloatBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([FII)Ljava/nio/FloatBuffer;
    .registers 8
    .parameter "array"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 94
    if-nez p0, :cond_8

    .line 95
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 97
    :cond_8
    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    int-to-long v1, p1

    int-to-long v3, p2

    add-long/2addr v1, v3

    array-length v3, p0

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    .line 98
    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 101
    :cond_1b
    invoke-static {p0}, Ljava/nio/BufferFactory;->newFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 102
    .local v0, buf:Ljava/nio/FloatBuffer;
    iput p1, v0, Ljava/nio/FloatBuffer;->position:I

    .line 103
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/FloatBuffer;->limit:I

    .line 105
    return-object v0
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    .line 158
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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->arrayOffset()I

    move-result v0

    .line 165
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final array()[F
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArray()[F

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Ljava/nio/FloatBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/FloatBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_2f

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 218
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/FloatBuffer;->position:I

    .line 219
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/FloatBuffer;->position:I

    .line 222
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_3e

    .line 223
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    .line 224
    .local v3, thisFloat:F
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 226
    .local v1, otherFloat:F
    cmpl-float v5, v3, v1

    if-eqz v5, :cond_37

    cmpl-float v5, v3, v3

    if-eqz v5, :cond_29

    cmpl-float v5, v1, v1

    if-nez v5, :cond_37

    .line 228
    :cond_29
    cmpg-float v5, v3, v1

    if-gez v5, :cond_35

    const/4 v5, -0x1

    .line 235
    .end local v1           #otherFloat:F
    .end local v3           #thisFloat:F
    :goto_2e
    return v5

    .line 216
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_2f
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 228
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherFloat:F
    .restart local v2       #otherPos:I
    .restart local v3       #thisFloat:F
    .restart local v4       #thisPos:I
    :cond_35
    const/4 v5, 0x1

    goto :goto_2e

    .line 230
    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 231
    add-int/lit8 v2, v2, 0x1

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 235
    .end local v1           #otherFloat:F
    .end local v3           #thisFloat:F
    :cond_3e
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2e
.end method

.method public abstract duplicate()Ljava/nio/FloatBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 271
    instance-of v7, p1, Ljava/nio/FloatBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 287
    :goto_6
    return v7

    .line 274
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    move-object v4, v0

    .line 276
    .local v4, otherBuffer:Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 277
    goto :goto_6

    .line 280
    :cond_17
    iget v2, p0, Ljava/nio/FloatBuffer;->position:I

    .line 281
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/FloatBuffer;->position:I

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

    iget v7, p0, Ljava/nio/FloatBuffer;->limit:I

    if-ge v3, v7, :cond_3b

    .line 284
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    cmpl-float v7, v7, v8

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
    move v1, v9

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

.method public abstract get()F
.end method

.method public abstract get(I)F
.end method

.method public get([F)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "dest"

    .prologue
    .line 317
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    aput v2, p1, v0

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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 387
    iget v1, p0, Ljava/nio/FloatBuffer;->position:I

    .line 388
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 389
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/FloatBuffer;->limit:I

    if-ge v1, v3, :cond_14

    .line 390
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 392
    :cond_14
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[F
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract put(IF)Ljava/nio/FloatBuffer;
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 535
    if-ne p1, p0, :cond_8

    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 538
    :cond_8
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 539
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 541
    :cond_18
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [F

    .line 542
    .local v0, contents:[F
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 543
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 544
    return-object p0
.end method

.method public final put([F)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 477
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .registers 10
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 503
    array-length v1, p1

    .line 504
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 505
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 508
    :cond_13
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 509
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 511
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2c

    .line 512
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 514
    :cond_2c
    return-object p0
.end method

.method public abstract slice()Ljava/nio/FloatBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 592
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    const-string v1, ", status: capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 595
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 597
    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
