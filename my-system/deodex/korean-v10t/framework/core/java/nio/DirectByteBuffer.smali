.class abstract Ljava/nio/DirectByteBuffer;
.super Ljava/nio/BaseByteBuffer;
.source "DirectByteBuffer.java"

# interfaces
.implements Lorg/apache/harmony/nio/internal/DirectBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DirectByteBuffer$SafeAddress;
    }
.end annotation


# instance fields
.field protected final offset:I

.field protected final safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;


# direct methods
.method constructor <init>(I)V
    .registers 5
    .parameter "capacity"

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/nio/DirectByteBuffer$SafeAddress;

    invoke-static {p1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->alloc(IB)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/DirectByteBuffer$SafeAddress;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    invoke-direct {p0, v0, p1, v2}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V

    .line 68
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    iget-object v0, v0, Ljava/nio/DirectByteBuffer$SafeAddress;->address:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->autoFree()V

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$SafeAddress;II)V
    .registers 9
    .parameter "address"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 72
    invoke-direct {p0, p2}, Ljava/nio/BaseByteBuffer;-><init>(I)V

    .line 75
    iget-object v0, p1, Ljava/nio/DirectByteBuffer$SafeAddress;->address:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 76
    .local v0, baseAddress:Lorg/apache/harmony/luni/platform/PlatformAddress;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getSize()J

    move-result-wide v1

    .line 78
    .local v1, baseSize:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1e

    add-int v3, p3, p2

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_1e

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "slice out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_1e
    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    .line 84
    iput p3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 85
    return-void
.end method

.method private markAddressInvalid()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/nio/DirectByteBuffer$SafeAddress;->isValid:Z

    .line 223
    return-void
.end method


# virtual methods
.method public final addressValidityCheck()V
    .registers 3

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->isAddressValid()Z

    move-result v0

    if-nez v0, :cond_12

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nio.08"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_12
    return-void
.end method

.method public final free()V
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->isAddressValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 270
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->markAddressInvalid()V

    .line 271
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    iget-object v0, v0, Ljava/nio/DirectByteBuffer$SafeAddress;->address:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->free()V

    .line 273
    :cond_10
    return-void
.end method

.method public final get()B
    .registers 5

    .prologue
    .line 107
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 108
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 110
    :cond_c
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getByte(I)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .registers 4
    .parameter "index"

    .prologue
    .line 114
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 115
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 117
    :cond_c
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getByte(I)B

    move-result v0

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 94
    array-length v0, p1

    .line 95
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v1, p2

    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 96
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 98
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 99
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 101
    :cond_1f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getByteArray(I[BII)V

    .line 102
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 103
    return-object p0
.end method

.method public final getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->addressValidityCheck()V

    .line 230
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    iget-object v0, v0, Ljava/nio/DirectByteBuffer$SafeAddress;->address:Lorg/apache/harmony/luni/platform/PlatformAddress;

    return-object v0
.end method

.method public final getByteCapacity()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Ljava/nio/DirectByteBuffer;->capacity:I

    return v0
.end method

.method public final getDouble()D
    .registers 7

    .prologue
    .line 121
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 122
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v3, :cond_e

    .line 123
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 125
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v3

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D

    move-result-wide v1

    .line 126
    .local v1, result:D
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 127
    return-wide v1
.end method

.method public final getDouble(I)D
    .registers 6
    .parameter "index"

    .prologue
    .line 131
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 132
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 134
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 4

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 252
    .local v0, addr:Lorg/apache/harmony/luni/platform/PlatformAddress;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v1

    iput v1, p0, Ljava/nio/DirectByteBuffer;->effectiveDirectAddress:I

    .line 253
    return-object v0
.end method

.method public final getFloat()F
    .registers 6

    .prologue
    .line 138
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 139
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 140
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 142
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F

    move-result v1

    .line 143
    .local v1, result:F
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 144
    return v1
.end method

.method public final getFloat(I)F
    .registers 6
    .parameter "index"

    .prologue
    .line 148
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 149
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 151
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .registers 6

    .prologue
    .line 155
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 156
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 157
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 159
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getInt(ILorg/apache/harmony/luni/platform/Endianness;)I

    move-result v1

    .line 160
    .local v1, result:I
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 161
    return v1
.end method

.method public final getInt(I)I
    .registers 6
    .parameter "index"

    .prologue
    .line 165
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 166
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 168
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getInt(ILorg/apache/harmony/luni/platform/Endianness;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .registers 7

    .prologue
    .line 172
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 173
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v3, :cond_e

    .line 174
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 176
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v3

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getLong(ILorg/apache/harmony/luni/platform/Endianness;)J

    move-result-wide v1

    .line 177
    .local v1, result:J
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 178
    return-wide v1
.end method

.method public final getLong(I)J
    .registers 6
    .parameter "index"

    .prologue
    .line 182
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 183
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 185
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getLong(ILorg/apache/harmony/luni/platform/Endianness;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .registers 6

    .prologue
    .line 189
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 190
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 191
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 193
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getShort(ILorg/apache/harmony/luni/platform/Endianness;)S

    move-result v1

    .line 194
    .local v1, result:S
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 195
    return v1
.end method

.method public final getShort(I)S
    .registers 6
    .parameter "index"

    .prologue
    .line 199
    if-ltz p1, :cond_d

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 200
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 202
    :cond_13
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Lorg/apache/harmony/luni/platform/Endianness;

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getShort(ILorg/apache/harmony/luni/platform/Endianness;)S

    move-result v0

    return v0
.end method

.method public final isAddressValid()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->safeAddress:Ljava/nio/DirectByteBuffer$SafeAddress;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$SafeAddress;->isValid:Z

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected final protectedArray()[B
    .registers 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final protectedArrayOffset()I
    .registers 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final protectedHasArray()Z
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method
