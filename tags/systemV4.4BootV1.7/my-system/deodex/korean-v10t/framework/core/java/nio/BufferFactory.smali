.class final Ljava/nio/BufferFactory;
.super Ljava/lang/Object;
.source "BufferFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 51
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newByteBuffer([B)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 40
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    return-object v0
.end method

.method public static newCharBuffer(I)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 84
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newCharBuffer(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "chseq"

    .prologue
    .line 73
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static newCharBuffer([C)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 62
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>([C)V

    return-object v0
.end method

.method public static newDirectByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 95
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 117
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newDoubleBuffer([D)Ljava/nio/DoubleBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 106
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>([D)V

    return-object v0
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 139
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 128
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>([F)V

    return-object v0
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 150
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newIntBuffer([I)Ljava/nio/IntBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 161
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>([I)V

    return-object v0
.end method

.method public static newLongBuffer(I)Ljava/nio/LongBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 172
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newLongBuffer([J)Ljava/nio/LongBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 183
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>([J)V

    return-object v0
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 194
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static newShortBuffer([S)Ljava/nio/ShortBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 205
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>([S)V

    return-object v0
.end method
