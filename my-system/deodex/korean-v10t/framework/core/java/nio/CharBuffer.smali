.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/Readable;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Ljava/nio/Buffer;-><init>(I)V

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Ljava/nio/CharBuffer;->_elementSizeShift:I

    .line 173
    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 54
    if-gez p0, :cond_8

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_8
    invoke-static {p0}, Ljava/nio/BufferFactory;->newCharBuffer(I)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "chseq"

    .prologue
    .line 123
    invoke-static {p0}, Ljava/nio/BufferFactory;->newCharBuffer(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "chseq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 148
    if-nez p0, :cond_8

    .line 149
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 151
    :cond_8
    if-ltz p1, :cond_12

    if-lt p2, p1, :cond_12

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_18

    .line 152
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 155
    :cond_18
    invoke-static {p0}, Ljava/nio/BufferFactory;->newCharBuffer(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 156
    .local v0, result:Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/CharBuffer;->position:I

    .line 157
    iput p2, v0, Ljava/nio/CharBuffer;->limit:I

    .line 158
    return-object v0
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 73
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .registers 9
    .parameter "array"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 97
    array-length v1, p0

    .line 98
    .local v1, length:I
    if-ltz p1, :cond_d

    if-ltz p2, :cond_d

    int-to-long v2, p1

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 100
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 103
    :cond_13
    invoke-static {p0}, Ljava/nio/BufferFactory;->newCharBuffer([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 104
    .local v0, buf:Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/CharBuffer;->position:I

    .line 105
    add-int v2, p1, p2

    iput v2, v0, Ljava/nio/CharBuffer;->limit:I

    .line 107
    return-object v0
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 214
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method _arrayOffset()I
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    .line 222
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "csq"

    .prologue
    .line 808
    if-eqz p1, :cond_b

    .line 809
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 811
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_a
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 836
    if-nez p1, :cond_4

    .line 837
    const-string p1, "null"

    .line 839
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 840
    .local v0, cs:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 841
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 843
    :goto_16
    return-object v1

    :cond_17
    move-object v1, p0

    goto :goto_16
.end method

.method public final array()[C
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArray()[C

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 259
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-lt p1, v0, :cond_e

    .line 260
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 262
    :cond_e
    iget v0, p0, Ljava/nio/CharBuffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 296
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/CharBuffer;->position:I

    .line 297
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/CharBuffer;->position:I

    .line 299
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_32

    .line 300
    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    .line 301
    .local v3, thisByte:C
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    .line 302
    .local v1, otherByte:C
    if-eq v3, v1, :cond_2b

    .line 303
    if-ge v3, v1, :cond_29

    const/4 v5, -0x1

    .line 309
    .end local v1           #otherByte:C
    .end local v3           #thisByte:C
    :goto_22
    return v5

    .line 294
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_23
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 303
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherByte:C
    .restart local v2       #otherPos:I
    .restart local v3       #thisByte:C
    .restart local v4       #thisPos:I
    :cond_29
    const/4 v5, 0x1

    goto :goto_22

    .line 305
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 309
    .end local v1           #otherByte:C
    .end local v3           #thisByte:C
    :cond_32
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_22
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 345
    instance-of v7, p1, Ljava/nio/CharBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 361
    :goto_6
    return v7

    .line 348
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    move-object v4, v0

    .line 350
    .local v4, otherBuffer:Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 351
    goto :goto_6

    .line 354
    :cond_17
    iget v2, p0, Ljava/nio/CharBuffer;->position:I

    .line 355
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/CharBuffer;->position:I

    .line 356
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 357
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_39

    iget v7, p0, Ljava/nio/CharBuffer;->limit:I

    if-ge v3, v7, :cond_39

    .line 358
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/CharBuffer;->get(I)C

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->get(I)C

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

    .line 361
    goto :goto_6
.end method

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "dest"

    .prologue
    .line 390
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .registers 10
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 414
    array-length v1, p1

    .line 415
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 416
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 419
    :cond_13
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 420
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 422
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2d

    .line 423
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    aput-char v2, p1, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 425
    :cond_2d
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 459
    iget v1, p0, Ljava/nio/CharBuffer;->position:I

    .line 460
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 461
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/CharBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 462
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 464
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 488
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[C
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "str"

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .registers 8
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 690
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 691
    .local v1, length:I
    if-ltz p2, :cond_a

    if-lt p3, p2, :cond_a

    if-le p3, v1, :cond_10

    .line 692
    :cond_a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 695
    :cond_10
    sub-int v2, p3, p2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1e

    .line 696
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 698
    :cond_1e
    move v0, p2

    .local v0, i:I
    :goto_1f
    if-ge v0, p3, :cond_2b

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 701
    :cond_2b
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 617
    if-ne p1, p0, :cond_8

    .line 618
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 620
    :cond_8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 621
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 624
    :cond_18
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [C

    .line 625
    .local v0, contents:[C
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 626
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 627
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 559
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 10
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 585
    array-length v1, p1

    .line 586
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 587
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 590
    :cond_13
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 591
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 593
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2c

    .line 594
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 596
    :cond_2c
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 6
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    if-ne p1, p0, :cond_8

    .line 866
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 868
    :cond_8
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_18

    .line 869
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    .line 875
    :goto_15
    return v2

    .line 869
    :cond_16
    const/4 v2, -0x1

    goto :goto_15

    .line 871
    :cond_18
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 872
    .local v1, result:I
    new-array v0, v1, [C

    .line 873
    .local v0, chars:[C
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 874
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    move v2, v1

    .line 875
    goto :goto_15
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public abstract subSequence(II)Ljava/lang/CharSequence;
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 764
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 765
    .local v1, strbuf:Ljava/lang/StringBuffer;
    iget v0, p0, Ljava/nio/CharBuffer;->position:I

    .local v0, i:I
    :goto_7
    iget v2, p0, Ljava/nio/CharBuffer;->limit:I

    if-ge v0, v2, :cond_15

    .line 766
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 768
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
