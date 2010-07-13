.class abstract Ljava/nio/HeapByteBuffer;
.super Ljava/nio/BaseByteBuffer;
.source "HeapByteBuffer.java"


# instance fields
.field protected final backingArray:[B

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 45
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 46
    return-void
.end method

.method constructor <init>([B)V
    .registers 4
    .parameter "backingArray"

    .prologue
    .line 41
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 42
    return-void
.end method

.method constructor <init>([BII)V
    .registers 6
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 49
    invoke-direct {p0, p2}, Ljava/nio/BaseByteBuffer;-><init>(I)V

    .line 50
    iput-object p1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    .line 51
    iput p3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    .line 53
    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_12

    .line 54
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 56
    :cond_12
    return-void
.end method


# virtual methods
.method public final get()B
    .registers 5

    .prologue
    .line 79
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 80
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 82
    :cond_c
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get(I)B
    .registers 4
    .parameter "index"

    .prologue
    .line 86
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_c
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 66
    array-length v0, p1

    .line 67
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v1, p2

    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 68
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 70
    :cond_13
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 71
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 73
    :cond_1f
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 75
    return-object p0
.end method

.method public final getDouble()D
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .registers 4
    .parameter "index"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .registers 4

    .prologue
    .line 109
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 110
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 111
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 113
    :cond_e
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    invoke-virtual {p0, v2}, Ljava/nio/HeapByteBuffer;->loadInt(I)I

    move-result v1

    .line 114
    .local v1, result:I
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 115
    return v1
.end method

.method public final getInt(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 119
    if-ltz p1, :cond_8

    add-int/lit8 v0, p1, 0x4

    iget v1, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 120
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 122
    :cond_e
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->loadInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .registers 5

    .prologue
    .line 126
    iget v3, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 127
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v3, :cond_e

    .line 128
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 130
    :cond_e
    iget v3, p0, Ljava/nio/HeapByteBuffer;->position:I

    invoke-virtual {p0, v3}, Ljava/nio/HeapByteBuffer;->loadLong(I)J

    move-result-wide v1

    .line 131
    .local v1, result:J
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 132
    return-wide v1
.end method

.method public final getLong(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 136
    if-ltz p1, :cond_8

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 137
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 139
    :cond_e
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->loadLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .registers 4

    .prologue
    .line 143
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 144
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 145
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 147
    :cond_e
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    invoke-virtual {p0, v2}, Ljava/nio/HeapByteBuffer;->loadShort(I)S

    move-result v1

    .line 148
    .local v1, result:S
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 149
    return v1
.end method

.method public final getShort(I)S
    .registers 4
    .parameter "index"

    .prologue
    .line 153
    if-ltz p1, :cond_8

    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 154
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 156
    :cond_e
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->loadShort(I)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method protected final loadInt(I)I
    .registers 7
    .parameter "index"

    .prologue
    .line 164
    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v0, v3, p1

    .line 165
    .local v0, baseOffset:I
    const/4 v1, 0x0

    .line 166
    .local v1, bytes:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v4, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v3, v4, :cond_1d

    .line 167
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2e

    .line 168
    shl-int/lit8 v1, v1, 0x8

    .line 169
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v4, v0, v2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 172
    .end local v2           #i:I
    :cond_1d
    const/4 v2, 0x3

    .restart local v2       #i:I
    :goto_1e
    if-ltz v2, :cond_2e

    .line 173
    shl-int/lit8 v1, v1, 0x8

    .line 174
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v4, v0, v2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 172
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 177
    :cond_2e
    return v1
.end method

.method protected final loadLong(I)J
    .registers 9
    .parameter "index"

    .prologue
    const/16 v6, 0x8

    .line 181
    iget v4, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v0, v4, p1

    .line 182
    .local v0, baseOffset:I
    const-wide/16 v1, 0x0

    .line 183
    .local v1, bytes:J
    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v5, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v4, v5, :cond_1f

    .line 184
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    if-ge v3, v6, :cond_30

    .line 185
    shl-long/2addr v1, v6

    .line 186
    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v5, v0, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 189
    .end local v3           #i:I
    :cond_1f
    const/4 v3, 0x7

    .restart local v3       #i:I
    :goto_20
    if-ltz v3, :cond_30

    .line 190
    shl-long/2addr v1, v6

    .line 191
    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v5, v0, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 189
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 194
    :cond_30
    return-wide v1
.end method

.method protected final loadShort(I)S
    .registers 6
    .parameter "index"

    .prologue
    .line 198
    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v0, v2, p1

    .line 199
    .local v0, baseOffset:I
    const/4 v1, 0x0

    .line 200
    .local v1, bytes:S
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v3, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v2, v3, :cond_1d

    .line 201
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    aget-byte v2, v2, v0

    shl-int/lit8 v2, v2, 0x8

    int-to-short v1, v2

    .line 202
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 207
    :goto_1c
    return v1

    .line 204
    :cond_1d
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    int-to-short v1, v2

    .line 205
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    goto :goto_1c
.end method

.method protected final store(II)V
    .registers 8
    .parameter "index"
    .parameter "value"

    .prologue
    .line 211
    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v0, v2, p1

    .line 212
    .local v0, baseOffset:I
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v3, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v2, v3, :cond_1b

    .line 213
    const/4 v1, 0x3

    .local v1, i:I
    :goto_b
    if-ltz v1, :cond_2d

    .line 214
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v3, v0, v1

    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 215
    shr-int/lit8 p2, p2, 0x8

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 218
    .end local v1           #i:I
    :cond_1b
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1c
    const/4 v2, 0x3

    if-gt v1, v2, :cond_2d

    .line 219
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v3, v0, v1

    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 220
    shr-int/lit8 p2, p2, 0x8

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 223
    :cond_2d
    return-void
.end method

.method protected final store(IJ)V
    .registers 13
    .parameter "index"
    .parameter "value"

    .prologue
    const-wide/16 v7, 0xff

    const/16 v6, 0x8

    .line 226
    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v0, v2, p1

    .line 227
    .local v0, baseOffset:I
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v3, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v2, v3, :cond_1f

    .line 228
    const/4 v1, 0x7

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_31

    .line 229
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v3, v0, v1

    and-long v4, p2, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 230
    shr-long/2addr p2, v6

    .line 228
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 233
    .end local v1           #i:I
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_20
    const/4 v2, 0x7

    if-gt v1, v2, :cond_31

    .line 234
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int v3, v0, v1

    and-long v4, p2, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 235
    shr-long/2addr p2, v6

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 238
    :cond_31
    return-void
.end method

.method protected final store(IS)V
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 241
    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v0, v1, p1

    .line 242
    .local v0, baseOffset:I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v2, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v1, v2, :cond_1d

    .line 243
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 244
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 249
    :goto_1c
    return-void

    .line 246
    :cond_1d
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 247
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1c
.end method
