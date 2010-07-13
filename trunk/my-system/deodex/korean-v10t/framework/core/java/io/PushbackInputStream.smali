.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    if-nez p1, :cond_c

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 60
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 61
    return-void

    .line 59
    :cond_c
    new-array v0, v1, [B

    goto :goto_7
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    if-gtz p2, :cond_11

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0058"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_11
    if-nez p1, :cond_19

    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 81
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 82
    return-void

    .line 80
    :cond_19
    new-array v0, p2, [B

    goto :goto_14
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
    .line 97
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_a

    .line 98
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 100
    :cond_a
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 115
    iput-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 116
    iput-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 118
    :cond_e
    return-void
.end method

.method public mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 378
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_a

    .line 152
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 155
    :cond_a
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 156
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 160
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1d
.end method

.method public read([BII)I
    .registers 10
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v4, :cond_a

    .line 193
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 196
    :cond_a
    if-nez p1, :cond_18

    .line 197
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "K0047"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_18
    or-int v4, p2, p3

    if-ltz v4, :cond_20

    array-length v4, p1

    sub-int/2addr v4, p2

    if-le p3, v4, :cond_2c

    .line 205
    :cond_20
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "K002f"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_2c
    const/4 v0, 0x0

    .local v0, copiedBytes:I
    const/4 v1, 0x0

    .local v1, copyLength:I
    move v3, p2

    .line 211
    .local v3, newOffset:I
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v5, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_4d

    .line 212
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_51

    move v1, p3

    .line 214
    :goto_3f
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {v4, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int/2addr v3, v1

    .line 216
    add-int/2addr v0, v1

    .line 218
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 221
    :cond_4d
    if-ne v1, p3, :cond_59

    move v4, p3

    .line 231
    :goto_50
    return v4

    .line 212
    :cond_51
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_3f

    .line 224
    :cond_59
    iget-object v4, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    sub-int v5, p3, v0

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 225
    .local v2, inCopied:I
    if-lez v2, :cond_66

    .line 226
    add-int v4, v2, v0

    goto :goto_50

    .line 228
    :cond_66
    if-nez v0, :cond_6a

    move v4, v2

    .line 229
    goto :goto_50

    :cond_6a
    move v4, v0

    .line 231
    goto :goto_50
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 9
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 247
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_12

    .line 248
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0059"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_12
    cmp-long v1, p1, v2

    if-gtz v1, :cond_18

    move-wide v1, v2

    .line 261
    :goto_17
    return-wide v1

    .line 253
    :cond_18
    const/4 v0, 0x0

    .line 254
    .local v0, numSkipped:I
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_34

    .line 255
    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_47

    move-wide v3, p1

    :goto_2d
    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 256
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 258
    :cond_34
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_45

    .line 259
    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    int-to-long v4, v0

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 261
    :cond_45
    int-to-long v1, v0

    goto :goto_17

    .line 255
    :cond_47
    iget-object v3, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    goto :goto_2d
.end method

.method public unread(I)V
    .registers 5
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_a

    .line 359
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 361
    :cond_a
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-nez v0, :cond_1a

    .line 362
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K007e"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1a
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 365
    return-void
.end method

.method public unread([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 284
    return-void
.end method

.method public unread([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    if-le p3, v1, :cond_10

    .line 318
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K007e"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_10
    if-nez p1, :cond_1e

    .line 328
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_1e
    or-int v1, p2, p3

    if-ltz v1, :cond_26

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_32

    .line 331
    :cond_26
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_32
    add-int v1, p2, p3

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_37
    if-lt v0, p2, :cond_41

    .line 336
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    .line 338
    :cond_41
    return-void
.end method
