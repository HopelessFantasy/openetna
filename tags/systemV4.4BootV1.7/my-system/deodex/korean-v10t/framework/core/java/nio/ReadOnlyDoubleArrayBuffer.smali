.class final Ljava/nio/ReadOnlyDoubleArrayBuffer;
.super Ljava/nio/DoubleArrayBuffer;
.source "ReadOnlyDoubleArrayBuffer.java"


# direct methods
.method constructor <init>(I[DI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DoubleArrayBuffer;-><init>(I[DI)V

    .line 47
    return-void
.end method

.method static copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadOnlyDoubleArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDoubleArrayBuffer;-><init>(I[DI)V

    .line 38
    .local v0, buf:Ljava/nio/ReadOnlyDoubleArrayBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->limit()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->duplicate()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadOnlyDoubleArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[D
    .registers 2

    .prologue
    .line 66
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 70
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .registers 4
    .parameter "c"

    .prologue
    .line 78
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 82
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 90
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([DII)Ljava/nio/DoubleBuffer;
    .registers 5
    .parameter "src"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .registers 6

    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyDoubleArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDoubleArrayBuffer;-><init>(I[DI)V

    return-object v0
.end method
