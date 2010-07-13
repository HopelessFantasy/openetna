.class abstract Ljava/nio/ShortArrayBuffer;
.super Ljava/nio/ShortBuffer;
.source "ShortArrayBuffer.java"


# instance fields
.field protected final backingArray:[S

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 43
    new-array v0, p1, [S

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/ShortArrayBuffer;-><init>(I[SI)V

    .line 44
    return-void
.end method

.method constructor <init>(I[SI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "offset"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/ShortBuffer;-><init>(I)V

    .line 48
    iput-object p2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    .line 49
    iput p3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    .line 50
    return-void
.end method

.method constructor <init>([S)V
    .registers 4
    .parameter "array"

    .prologue
    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/ShortArrayBuffer;-><init>(I[SI)V

    .line 40
    return-void
.end method


# virtual methods
.method public final get([SII)Ljava/nio/ShortBuffer;
    .registers 9
    .parameter "dest"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 67
    array-length v0, p1

    .line 68
    .local v0, length:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    int-to-long v1, p2

    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 69
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 71
    :cond_13
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1f

    .line 72
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 74
    :cond_1f
    iget-object v1, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/ShortArrayBuffer;->position:I

    .line 77
    return-object p0
.end method

.method public final get()S
    .registers 5

    .prologue
    .line 53
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 54
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 56
    :cond_c
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget-short v0, v0, v1

    return v0
.end method

.method public final get(I)S
    .registers 4
    .parameter "index"

    .prologue
    .line 60
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    if-lt p1, v0, :cond_c

    .line 61
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 63
    :cond_c
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method
