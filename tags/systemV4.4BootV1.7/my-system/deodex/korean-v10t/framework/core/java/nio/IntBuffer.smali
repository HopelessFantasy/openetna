.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
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
    const/4 v0, 0x2

    iput v0, p0, Ljava/nio/IntBuffer;->_elementSizeShift:I

    .line 116
    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 48
    if-gez p0, :cond_8

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_8
    invoke-static {p0}, Ljava/nio/BufferFactory;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([I)Ljava/nio/IntBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 67
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .registers 8
    .parameter "array"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 91
    if-nez p0, :cond_8

    .line 92
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 94
    :cond_8
    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    int-to-long v1, p2

    int-to-long v3, p1

    add-long/2addr v1, v3

    array-length v3, p0

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    .line 95
    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 98
    :cond_1b
    invoke-static {p0}, Ljava/nio/BufferFactory;->newIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 99
    .local v0, buf:Ljava/nio/IntBuffer;
    iput p1, v0, Ljava/nio/IntBuffer;->position:I

    .line 100
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/IntBuffer;->limit:I

    .line 102
    return-object v0
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    .line 156
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method _arrayOffset()I
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    .line 163
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final array()[I
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArray()[I

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ljava/nio/IntBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 216
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/IntBuffer;->position:I

    .line 217
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/IntBuffer;->position:I

    .line 220
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_32

    .line 221
    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 222
    .local v3, thisInt:I
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 223
    .local v1, otherInt:I
    if-eq v3, v1, :cond_2b

    .line 224
    if-ge v3, v1, :cond_29

    const/4 v5, -0x1

    .line 231
    .end local v1           #otherInt:I
    .end local v3           #thisInt:I
    :goto_22
    return v5

    .line 214
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_23
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 224
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherInt:I
    .restart local v2       #otherPos:I
    .restart local v3       #thisInt:I
    .restart local v4       #thisPos:I
    :cond_29
    const/4 v5, 0x1

    goto :goto_22

    .line 226
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 231
    .end local v1           #otherInt:I
    .end local v3           #thisInt:I
    :cond_32
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_22
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 267
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 283
    :goto_6
    return v7

    .line 270
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    move-object v4, v0

    .line 272
    .local v4, otherBuffer:Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 273
    goto :goto_6

    .line 276
    :cond_17
    iget v2, p0, Ljava/nio/IntBuffer;->position:I

    .line 277
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/IntBuffer;->position:I

    .line 278
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 279
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_39

    iget v7, p0, Ljava/nio/IntBuffer;->limit:I

    if-ge v3, v7, :cond_39

    .line 280
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_37

    const/4 v7, 0x1

    move v1, v7

    :goto_34
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
    :cond_37
    move v1, v9

    goto :goto_34

    .end local v2           #myPosition:I
    .end local v5           #otherPosition:I
    .restart local v3       #myPosition:I
    .restart local v6       #otherPosition:I
    :cond_39
    move v7, v1

    .line 283
    goto :goto_6
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .registers 4
    .parameter "dest"

    .prologue
    .line 312
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .registers 10
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 336
    array-length v1, p1

    .line 337
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p3

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 338
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 340
    :cond_13
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 341
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 343
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2d

    .line 344
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    aput v2, p1, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 346
    :cond_2d
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 369
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 380
    iget v1, p0, Ljava/nio/IntBuffer;->position:I

    .line 381
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 382
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/IntBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 383
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 385
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[I
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 528
    if-ne p1, p0, :cond_8

    .line 529
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 531
    :cond_8
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 532
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 534
    :cond_18
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [I

    .line 535
    .local v0, contents:[I
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 536
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 537
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 470
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .registers 10
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 496
    array-length v1, p1

    .line 497
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p3

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 498
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 501
    :cond_13
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 502
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 504
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2c

    .line 505
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 507
    :cond_2c
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    const-string v1, ", status: capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 588
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 590
    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
