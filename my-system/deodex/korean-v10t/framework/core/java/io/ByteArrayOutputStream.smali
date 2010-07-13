.class public Ljava/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 73
    if-ltz p1, :cond_a

    .line 74
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 78
    return-void

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K005e"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .registers 6
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 99
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_a

    .line 106
    :goto_9
    return-void

    .line 103
    :cond_a
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 104
    .local v0, newbuf:[B
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 95
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 6

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    new-array v0, v1, [B

    .line 139
    .local v0, newArray:[B
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 140
    monitor-exit p0

    return-object v0

    .line 138
    .end local v0           #newArray:[B
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 154
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 6
    .parameter "hibyte"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    new-array v1, v2, [C

    .line 175
    .local v1, newBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 176
    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 178
    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "oneByte"

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->expand(I)V

    .line 252
    :cond_c
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 253
    monitor-exit p0

    return-void

    .line 249
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 222
    monitor-enter p0

    if-nez p1, :cond_12

    .line 223
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 222
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 225
    :cond_12
    or-int v0, p2, p3

    if-ltz v0, :cond_1a

    :try_start_16
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_26

    .line 226
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_f

    .line 229
    :cond_26
    if-nez p3, :cond_2a

    .line 237
    :goto_28
    monitor-exit p0

    return-void

    .line 234
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p3}, Ljava/io/ByteArrayOutputStream;->expand(I)V

    .line 235
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_f

    goto :goto_28
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
