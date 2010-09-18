.class final Ljava/nio/ReadWriteHeapByteBuffer;
.super Ljava/nio/HeapByteBuffer;
.source "ReadWriteHeapByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>(I)V

    .line 50
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .parameter "backingArray"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>([B)V

    .line 46
    return-void
.end method

.method constructor <init>([BII)V
    .registers 4
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "arrayOffset"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 54
    return-void
.end method

.method static copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    .line 37
    .local v0, buf:Ljava/nio/ReadWriteHeapByteBuffer;
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    .line 40
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 64
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    .line 66
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[B
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "b"

    .prologue
    .line 90
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 91
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 93
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    .line 94
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "b"

    .prologue
    .line 98
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 99
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 101
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    .line 102
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 113
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 114
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1f

    .line 117
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 119
    :cond_1f
    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 120
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 122
    :cond_2b
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 125
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 129
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 133
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 141
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 145
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 146
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 147
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 149
    :cond_e
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    invoke-virtual {p0, v1, p1}, Ljava/nio/ReadWriteHeapByteBuffer;->store(II)V

    .line 150
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 151
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 155
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 156
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 158
    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/nio/ReadWriteHeapByteBuffer;->store(II)V

    .line 159
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "index"
    .parameter "value"

    .prologue
    .line 163
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 164
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 166
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->store(IJ)V

    .line 167
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 171
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 172
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 173
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 175
    :cond_e
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    invoke-virtual {p0, v1, p1, p2}, Ljava/nio/ReadWriteHeapByteBuffer;->store(IJ)V

    .line 176
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 177
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 181
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 182
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 184
    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/nio/ReadWriteHeapByteBuffer;->store(IS)V

    .line 185
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 189
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 190
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 191
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 193
    :cond_e
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    invoke-virtual {p0, v1, p1}, Ljava/nio/ReadWriteHeapByteBuffer;->store(IS)V

    .line 194
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 195
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 199
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    .line 201
    .local v0, slice:Ljava/nio/ReadWriteHeapByteBuffer;
    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    iput-object v1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    .line 202
    return-object v0
.end method
