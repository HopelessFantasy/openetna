.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Lorg/apache/harmony/luni/platform/Endianness;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Ljava/nio/Buffer;-><init>(I)V

    .line 126
    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/ByteBuffer;->_elementSizeShift:I

    .line 140
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 51
    if-gez p0, :cond_8

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_8
    invoke-static {p0}, Ljava/nio/BufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 68
    if-gez p0, :cond_8

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_8
    invoke-static {p0}, Ljava/nio/BufferFactory;->newDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 87
    invoke-static {p0}, Ljava/nio/BufferFactory;->newByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .parameter "array"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 111
    array-length v1, p0

    .line 112
    .local v1, length:I
    if-ltz p1, :cond_d

    if-ltz p2, :cond_d

    int-to-long v2, p1

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 113
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 116
    :cond_13
    invoke-static {p0}, Ljava/nio/BufferFactory;->newByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    .local v0, buf:Ljava/nio/ByteBuffer;
    iput p1, v0, Ljava/nio/ByteBuffer;->position:I

    .line 118
    add-int v2, p1, p2

    iput v2, v0, Ljava/nio/ByteBuffer;->limit:I

    .line 120
    return-object v0
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 181
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method _arrayOffset()I
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 189
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final array()[B
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 364
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/ByteBuffer;->position:I

    .line 365
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/ByteBuffer;->position:I

    .line 367
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_32

    .line 368
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 369
    .local v3, thisByte:B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 370
    .local v1, otherByte:B
    if-eq v3, v1, :cond_2b

    .line 371
    if-ge v3, v1, :cond_29

    const/4 v5, -0x1

    .line 377
    .end local v1           #otherByte:B
    .end local v3           #thisByte:B
    :goto_22
    return v5

    .line 362
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 371
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherByte:B
    .restart local v2       #otherPos:I
    .restart local v3       #thisByte:B
    .restart local v4       #thisPos:I
    :cond_29
    const/4 v5, 0x1

    goto :goto_22

    .line 373
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 374
    add-int/lit8 v2, v2, 0x1

    .line 375
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 377
    .end local v1           #otherByte:B
    .end local v3           #thisByte:B
    :cond_32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_22
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 413
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 429
    :goto_6
    return v7

    .line 416
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v4, v0

    .line 418
    .local v4, otherBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 419
    goto :goto_6

    .line 422
    :cond_17
    iget v2, p0, Ljava/nio/ByteBuffer;->position:I

    .line 423
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/ByteBuffer;->position:I

    .line 424
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 425
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_39

    iget v7, p0, Ljava/nio/ByteBuffer;->limit:I

    if-ge v3, v7, :cond_39

    .line 426
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get(I)B

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

    .line 429
    goto :goto_6
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "dest"

    .prologue
    .line 458
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 10
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 482
    array-length v1, p1

    .line 483
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 484
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 487
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 488
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 490
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2d

    .line 491
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, p1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 493
    :cond_2d
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 711
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 722
    iget v1, p0, Ljava/nio/ByteBuffer;->position:I

    .line 723
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 724
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/ByteBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 725
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 727
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "byteOrder"

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 3

    .prologue
    .line 751
    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v1, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v0, v1, :cond_9

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_8
.end method

.method orderImpl(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "byteOrder"

    .prologue
    .line 770
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_9

    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    :goto_6
    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    .line 772
    return-object p0

    .line 770
    :cond_9
    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->LITTLE_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    goto :goto_6
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 890
    if-ne p1, p0, :cond_8

    .line 891
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 893
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 894
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 896
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 897
    .local v0, contents:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 898
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 899
    return-object p0
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 832
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 10
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 858
    array-length v1, p1

    .line 859
    .local v1, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 860
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 863
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 864
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 866
    :cond_1f
    move v0, p2

    .local v0, i:I
    :goto_20
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2c

    .line 867
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 869
    :cond_2c
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1181
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1182
    const-string v1, ", status: capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1184
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1186
    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1188
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
