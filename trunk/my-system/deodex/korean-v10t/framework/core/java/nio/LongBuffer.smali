.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/nio/Buffer;-><init>(I)V

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/LongBuffer;->_elementSizeShift:I

    .line 117
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
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
    invoke-static {p0}, Ljava/nio/BufferFactory;->newLongBuffer(I)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .registers 8
    .parameter "array"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 92
    if-nez p0, :cond_8

    .line 93
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 95
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

    .line 96
    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 99
    :cond_1b
    invoke-static {p0}, Ljava/nio/BufferFactory;->newLongBuffer([J)Ljava/nio/LongBuffer;

    move-result-object v0

    .line 100
    .local v0, buf:Ljava/nio/LongBuffer;
    iput p1, v0, Ljava/nio/LongBuffer;->position:I

    .line 101
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/LongBuffer;->limit:I

    .line 103
    return-object v0
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

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
    .line 161
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->arrayOffset()I

    move-result v0

    .line 164
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final array()[J
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArray()[J

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Ljava/nio/LongBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .registers 11
    .parameter "otherBuffer"

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_27

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    move v0, v7

    .line 217
    .local v0, compareRemaining:I
    :goto_f
    iget v6, p0, Ljava/nio/LongBuffer;->position:I

    .line 218
    .local v6, thisPos:I
    iget v3, p1, Ljava/nio/LongBuffer;->position:I

    .line 221
    .local v3, otherPos:I
    :goto_13
    if-lez v0, :cond_36

    .line 222
    invoke-virtual {p0, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    .line 223
    .local v4, thisLong:J
    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 224
    .local v1, otherLong:J
    cmp-long v7, v4, v1

    if-eqz v7, :cond_2f

    .line 225
    cmp-long v7, v4, v1

    if-gez v7, :cond_2d

    const/4 v7, -0x1

    .line 232
    .end local v1           #otherLong:J
    .end local v4           #thisLong:J
    :goto_26
    return v7

    .line 215
    .end local v0           #compareRemaining:I
    .end local v3           #otherPos:I
    .end local v6           #thisPos:I
    :cond_27
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    move v0, v7

    goto :goto_f

    .line 225
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherLong:J
    .restart local v3       #otherPos:I
    .restart local v4       #thisLong:J
    .restart local v6       #thisPos:I
    :cond_2d
    const/4 v7, 0x1

    goto :goto_26

    .line 227
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 229
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 232
    .end local v1           #otherLong:J
    .end local v4           #thisLong:J
    :cond_36
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_26
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "other"

    .prologue
    const/4 v11, 0x0

    .line 268
    instance-of v7, p1, Ljava/nio/LongBuffer;

    if-nez v7, :cond_7

    move v7, v11

    .line 284
    :goto_6
    return v7

    .line 271
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    move-object v4, v0

    .line 273
    .local v4, otherBuffer:Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v11

    .line 274
    goto :goto_6

    .line 277
    :cond_17
    iget v2, p0, Ljava/nio/LongBuffer;->position:I

    .line 278
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/LongBuffer;->position:I

    .line 279
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 280
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_3b

    iget v7, p0, Ljava/nio/LongBuffer;->limit:I

    if-ge v3, v7, :cond_3b

    .line 281
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v9

    cmp-long v7, v7, v9

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

    .line 284
    goto :goto_6
.end method

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "dest"

    .prologue
    .line 313
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .registers 10
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 337
    array-length v1, p1

    .line 338
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p3

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 339
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 342
    :cond_13
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 343
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 345
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2d

    .line 346
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 348
    :cond_2d
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 382
    iget v3, p0, Ljava/nio/LongBuffer;->position:I

    .line 383
    .local v3, myPosition:I
    const/4 v0, 0x0

    .line 385
    .local v0, hash:I
    :goto_3
    iget v5, p0, Ljava/nio/LongBuffer;->limit:I

    if-ge v3, v5, :cond_18

    .line 386
    add-int/lit8 v4, v3, 0x1

    .end local v3           #myPosition:I
    .local v4, myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 387
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

    .line 389
    .end local v1           #l:J
    :cond_18
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[J
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 532
    if-ne p1, p0, :cond_8

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 535
    :cond_8
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 536
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 538
    :cond_18
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [J

    .line 539
    .local v0, contents:[J
    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 540
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 541
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 474
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .registers 10
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 500
    array-length v1, p1

    .line 501
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p3

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 502
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 505
    :cond_13
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 506
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 508
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2c

    .line 509
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 511
    :cond_2c
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 589
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    const-string v1, ", status: capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 592
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 594
    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
