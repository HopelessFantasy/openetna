.class final Ljava/nio/ReadOnlyHeapByteBuffer;
.super Ljava/nio/HeapByteBuffer;
.source "ReadOnlyHeapByteBuffer.java"


# direct methods
.method constructor <init>([BII)V
    .registers 4
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "arrayOffset"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 46
    return-void
.end method

.method static copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadOnlyHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyHeapByteBuffer;-><init>([BII)V

    .line 37
    .local v0, buf:Ljava/nio/ReadOnlyHeapByteBuffer;
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyHeapByteBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyHeapByteBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadOnlyHeapByteBuffer;->mark:I

    .line 40
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ReadOnlyHeapByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Ljava/nio/ReadOnlyHeapByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/ReadOnlyHeapByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[B
    .registers 2

    .prologue
    .line 65
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 69
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "b"

    .prologue
    .line 77
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "b"

    .prologue
    .line 81
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 85
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 89
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 93
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 97
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 101
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 105
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 109
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 113
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 117
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 125
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 133
    new-instance v0, Ljava/nio/ReadOnlyHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadOnlyHeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/ReadOnlyHeapByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadOnlyHeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyHeapByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyHeapByteBuffer;-><init>([BII)V

    .line 135
    .local v0, slice:Ljava/nio/ReadOnlyHeapByteBuffer;
    iget-object v1, p0, Ljava/nio/ReadOnlyHeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    iput-object v1, v0, Ljava/nio/ReadOnlyHeapByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    .line 136
    return-object v0
.end method
