.class final Ljava/nio/ReadWriteFloatArrayBuffer;
.super Ljava/nio/FloatArrayBuffer;
.source "ReadWriteFloatArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/FloatArrayBuffer;-><init>(I)V

    .line 50
    return-void
.end method

.method constructor <init>(I[FI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FloatArrayBuffer;-><init>(I[FI)V

    .line 55
    return-void
.end method

.method constructor <init>([F)V
    .registers 2
    .parameter "array"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    .line 46
    return-void
.end method

.method static copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadWriteFloatArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I[FI)V

    .line 38
    .local v0, buf:Ljava/nio/ReadWriteFloatArrayBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteFloatArrayBuffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/ReadWriteFloatArrayBuffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadOnlyFloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .registers 6

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    .line 65
    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->limit:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->mark:I

    .line 67
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadWriteFloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[F
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .registers 6
    .parameter "c"

    .prologue
    .line 91
    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 92
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 94
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 95
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 99
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 100
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 102
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 103
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .registers 9
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 107
    array-length v0, p1

    .line 108
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v1, p2

    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 109
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 111
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 112
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 114
    :cond_1f
    iget-object v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    iget v2, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    .line 117
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .registers 6

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I[FI)V

    return-object v0
.end method
