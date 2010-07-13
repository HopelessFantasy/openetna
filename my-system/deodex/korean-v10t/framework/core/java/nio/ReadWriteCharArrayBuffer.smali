.class final Ljava/nio/ReadWriteCharArrayBuffer;
.super Ljava/nio/CharArrayBuffer;
.source "ReadWriteCharArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/CharArrayBuffer;-><init>(I)V

    .line 48
    return-void
.end method

.method constructor <init>(I[CI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    .line 52
    return-void
.end method

.method constructor <init>([C)V
    .registers 2
    .parameter "array"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    .line 44
    return-void
.end method

.method static copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadWriteCharArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 34
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I[CI)V

    .line 36
    .local v0, buf:Ljava/nio/ReadWriteCharArrayBuffer;
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    .line 37
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 38
    iput p1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 59
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 62
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    .line 64
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadWriteCharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[C
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "c"

    .prologue
    .line 88
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 89
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 91
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-char p1, v0, v1

    .line 92
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 96
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 97
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 99
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-char p2, v0, v1

    .line 100
    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 9
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 104
    array-length v0, p1

    .line 105
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v1, p3

    int-to-long v3, p2

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 106
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 108
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 109
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 111
    :cond_1f
    iget-object v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 113
    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 117
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I[CI)V

    return-object v0
.end method
