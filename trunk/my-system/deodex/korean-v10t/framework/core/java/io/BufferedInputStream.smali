.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# instance fields
.field protected volatile buf:[B

.field private closed:Z

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedInputStream;->closed:Z

    .line 98
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 108
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    const-string v1, "Default buffer size used in BufferedInputStream constructor. It would be better to be explicit if an 8k buffer is required."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedInputStream;->closed:Z

    .line 130
    if-gtz p2, :cond_17

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0058"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_17
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 135
    return-void
.end method

.method private fillbuf()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 175
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v4, v5, :cond_26

    .line 177
    :cond_f
    iget-object v4, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/io/BufferedInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 178
    .local v3, result:I
    if-lez v3, :cond_22

    .line 179
    iput v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 180
    iput v9, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 181
    if-ne v3, v6, :cond_24

    move v4, v9

    :goto_20
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    :cond_22
    move v4, v3

    .line 202
    .end local v3           #result:I
    :goto_23
    return v4

    .restart local v3       #result:I
    :cond_24
    move v4, v3

    .line 181
    goto :goto_20

    .line 185
    .end local v3           #result:I
    :cond_26
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-nez v4, :cond_6b

    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    iget-object v5, p0, Ljava/io/BufferedInputStream;->buf:[B

    array-length v5, v5

    if-le v4, v5, :cond_6b

    .line 187
    iget-object v4, p0, Ljava/io/BufferedInputStream;->buf:[B

    array-length v4, v4

    mul-int/lit8 v1, v4, 0x2

    .line 188
    .local v1, newLength:I
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v1, v4, :cond_3c

    .line 189
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 191
    :cond_3c
    new-array v2, v1, [B

    .line 192
    .local v2, newbuf:[B
    iget-object v4, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget-object v5, p0, Ljava/io/BufferedInputStream;->buf:[B

    array-length v5, v5

    invoke-static {v4, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 198
    .end local v1           #newLength:I
    .end local v2           #newbuf:[B
    :cond_48
    :goto_48
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 199
    iput v9, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v9, p0, Ljava/io/BufferedInputStream;->count:I

    .line 200
    iget-object v4, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    iget-object v7, p0, Ljava/io/BufferedInputStream;->buf:[B

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 201
    .local v0, bytesread:I
    if-gtz v0, :cond_7f

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    :goto_67
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    move v4, v0

    .line 202
    goto :goto_23

    .line 194
    .end local v0           #bytesread:I
    :cond_6b
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v4, :cond_48

    .line 195
    iget-object v4, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    iget-object v6, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget-object v7, p0, Ljava/io/BufferedInputStream;->buf:[B

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_48

    .line 201
    .restart local v0       #bytesread:I
    :cond_7f
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v4, v0

    goto :goto_67
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v0, :cond_14

    .line 151
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0059"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 149
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_14
    :try_start_14
    iget v0, p0, Ljava/io/BufferedInputStream;->count:I

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_11

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 167
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 170
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/BufferedInputStream;->closed:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 172
    monitor-exit p0

    return-void

    .line 166
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 222
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 253
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_15

    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0059"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 253
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :cond_15
    :try_start_15
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v0, v1, :cond_24

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fillbuf()I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    .line 267
    :goto_22
    monitor-exit p0

    return v0

    .line 264
    :cond_24
    :try_start_24
    iget v0, p0, Ljava/io/BufferedInputStream;->count:I

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_38

    .line 265
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_12

    and-int/lit16 v0, v0, 0xff

    goto :goto_22

    :cond_38
    move v0, v2

    .line 267
    goto :goto_22
.end method

.method public declared-synchronized read([BII)I
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
    const/4 v5, -0x1

    const-string v3, "K0059"

    .line 299
    monitor-enter p0

    :try_start_4
    iget-boolean v3, p0, Ljava/io/BufferedInputStream;->closed:Z

    if-eqz v3, :cond_17

    .line 301
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0059"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_14

    .line 299
    :catchall_14
    move-exception v3

    monitor-exit p0

    throw v3

    .line 309
    :cond_17
    if-nez p1, :cond_25

    .line 310
    :try_start_19
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "K0047"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_25
    or-int v3, p2, p3

    if-ltz v3, :cond_2d

    array-length v3, p1

    sub-int/2addr v3, p3

    if-le p2, v3, :cond_39

    .line 313
    :cond_2d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "K002f"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_14

    .line 316
    :cond_39
    if-nez p3, :cond_3e

    .line 317
    const/4 v3, 0x0

    .line 362
    :goto_3c
    monitor-exit p0

    return v3

    .line 319
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v3, :cond_4e

    .line 320
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0059"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_4e
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    if-ge v3, v4, :cond_93

    .line 326
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lt v3, p3, :cond_74

    move v0, p3

    .line 327
    .local v0, copylength:I
    :goto_5c
    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 329
    if-eq v0, p3, :cond_72

    iget-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_7b

    :cond_72
    move v3, v0

    .line 330
    goto :goto_3c

    .line 326
    .end local v0           #copylength:I
    :cond_74
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_5c

    .line 332
    .restart local v0       #copylength:I
    :cond_7b
    add-int/2addr p2, v0

    .line 333
    sub-int v2, p3, v0

    .line 344
    .end local v0           #copylength:I
    .local v2, required:I
    :goto_7e
    iget v3, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v3, v5, :cond_98

    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    array-length v3, v3

    if-lt v2, v3, :cond_98

    .line 345
    iget-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 346
    .local v1, read:I
    if-ne v1, v5, :cond_b9

    .line 347
    if-ne v2, p3, :cond_95

    move v3, v5

    goto :goto_3c

    .line 335
    .end local v1           #read:I
    .end local v2           #required:I
    :cond_93
    move v2, p3

    .restart local v2       #required:I
    goto :goto_7e

    .line 347
    .restart local v1       #read:I
    :cond_95
    sub-int v3, p3, v2

    goto :goto_3c

    .line 350
    .end local v1           #read:I
    :cond_98
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fillbuf()I

    move-result v3

    if-ne v3, v5, :cond_a5

    .line 351
    if-ne v2, p3, :cond_a2

    move v3, v5

    goto :goto_3c

    :cond_a2
    sub-int v3, p3, v2

    goto :goto_3c

    .line 353
    :cond_a5
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_bf

    move v1, v2

    .line 354
    .restart local v1       #read:I
    :goto_ad
    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 357
    :cond_b9
    sub-int/2addr v2, v1

    .line 358
    if-nez v2, :cond_c6

    move v3, p3

    .line 359
    goto/16 :goto_3c

    .line 353
    .end local v1           #read:I
    :cond_bf
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    move v1, v3

    goto :goto_ad

    .line 361
    .restart local v1       #read:I
    :cond_c6
    iget-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_cb
    .catchall {:try_start_3e .. :try_end_cb} :catchall_14

    move-result v3

    if-nez v3, :cond_d2

    .line 362
    sub-int v3, p3, v2

    goto/16 :goto_3c

    .line 364
    :cond_d2
    add-int/2addr p2, v1

    .line 365
    goto :goto_7e
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/BufferedInputStream;->closed:Z

    if-eqz v0, :cond_10

    .line 387
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 386
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    :cond_10
    const/4 v0, -0x1

    :try_start_11
    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v0, v1, :cond_1d

    .line 390
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1d
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_d

    .line 394
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .registers 9
    .parameter "amount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 411
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_15

    .line 413
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0059"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 411
    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2

    .line 415
    :cond_15
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1f

    .line 416
    const-wide/16 v2, 0x0

    .line 442
    :goto_1d
    monitor-exit p0

    return-wide v2

    .line 419
    :cond_1f
    :try_start_1f
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_32

    .line 420
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide v2, p1

    .line 421
    goto :goto_1d

    .line 423
    :cond_32
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 424
    .local v0, read:J
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 426
    iget v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v2, v4, :cond_76

    .line 427
    iget v2, p0, Ljava/io/BufferedInputStream;->marklimit:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_73

    .line 428
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fillbuf()I

    move-result v2

    if-ne v2, v4, :cond_4f

    move-wide v2, v0

    .line 429
    goto :goto_1d

    .line 431
    :cond_4f
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v4, p1, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_66

    .line 432
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v2, v2

    sub-long v4, p1, v0

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide v2, p1

    .line 433
    goto :goto_1d

    .line 436
    :cond_66
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 437
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide v2, v0

    .line 438
    goto :goto_1d

    .line 440
    :cond_73
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 442
    :cond_76
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_7d
    .catchall {:try_start_1f .. :try_end_7d} :catchall_12

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_1d
.end method
