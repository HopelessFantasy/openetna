.class public Ljava/io/BufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    .line 80
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    const-string v1, "Default buffer size used in BufferedOutputStream constructor. It would be better to be explicit if an 8k buffer is required."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .parameter "out"
    .parameter "size"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    if-gtz p2, :cond_11

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0058"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_11
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    if-lez v0, :cond_f

    .line 119
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 122
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 123
    monitor-exit p0

    return-void

    .line 118
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_15

    .line 210
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 213
    :cond_15
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 214
    monitor-exit p0

    return-void

    .line 209
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    if-nez p1, :cond_12

    .line 154
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 152
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 161
    :cond_12
    or-int v1, p2, p3

    if-ltz v1, :cond_1a

    :try_start_16
    array-length v1, p1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_26

    .line 163
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_26
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    if-nez v1, :cond_36

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    if-lt p3, v1, :cond_36

    .line 167
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_f

    .line 192
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    .line 170
    :cond_36
    :try_start_36
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    sub-int v0, v1, v2

    .line 171
    .local v0, available:I
    if-ge p3, v0, :cond_40

    .line 172
    move v0, p3

    .line 174
    :cond_40
    if-lez v0, :cond_4e

    .line 175
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 178
    :cond_4e
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    iget-object v2, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_34

    .line 179
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/io/BufferedOutputStream;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 181
    if-le p3, v0, :cond_34

    .line 182
    add-int/2addr p2, v0

    .line 183
    sub-int v0, p3, v0

    .line 184
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_73

    .line 185
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_34

    .line 187
    :cond_73
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedOutputStream;->count:I
    :try_end_7f
    .catchall {:try_start_36 .. :try_end_7f} :catchall_f

    goto :goto_34
.end method
