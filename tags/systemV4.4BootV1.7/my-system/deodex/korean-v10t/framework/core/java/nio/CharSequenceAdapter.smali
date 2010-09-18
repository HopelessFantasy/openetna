.class final Ljava/nio/CharSequenceAdapter;
.super Ljava/nio/CharBuffer;
.source "CharSequenceAdapter.java"


# instance fields
.field final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "chseq"

    .prologue
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/CharBuffer;-><init>(I)V

    .line 44
    iput-object p1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;
    .registers 3
    .parameter "other"

    .prologue
    .line 33
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .local v0, buf:Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 35
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 36
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->mark:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->mark:I

    .line 37
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 56
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    move-result-object v0

    return-object v0
.end method

.method public get()C
    .registers 4

    .prologue
    .line 60
    iget v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 61
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 63
    :cond_c
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public get(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 67
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    if-lt p1, v0, :cond_c

    .line 68
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 70
    :cond_c
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final get([CII)Ljava/nio/CharBuffer;
    .registers 10
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 74
    array-length v0, p1

    .line 75
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 76
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 78
    :cond_13
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->remaining()I

    move-result v2

    if-le p3, v2, :cond_1f

    .line 79
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 81
    :cond_1f
    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int v1, v2, p3

    .line 82
    .local v1, newPosition:I
    iget-object v2, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Ljava/nio/CharSequenceAdapter;->position:I

    invoke-virtual {v2, v3, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    iput v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 84
    return-object p0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected protectedArray()[C
    .registers 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 112
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 116
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .registers 8
    .parameter "src"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 132
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 133
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 135
    :cond_16
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([CII)Ljava/nio/CharBuffer;
    .registers 8
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 120
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 121
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 124
    :cond_13
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1f

    .line 125
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 128
    :cond_1f
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 5

    .prologue
    .line 139
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iget v3, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 143
    if-lt p2, p1, :cond_a

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->remaining()I

    move-result v1

    if-le p2, v1, :cond_10

    .line 144
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 147
    :cond_10
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    move-result-object v0

    .line 148
    .local v0, result:Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/2addr v1, p1

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 149
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/2addr v1, p2

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 150
    return-object v0
.end method
