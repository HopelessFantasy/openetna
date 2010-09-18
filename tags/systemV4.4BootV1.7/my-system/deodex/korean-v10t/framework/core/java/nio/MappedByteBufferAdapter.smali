.class final Ljava/nio/MappedByteBufferAdapter;
.super Ljava/nio/MappedByteBuffer;
.source "MappedByteBufferAdapter.java"

# interfaces
.implements Lorg/apache/harmony/nio/internal/DirectBuffer;


# static fields
.field private static final CHAR_SIZE:I = 0x2

.field private static final DOUBLE_SIZE:I = 0x8

.field private static final FLOAT_SIZE:I = 0x4

.field private static final INTEGER_SIZE:I = 0x4

.field private static final LONG_SIZE:I = 0x8

.field private static final SHORT_SIZE:I = 0x2


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/luni/platform/PlatformAddress;III)V
    .registers 5
    .parameter "addr"
    .parameter "capa"
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MappedByteBuffer;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;III)V

    .line 50
    return-void
.end method


# virtual methods
.method public addressValidityCheck()V
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->addressValidityCheck()V

    .line 371
    return-void
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 75
    .local v0, buf:Ljava/nio/MappedByteBufferAdapter;
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    .line 76
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 77
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    .line 78
    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 87
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 89
    :cond_e
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 92
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->clear()Ljava/nio/Buffer;

    .line 93
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 94
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->capacity:I

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    .line 96
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 102
    .local v0, buf:Ljava/nio/MappedByteBufferAdapter;
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    .line 103
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 104
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    .line 105
    return-object v0
.end method

.method public free()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->free()V

    .line 375
    return-void
.end method

.method public get()B
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 110
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->get()B

    move-result v0

    .line 112
    .local v0, result:B
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 113
    return v0
.end method

.method public get(I)B
    .registers 4
    .parameter "index"

    .prologue
    .line 117
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public getByteCapacity()I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->getByteCapacity()I

    move-result v0

    return v0
.end method

.method public getChar()C
    .registers 4

    .prologue
    .line 123
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getChar()C

    move-result v0

    .line 126
    .local v0, result:C
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 127
    return v0
.end method

.method public getChar(I)C
    .registers 4
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .registers 5

    .prologue
    .line 137
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v2}, Ljava/nio/DirectByteBuffer;->getDouble()D

    move-result-wide v0

    .line 140
    .local v0, result:D
    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 141
    return-wide v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "index"

    .prologue
    .line 145
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 3

    .prologue
    .line 152
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-interface {v1}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 153
    .local v0, addr:Lorg/apache/harmony/luni/platform/PlatformAddress;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v1

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->effectiveDirectAddress:I

    .line 154
    return-object v0
.end method

.method public getFloat()F
    .registers 4

    .prologue
    .line 159
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 160
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getFloat()F

    move-result v0

    .line 162
    .local v0, result:F
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 163
    return v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "index"

    .prologue
    .line 167
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 168
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .registers 4

    .prologue
    .line 173
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getInt()I

    move-result v0

    .line 176
    .local v0, result:I
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 177
    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 181
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .registers 5

    .prologue
    .line 187
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 188
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v2}, Ljava/nio/DirectByteBuffer;->getLong()J

    move-result-wide v0

    .line 190
    .local v0, result:J
    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 191
    return-wide v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 195
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 196
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .registers 4

    .prologue
    .line 201
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getShort()S

    move-result v0

    .line 204
    .local v0, result:S
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 205
    return v0
.end method

.method public getShort(I)S
    .registers 4
    .parameter "index"

    .prologue
    .line 209
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 210
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public isAddressValid()Z
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isAddressValid()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method orderImpl(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "byteOrder"

    .prologue
    .line 223
    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 224
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[B
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method protectedArrayOffset()I
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method protectedHasArray()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "b"

    .prologue
    .line 228
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 231
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 232
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "b"

    .prologue
    .line 244
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 245
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 247
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 236
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 239
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 240
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 251
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 252
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 254
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 255
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 259
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 260
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 262
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 266
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 267
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 269
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 270
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 274
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 275
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 277
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 281
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 282
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 284
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 285
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 289
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 290
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 292
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 303
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 304
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 306
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 307
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 296
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 297
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 299
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 311
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 312
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 314
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 318
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 319
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 321
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 322
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 326
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 327
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 329
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 333
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 336
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 337
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 4

    .prologue
    .line 341
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 342
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 343
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 345
    .local v0, result:Ljava/nio/MappedByteBufferAdapter;
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->clear()Ljava/nio/Buffer;

    .line 346
    return-object v0
.end method
