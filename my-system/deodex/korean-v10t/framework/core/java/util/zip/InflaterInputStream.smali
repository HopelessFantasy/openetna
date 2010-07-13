.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field closed:Z

.field eof:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field nativeEndBufSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "is"

    .prologue
    .line 83
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .parameter "is"
    .parameter "inf"

    .prologue
    .line 97
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 5
    .parameter "is"
    .parameter "inf"
    .parameter "bsize"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    .line 114
    if-eqz p1, :cond_a

    if-nez p2, :cond_10

    .line 115
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_10
    if-gtz p3, :cond_18

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_18
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 122
    instance-of v0, p1, Ljava/util/zip/ZipFile$RAFStream;

    if-eqz v0, :cond_21

    .line 123
    iput p3, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    .line 128
    :goto_20
    return-void

    .line 125
    :cond_21
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    goto :goto_20
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_10

    .line 288
    new-instance v0, Ljava/io/IOException;

    const-string v1, "archive.1E"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_10
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v0, :cond_16

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 305
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_11

    .line 306
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 307
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 308
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 309
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 311
    :cond_11
    return-void
.end method

.method protected fill()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v4, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v4, :cond_10

    .line 228
    new-instance v4, Ljava/io/IOException;

    const-string v5, "archive.1E"

    invoke-static {v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_10
    iget v4, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    if-lez v4, :cond_44

    .line 232
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/util/zip/ZipFile$RAFStream;

    .line 233
    .local v1, is:Ljava/util/zip/ZipFile$RAFStream;
    iget-object v4, v1, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v4

    .line 234
    :try_start_1b
    iget-wide v5, v1, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v7, v1, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long v2, v5, v7

    .line 235
    .local v2, len:J
    iget v5, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_2b

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    int-to-long v2, v5

    .line 236
    :cond_2b
    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v6, v1, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-wide v7, v1, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget v9, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/zip/Inflater;->setFileInput(Ljava/io/FileDescriptor;JI)I

    move-result v0

    .line 237
    .local v0, cnt:I
    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 238
    monitor-exit v4

    .line 245
    .end local v0           #cnt:I
    .end local v1           #is:Ljava/util/zip/ZipFile$RAFStream;
    .end local v2           #len:J
    :cond_40
    :goto_40
    return-void

    .line 238
    .restart local v1       #is:Ljava/util/zip/ZipFile$RAFStream;
    :catchall_41
    move-exception v5

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_41

    throw v5

    .line 240
    .end local v1           #is:Ljava/util/zip/ZipFile$RAFStream;
    :cond_44
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lez v4, :cond_40

    .line 241
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    const/4 v6, 0x0

    iget v7, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_40
.end method

.method public mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 325
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 140
    new-array v0, v1, [B

    .line 141
    .local v0, b:[B
    invoke-virtual {p0, v0, v3, v1}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    .line 144
    :goto_c
    return v1

    :cond_d
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_c
.end method

.method public read([BII)I
    .registers 10
    .parameter "buffer"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 165
    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v2, :cond_12

    .line 166
    new-instance v2, Ljava/io/IOException;

    const-string v3, "archive.1E"

    invoke-static {v3}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_12
    if-nez p1, :cond_1a

    .line 170
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 173
    :cond_1a
    if-ltz p2, :cond_23

    if-ltz p3, :cond_23

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_29

    .line 174
    :cond_23
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 177
    :cond_29
    if-nez p3, :cond_2d

    .line 178
    const/4 v2, 0x0

    .line 208
    :goto_2c
    return v2

    .line 181
    :cond_2d
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 182
    iput-boolean v5, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    move v2, v4

    .line 183
    goto :goto_2c

    .line 187
    :cond_39
    array-length v2, p1

    if-gt p2, v2, :cond_93

    if-ltz p3, :cond_93

    if-ltz p2, :cond_93

    array-length v2, p1

    sub-int/2addr v2, p2

    if-lt v2, p3, :cond_93

    .line 190
    :cond_44
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 191
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 195
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_54
    .catch Ljava/util/zip/DataFormatException; {:try_start_4f .. :try_end_54} :catch_59

    move-result v1

    .line 202
    .local v1, result:I
    if-lez v1, :cond_73

    move v2, v1

    .line 203
    goto :goto_2c

    .line 196
    .end local v1           #result:I
    :catch_59
    move-exception v2

    move-object v0, v2

    .line 197
    .local v0, e:Ljava/util/zip/DataFormatException;
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v2, v4, :cond_65

    .line 198
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 200
    :cond_65
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 204
    .end local v0           #e:Ljava/util/zip/DataFormatException;
    .restart local v1       #result:I
    .restart local p0
    :cond_73
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 205
    iput-boolean v5, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    move v2, v4

    .line 206
    goto :goto_2c

    .line 207
    :cond_7f
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_89

    move v2, v4

    .line 208
    goto :goto_2c

    .line 209
    :cond_89
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v2, v4, :cond_44

    .line 210
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 215
    .end local v1           #result:I
    :cond_93
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 12
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_2e

    .line 260
    const-wide/16 v0, 0x0

    .local v0, count:J
    const-wide/16 v2, 0x0

    .line 261
    .local v2, rem:J
    :goto_a
    cmp-long v5, v0, p1

    if-gez v5, :cond_28

    .line 262
    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    const/4 v6, 0x0

    sub-long v2, p1, v0

    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v7, v7

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-lez v7, :cond_29

    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v7, v7

    :goto_1e
    invoke-virtual {p0, v5, v6, v7}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v4

    .line 265
    .local v4, x:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2b

    .line 266
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 271
    .end local v4           #x:I
    :cond_28
    return-wide v0

    .line 262
    :cond_29
    long-to-int v7, v2

    goto :goto_1e

    .line 269
    .restart local v4       #x:I
    :cond_2b
    int-to-long v5, v4

    add-long/2addr v0, v5

    .line 270
    goto :goto_a

    .line 273
    .end local v0           #count:J
    .end local v2           #rem:J
    .end local v4           #x:I
    :cond_2e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
