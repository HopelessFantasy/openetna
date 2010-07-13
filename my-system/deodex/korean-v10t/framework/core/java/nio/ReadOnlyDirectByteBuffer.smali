.class final Ljava/nio/ReadOnlyDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadOnlyDirectByteBuffer.java"


# direct methods
.method protected constructor <init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V
    .registers 4
    .parameter "address"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V
    .registers 5
    .parameter "address"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 53
    new-instance v0, Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-direct {v0, p1}, Ljava/nio/DirectByteBuffer$SafeAddress;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 54
    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 37
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 39
    .local v0, buf:Ljava/nio/ReadOnlyDirectByteBuffer;
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->limit:I

    .line 40
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->position:I

    .line 41
    iput p1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->mark:I

    .line 42
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ReadOnlyDirectByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 61
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 73
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 77
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 125
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
    .line 81
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 85
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 89
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 93
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 97
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 101
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 105
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 109
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 113
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 117
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 129
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyDirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 131
    .local v0, buf:Ljava/nio/ReadOnlyDirectByteBuffer;
    iget-object v1, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    iput-object v1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    .line 132
    return-object v0
.end method
