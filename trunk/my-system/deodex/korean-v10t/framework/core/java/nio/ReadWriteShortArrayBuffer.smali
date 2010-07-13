.class final Ljava/nio/ReadWriteShortArrayBuffer;
.super Ljava/nio/ShortArrayBuffer;
.source "ReadWriteShortArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/ShortArrayBuffer;-><init>(I)V

    .line 50
    return-void
.end method

.method constructor <init>(I[SI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/ShortArrayBuffer;-><init>(I[SI)V

    .line 55
    return-void
.end method

.method constructor <init>([S)V
    .registers 2
    .parameter "array"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    .line 46
    return-void
.end method

.method static copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadWriteShortArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I[SI)V

    .line 38
    .local v0, buf:Ljava/nio/ReadWriteShortArrayBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadOnlyShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    .line 65
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    .line 67
    return-object p0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadWriteShortArrayBuffer;

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

.method protected protectedArray()[S
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 99
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 100
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 102
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-short p2, v0, v1

    .line 103
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 6
    .parameter "c"

    .prologue
    .line 91
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 92
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 94
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-short p1, v0, v1

    .line 95
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
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
    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 112
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 114
    :cond_1f
    iget-object v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    .line 116
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 120
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I[SI)V

    return-object v0
.end method
