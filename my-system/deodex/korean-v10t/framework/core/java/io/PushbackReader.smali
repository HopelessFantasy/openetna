.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field buf:[C

.field pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 55
    new-array v0, v1, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 56
    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 73
    if-gtz p2, :cond_11

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0058"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_11
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 77
    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    .line 78
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    .line 92
    iget-object v1, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public mark(I)V
    .registers 4
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K007f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 125
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
    .line 145
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v1, :cond_16

    .line 147
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0059"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 150
    :cond_16
    :try_start_16
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    .line 151
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    aget-char v1, v1, v2

    monitor-exit v0

    move v0, v1

    .line 157
    :goto_29
    return v0

    :cond_2a
    iget-object v1, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_13

    move v0, v1

    goto :goto_29
.end method

.method public read([CII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v4, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_3
    iget-object v5, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v5, :cond_16

    .line 191
    new-instance v5, Ljava/io/IOException;

    const-string v6, "K0059"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    :catchall_13
    move-exception v5

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v5

    .line 199
    :cond_16
    if-nez p1, :cond_24

    .line 200
    :try_start_18
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "K0047"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_24
    or-int v5, p2, p3

    if-ltz v5, :cond_2c

    array-length v5, p1

    sub-int/2addr v5, p3

    if-le p2, v5, :cond_38

    .line 203
    :cond_2c
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "K002f"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_38
    const/4 v0, 0x0

    .line 208
    .local v0, copiedChars:I
    const/4 v1, 0x0

    .line 209
    .local v1, copyLength:I
    move v3, p2

    .line 211
    .local v3, newOffset:I
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v6, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v6, v6

    if-ge v5, v6, :cond_59

    .line 212
    iget-object v5, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v5, v6

    if-lt v5, p3, :cond_5e

    move v1, p3

    .line 214
    :goto_4b
    iget-object v5, p0, Ljava/io/PushbackReader;->buf:[C

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {v5, v6, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int/2addr v3, v1

    .line 216
    add-int/2addr v0, v1

    .line 218
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/PushbackReader;->pos:I

    .line 221
    :cond_59
    if-ne v1, p3, :cond_66

    .line 222
    monitor-exit v4

    move v4, p3

    .line 231
    :goto_5d
    return v4

    .line 212
    :cond_5e
    iget-object v5, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v5, v6

    move v1, v5

    goto :goto_4b

    .line 224
    :cond_66
    iget-object v5, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    sub-int v6, p3, v0

    invoke-virtual {v5, p1, v3, v6}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 225
    .local v2, inCopied:I
    if-lez v2, :cond_75

    .line 226
    add-int v5, v2, v0

    monitor-exit v4

    move v4, v5

    goto :goto_5d

    .line 228
    :cond_75
    if-nez v0, :cond_7a

    .line 229
    monitor-exit v4

    move v4, v2

    goto :goto_5d

    .line 231
    :cond_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_18 .. :try_end_7b} :catchall_13

    move v4, v0

    goto :goto_5d
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v1, :cond_16

    .line 253
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0080"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 255
    :cond_16
    :try_start_16
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v1, v1

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_26

    iget-object v1, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_26
    const/4 v1, 0x1

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_13

    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K007f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 13
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 400
    cmp-long v5, p1, v8

    if-gez v5, :cond_c

    .line 401
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 403
    :cond_c
    iget-object v5, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 404
    :try_start_f
    iget-object v6, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v6, :cond_22

    .line 405
    new-instance v6, Ljava/io/IOException;

    const-string v7, "K0059"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 424
    :catchall_1f
    move-exception v6

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v6

    .line 407
    :cond_22
    cmp-long v6, p1, v8

    if-nez v6, :cond_29

    .line 408
    :try_start_26
    monitor-exit v5

    move-wide v5, v8

    .line 423
    :goto_28
    return-wide v5

    .line 411
    :cond_29
    iget-object v6, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v6, v6

    iget v7, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v6, v7

    .line 412
    .local v0, availableFromBuffer:I
    if-lez v0, :cond_53

    .line 413
    int-to-long v6, v0

    sub-long v3, p1, v6

    .line 414
    .local v3, requiredFromIn:J
    cmp-long v6, v3, v8

    if-gtz v6, :cond_43

    .line 415
    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, p1

    long-to-int v6, v6

    iput v6, p0, Ljava/io/PushbackReader;->pos:I

    .line 416
    monitor-exit v5

    move-wide v5, p1

    goto :goto_28

    .line 418
    :cond_43
    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/io/PushbackReader;->pos:I

    .line 419
    iget-object v6, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    invoke-virtual {v6, v3, v4}, Ljava/io/Reader;->skip(J)J

    move-result-wide v1

    .line 423
    .end local v3           #requiredFromIn:J
    .local v1, inSkipped:J
    :goto_4e
    int-to-long v6, v0

    add-long/2addr v6, v1

    monitor-exit v5

    move-wide v5, v6

    goto :goto_28

    .line 421
    .end local v1           #inSkipped:J
    :cond_53
    iget-object v6, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    invoke-virtual {v6, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_58
    .catchall {:try_start_26 .. :try_end_58} :catchall_1f

    move-result-wide v1

    .restart local v1       #inSkipped:J
    goto :goto_4e
.end method

.method public unread(I)V
    .registers 6
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v1, :cond_16

    .line 376
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0059"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 378
    :cond_16
    :try_start_16
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    if-nez v1, :cond_26

    .line 379
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K007e"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_26
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 382
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_13

    .line 383
    return-void
.end method

.method public unread([C)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackReader;->unread([CII)V

    .line 295
    return-void
.end method

.method public unread([CII)V
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_3
    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v2, :cond_16

    .line 332
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0059"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v2

    .line 334
    :cond_16
    :try_start_16
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    if-le p3, v2, :cond_26

    .line 336
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K007e"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_26
    if-nez p1, :cond_34

    .line 340
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K0047"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_34
    or-int v2, p2, p3

    if-ltz v2, :cond_3c

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_48

    .line 348
    :cond_3c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "K002f"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_48
    add-int v2, p2, p3

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_4d
    if-lt v0, p2, :cond_57

    .line 352
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/io/PushbackReader;->unread(I)V

    .line 351
    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    .line 354
    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_13

    .line 355
    return-void
.end method
