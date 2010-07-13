.class abstract Ljava/nio/BaseByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "BaseByteBuffer.java"


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/nio/ByteBuffer;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 32
    invoke-static {p0}, Ljava/nio/CharToByteBufferAdapter;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 36
    invoke-static {p0}, Ljava/nio/DoubleToByteBufferAdapter;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 40
    invoke-static {p0}, Ljava/nio/FloatToByteBufferAdapter;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .registers 2

    .prologue
    .line 44
    invoke-static {p0}, Ljava/nio/IntToByteBufferAdapter;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 48
    invoke-static {p0}, Ljava/nio/LongToByteBufferAdapter;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Ljava/nio/ShortToByteBufferAdapter;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final getChar()C
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/BaseByteBuffer;->getShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getChar(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Ljava/nio/BaseByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final putChar(C)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 64
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/BaseByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putChar(IC)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 68
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/BaseByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
