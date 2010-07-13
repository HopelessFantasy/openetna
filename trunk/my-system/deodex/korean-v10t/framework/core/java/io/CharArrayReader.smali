.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 69
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 70
    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 71
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 97
    if-nez p1, :cond_14

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_14
    or-int v0, p2, p3

    if-ltz v0, :cond_1b

    array-length v0, p1

    if-le p2, v0, :cond_27

    .line 101
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_27
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 105
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 108
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v0, p3

    array-length v1, p1

    if-ge v0, v1, :cond_35

    move v0, p3

    :goto_32
    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 109
    return-void

    .line 108
    :cond_35
    array-length v0, p1

    goto :goto_32
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isOpen()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 124
    :cond_c
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public mark(I)V
    .registers 5
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 161
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0060"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 163
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 164
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 165
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

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
    .line 194
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 196
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0060"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 198
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-ne v1, v2, :cond_22

    .line 199
    const/4 v1, -0x1

    monitor-exit v0

    move v0, v1

    .line 201
    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v1, v1, v2

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_15

    move v0, v1

    goto :goto_21
.end method

.method public read([CII)I
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    if-nez p1, :cond_e

    .line 241
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_e
    or-int v1, p2, p3

    if-ltz v1, :cond_16

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_22

    .line 244
    :cond_16
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_22
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_25
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 249
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0060"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_37

    throw v2

    .line 251
    :cond_3a
    :try_start_3a
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-ge v2, v3, :cond_5e

    .line 252
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v2, p3

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-le v2, v3, :cond_5c

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v3

    move v0, v2

    .line 253
    .local v0, bytesRead:I
    :goto_4d
    iget-object v2, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 255
    monitor-exit v1

    move v1, v0

    .line 257
    .end local v0           #bytesRead:I
    :goto_5b
    return v1

    :cond_5c
    move v0, p3

    .line 252
    goto :goto_4d

    .line 257
    :cond_5e
    const/4 v2, -0x1

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_37

    move v1, v2

    goto :goto_5b
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 278
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0060"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 280
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-eq v1, v2, :cond_21

    const/4 v1, 0x1

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 298
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0060"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 300
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    iget v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    :goto_1f
    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 301
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_15

    .line 302
    return-void

    .line 300
    :cond_23
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public skip(J)J
    .registers 9
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 318
    iget-object v2, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    :try_start_5
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 320
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0060"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v3

    .line 322
    :cond_1a
    cmp-long v3, p1, v4

    if-gtz v3, :cond_21

    .line 323
    :try_start_1e
    monitor-exit v2

    move-wide v2, v4

    .line 333
    :goto_20
    return-wide v2

    .line 325
    :cond_21
    const-wide/16 v0, 0x0

    .line 326
    .local v0, skipped:J
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_37

    .line 327
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    .line 328
    move-wide v0, p1

    .line 333
    :goto_34
    monitor-exit v2

    move-wide v2, v0

    goto :goto_20

    .line 330
    :cond_37
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v0, v3

    .line 331
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_17

    goto :goto_34
.end method
