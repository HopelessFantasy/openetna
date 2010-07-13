.class final Ljava/nio/ReadWriteDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadWriteDirectByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;-><init>(I)V

    .line 52
    return-void
.end method

.method constructor <init>(II)V
    .registers 5
    .parameter "pointer"
    .parameter "capacity"

    .prologue
    .line 56
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V
    .registers 4
    .parameter "address"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 62
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V
    .registers 5
    .parameter "address"
    .parameter "aCapacity"
    .parameter "anOffset"

    .prologue
    .line 66
    new-instance v0, Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-direct {v0, p1}, Ljava/nio/DirectByteBuffer$SafeAddress;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 67
    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 41
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 43
    .local v0, buf:Ljava/nio/ReadWriteDirectByteBuffer;
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    .line 44
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 45
    iput p1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    .line 46
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ReadWriteDirectByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 81
    .local v0, effectiveAddress:Lorg/apache/harmony/luni/platform/PlatformAddress;
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->moveTo(Lorg/apache/harmony/luni/platform/PlatformAddress;J)V

    .line 83
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 84
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->capacity:I

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    .line 86
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getAddress()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    iget-object v0, v0, Ljava/nio/DirectByteBuffer$SafeAddress;->address:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 98
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 99
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 101
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setByte(IB)V

    .line 102
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 106
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 107
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setByte(IB)V

    .line 110
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 121
    array-length v0, p1

    .line 122
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v1, p2

    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 123
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 125
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 126
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 128
    :cond_1f
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 129
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 131
    :cond_2b
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setByteArray(I[BII)V

    .line 133
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 134
    return-object p0
.end method

.method put([III)Ljava/nio/ByteBuffer;
    .registers 11
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 202
    array-length v6, p1

    .line 203
    .local v6, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    int-to-long v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 204
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 206
    :cond_13
    shl-int/lit8 v0, p3, 0x2

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_21

    .line 207
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 209
    :cond_21
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 210
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 212
    :cond_2d
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-eq v0, v1, :cond_50

    const/4 v0, 0x1

    move v5, v0

    .line 213
    .local v5, swap:Z
    :goto_39
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setIntArray(I[IIIZ)V

    .line 214
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    shl-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 215
    return-object p0

    .line 212
    .end local v5           #swap:Z
    :cond_50
    const/4 v0, 0x0

    move v5, v0

    goto :goto_39
.end method

.method put([SII)Ljava/nio/ByteBuffer;
    .registers 11
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 162
    array-length v6, p1

    .line 163
    .local v6, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    int-to-long v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 164
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 166
    :cond_13
    shl-int/lit8 v0, p3, 0x1

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_21

    .line 167
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 169
    :cond_21
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 170
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 172
    :cond_2d
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-eq v0, v1, :cond_50

    const/4 v0, 0x1

    move v5, v0

    .line 173
    .local v5, swap:Z
    :goto_39
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setShortArray(I[SIIZ)V

    .line 174
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    shl-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 175
    return-object p0

    .line 172
    .end local v5           #swap:Z
    :cond_50
    const/4 v0, 0x0

    move v5, v0

    goto :goto_39
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 220
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 221
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 222
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 224
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V

    .line 225
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 226
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "index"
    .parameter "value"

    .prologue
    .line 230
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 231
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 233
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, p2, p3, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V

    .line 234
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 238
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 239
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 240
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 242
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V

    .line 243
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 244
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 248
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 249
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 251
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, p2, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V

    .line 252
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 256
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 257
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 258
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 260
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setInt(IILorg/apache/harmony/luni/platform/Endianness;)V

    .line 261
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 262
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 266
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 267
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 269
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, p2, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setInt(IILorg/apache/harmony/luni/platform/Endianness;)V

    .line 270
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "index"
    .parameter "value"

    .prologue
    .line 284
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 285
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 287
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, p2, p3, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V

    .line 288
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 274
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 275
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 276
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 278
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V

    .line 279
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 280
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 302
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 303
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 305
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, p2, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V

    .line 306
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 292
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 293
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 294
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 296
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V

    .line 297
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 298
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 310
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 312
    .local v0, buf:Ljava/nio/ReadWriteDirectByteBuffer;
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    iput-object v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    .line 313
    return-object v0
.end method
