.class final Ljava/nio/CharToByteBufferAdapter;
.super Ljava/nio/CharBuffer;
.source "CharToByteBufferAdapter.java"

# interfaces
.implements Lorg/apache/harmony/nio/internal/DirectBuffer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Ljava/nio/CharToByteBufferAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "byteBuffer"

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/nio/CharBuffer;-><init>(I)V

    .line 51
    iput-object p1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    return-void
.end method

.method static wrap(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "byteBuffer"

    .prologue
    .line 44
    new-instance v0, Ljava/nio/CharToByteBufferAdapter;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public addressValidityCheck()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v0, :cond_e

    .line 99
    iget-object p0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .end local p0
    check-cast p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    invoke-interface {p0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->addressValidityCheck()V

    .line 103
    :cond_d
    return-void

    .line 101
    .restart local p0
    :cond_e
    sget-boolean v0, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/nio/CharToByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 117
    .local v0, buf:Ljava/nio/CharToByteBufferAdapter;
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    iput v1, v0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    .line 118
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    iput v1, v0, Ljava/nio/CharToByteBufferAdapter;->position:I

    .line 119
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/CharToByteBufferAdapter;->mark:I

    .line 120
    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 125
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 127
    :cond_e
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 128
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    iget v0, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    .line 132
    iget v0, p0, Ljava/nio/CharToByteBufferAdapter;->capacity:I

    iput v0, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/CharToByteBufferAdapter;->mark:I

    .line 134
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Ljava/nio/CharToByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 140
    .local v0, buf:Ljava/nio/CharToByteBufferAdapter;
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    iput v1, v0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    .line 141
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    iput v1, v0, Ljava/nio/CharToByteBufferAdapter;->position:I

    .line 142
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/CharToByteBufferAdapter;->mark:I

    .line 143
    return-object v0
.end method

.method public free()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v0, :cond_e

    .line 107
    iget-object p0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .end local p0
    check-cast p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    invoke-interface {p0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    .line 111
    :cond_d
    return-void

    .line 109
    .restart local p0
    :cond_e
    sget-boolean v0, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public get()C
    .registers 4

    .prologue
    .line 147
    iget v0, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 148
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 150
    :cond_c
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public get(I)C
    .registers 4
    .parameter "index"

    .prologue
    .line 154
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    if-lt p1, v0, :cond_c

    .line 155
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 157
    :cond_c
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v0, :cond_f

    .line 81
    iget-object p0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .end local p0
    check-cast p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    invoke-interface {p0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 84
    :goto_e
    return-object v0

    .line 83
    .restart local p0
    :cond_f
    sget-boolean v0, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 84
    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getByteCapacity()I
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v0, :cond_f

    .line 59
    iget-object p0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .end local p0
    check-cast p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    invoke-interface {p0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getByteCapacity()I

    move-result v0

    .line 62
    :goto_e
    return v0

    .line 61
    .restart local p0
    :cond_f
    sget-boolean v0, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 62
    :cond_1b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 4

    .prologue
    .line 67
    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v1, v1, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v1, :cond_16

    .line 69
    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v1, Lorg/apache/harmony/nio/internal/DirectBuffer;

    invoke-interface {v1}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 70
    .local v0, addr:Lorg/apache/harmony/luni/platform/PlatformAddress;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v1

    iput v1, p0, Ljava/nio/CharToByteBufferAdapter;->effectiveDirectAddress:I

    move-object v1, v0

    .line 75
    .end local v0           #addr:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :goto_15
    return-object v1

    .line 74
    :cond_16
    sget-boolean v1, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 75
    :cond_22
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isAddressValid()Z
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v0, :cond_f

    .line 90
    iget-object p0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .end local p0
    check-cast p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    invoke-interface {p0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->isAddressValid()Z

    move-result v0

    .line 93
    :goto_e
    return v0

    .line 92
    .restart local p0
    :cond_f
    sget-boolean v0, Ljava/nio/CharToByteBufferAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected protectedArray()[C
    .registers 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "c"

    .prologue
    .line 185
    iget v0, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 186
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 188
    :cond_c
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 189
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 193
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    if-lt p1, v0, :cond_c

    .line 194
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 196
    :cond_c
    iget-object v0, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 197
    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 4

    .prologue
    .line 201
    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Ljava/nio/CharToByteBufferAdapter;->limit:I

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    new-instance v0, Ljava/nio/CharToByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 204
    .local v0, result:Ljava/nio/CharBuffer;
    iget-object v1, p0, Ljava/nio/CharToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 205
    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 209
    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_a

    invoke-virtual {p0}, Ljava/nio/CharToByteBufferAdapter;->remaining()I

    move-result v1

    if-le p2, v1, :cond_10

    .line 210
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 213
    :cond_10
    invoke-virtual {p0}, Ljava/nio/CharToByteBufferAdapter;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 214
    .local v0, result:Ljava/nio/CharBuffer;
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 215
    iget v1, p0, Ljava/nio/CharToByteBufferAdapter;->position:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    return-object v0
.end method
