.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# instance fields
.field private buf:[C

.field private count:I

.field private in:Ljava/io/Reader;

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 50
    iput v0, p0, Ljava/io/BufferedReader;->marklimit:I

    .line 54
    iput v0, p0, Ljava/io/BufferedReader;->markpos:I

    .line 68
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 69
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 80
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    const-string v1, "Default buffer size used in BufferedReader constructor. It would be better to be explicit if an 8k-char buffer is required."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    const/4 v0, -0x1

    .line 100
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 50
    iput v0, p0, Ljava/io/BufferedReader;->marklimit:I

    .line 54
    iput v0, p0, Ljava/io/BufferedReader;->markpos:I

    .line 101
    if-gtz p2, :cond_16

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0058"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_16
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 105
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 106
    return-void
.end method

.method private fillbuf()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 128
    iget v4, p0, Ljava/io/BufferedReader;->markpos:I

    if-eq v4, v10, :cond_f

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->markpos:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedReader;->marklimit:I

    if-lt v4, v5, :cond_29

    .line 130
    :cond_f
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v6, v6

    invoke-virtual {v4, v5, v9, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 131
    .local v3, result:I
    if-lez v3, :cond_25

    .line 132
    iput v10, p0, Ljava/io/BufferedReader;->markpos:I

    .line 133
    iput v9, p0, Ljava/io/BufferedReader;->pos:I

    .line 134
    if-ne v3, v10, :cond_27

    move v4, v9

    :goto_23
    iput v4, p0, Ljava/io/BufferedReader;->count:I

    :cond_25
    move v4, v3

    .line 156
    .end local v3           #result:I
    :goto_26
    return v4

    .restart local v3       #result:I
    :cond_27
    move v4, v3

    .line 134
    goto :goto_23

    .line 138
    .end local v3           #result:I
    :cond_29
    iget v4, p0, Ljava/io/BufferedReader;->markpos:I

    if-nez v4, :cond_6e

    iget v4, p0, Ljava/io/BufferedReader;->marklimit:I

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_6e

    .line 140
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v4, v4

    mul-int/lit8 v1, v4, 0x2

    .line 141
    .local v1, newLength:I
    iget v4, p0, Ljava/io/BufferedReader;->marklimit:I

    if-le v1, v4, :cond_3f

    .line 142
    iget v1, p0, Ljava/io/BufferedReader;->marklimit:I

    .line 144
    :cond_3f
    new-array v2, v1, [C

    .line 145
    .local v2, newbuf:[C
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    invoke-static {v4, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v2, p0, Ljava/io/BufferedReader;->buf:[C

    .line 152
    .end local v1           #newLength:I
    .end local v2           #newbuf:[C
    :cond_4b
    :goto_4b
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->markpos:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 153
    iput v9, p0, Ljava/io/BufferedReader;->markpos:I

    iput v9, p0, Ljava/io/BufferedReader;->count:I

    .line 154
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 155
    .local v0, charsread:I
    if-ne v0, v10, :cond_82

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    :goto_6a
    iput v4, p0, Ljava/io/BufferedReader;->count:I

    move v4, v0

    .line 156
    goto :goto_26

    .line 147
    .end local v0           #charsread:I
    :cond_6e
    iget v4, p0, Ljava/io/BufferedReader;->markpos:I

    if-lez v4, :cond_4b

    .line 148
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->markpos:I

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->markpos:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4b

    .line 155
    .restart local v0       #charsread:I
    :cond_82
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    add-int/2addr v4, v0

    goto :goto_6a
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    if-nez v0, :cond_6

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_11

    .line 121
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/BufferedReader;->buf:[C

    .line 124
    :cond_11
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public mark(I)V
    .registers 5
    .parameter "readlimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-gez p1, :cond_8

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 191
    :cond_8
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_b
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 193
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1

    .line 195
    :cond_20
    :try_start_20
    iput p1, p0, Ljava/io/BufferedReader;->marklimit:I

    .line 196
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    iput v1, p0, Ljava/io/BufferedReader;->markpos:I

    .line 197
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 198
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 211
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
    const/4 v3, -0x1

    .line 229
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 231
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1

    .line 234
    :cond_19
    :try_start_19
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    iget v2, p0, Ljava/io/BufferedReader;->count:I

    if-lt v1, v2, :cond_25

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillbuf()I

    move-result v1

    if-eq v1, v3, :cond_32

    .line 235
    :cond_25
    iget-object v1, p0, Ljava/io/BufferedReader;->buf:[C

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v1, v1, v2

    monitor-exit v0

    move v0, v1

    .line 237
    :goto_31
    return v0

    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_16

    move v0, v3

    goto :goto_31
.end method

.method public read([CII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 270
    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 272
    new-instance v4, Ljava/io/IOException;

    const-string v5, "K005b"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    :catchall_16
    move-exception v4

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v4

    .line 279
    :cond_19
    if-nez p1, :cond_27

    .line 280
    :try_start_1b
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "K0047"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :cond_27
    or-int v4, p2, p3

    if-ltz v4, :cond_2f

    array-length v4, p1

    sub-int/2addr v4, p3

    if-le p2, v4, :cond_3b

    .line 283
    :cond_2f
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "K002f"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :cond_3b
    if-nez p3, :cond_41

    .line 287
    const/4 v4, 0x0

    monitor-exit v3

    move v3, v4

    .line 328
    :goto_40
    return v3

    .line 290
    :cond_41
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->count:I

    if-ge v4, v5, :cond_89

    .line 292
    iget v4, p0, Ljava/io/BufferedReader;->count:I

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_68

    move v0, p3

    .line 293
    .local v0, copylength:I
    :goto_4f
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    invoke-static {v4, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    add-int/2addr v4, v0

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 295
    if-eq v0, p3, :cond_65

    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->ready()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 296
    :cond_65
    monitor-exit v3

    move v3, v0

    goto :goto_40

    .line 292
    .end local v0           #copylength:I
    :cond_68
    iget v4, p0, Ljava/io/BufferedReader;->count:I

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_4f

    .line 298
    .restart local v0       #copylength:I
    :cond_6f
    add-int/2addr p2, v0

    .line 299
    sub-int v2, p3, v0

    .line 310
    .end local v0           #copylength:I
    .local v2, required:I
    :goto_72
    iget v4, p0, Ljava/io/BufferedReader;->markpos:I

    if-ne v4, v6, :cond_8e

    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v4, v4

    if-lt v2, v4, :cond_8e

    .line 311
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v4, p1, p2, v2}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 312
    .local v1, read:I
    if-ne v1, v6, :cond_b1

    .line 313
    if-ne v2, p3, :cond_8b

    move v4, v6

    :goto_86
    monitor-exit v3

    move v3, v4

    goto :goto_40

    .line 301
    .end local v1           #read:I
    .end local v2           #required:I
    :cond_89
    move v2, p3

    .restart local v2       #required:I
    goto :goto_72

    .line 313
    .restart local v1       #read:I
    :cond_8b
    sub-int v4, p3, v2

    goto :goto_86

    .line 316
    .end local v1           #read:I
    :cond_8e
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillbuf()I

    move-result v4

    if-ne v4, v6, :cond_9d

    .line 317
    if-ne v2, p3, :cond_9a

    move v4, v6

    :goto_97
    monitor-exit v3

    move v3, v4

    goto :goto_40

    :cond_9a
    sub-int v4, p3, v2

    goto :goto_97

    .line 319
    :cond_9d
    iget v4, p0, Ljava/io/BufferedReader;->count:I

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, v2, :cond_b7

    move v1, v2

    .line 320
    .restart local v1       #read:I
    :goto_a5
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    invoke-static {v4, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 323
    :cond_b1
    sub-int/2addr v2, v1

    .line 324
    if-nez v2, :cond_be

    .line 325
    monitor-exit v3

    move v3, p3

    goto :goto_40

    .line 319
    .end local v1           #read:I
    :cond_b7
    iget v4, p0, Ljava/io/BufferedReader;->count:I

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_a5

    .line 327
    .restart local v1       #read:I
    :cond_be
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->ready()Z

    move-result v4

    if-nez v4, :cond_cc

    .line 328
    sub-int v4, p3, v2

    monitor-exit v3
    :try_end_c9
    .catchall {:try_start_1b .. :try_end_c9} :catchall_16

    move v3, v4

    goto/16 :goto_40

    .line 330
    :cond_cc
    add-int/2addr p2, v1

    .line 331
    goto :goto_72
.end method

.method public readLine()Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/16 v11, 0xd

    const/16 v10, 0xa

    .line 348
    iget-object v5, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 349
    :try_start_a
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 350
    new-instance v6, Ljava/io/IOException;

    const-string v7, "K005b"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :catchall_1c
    move-exception v6

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v6

    .line 353
    :cond_1f
    :try_start_1f
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget v7, p0, Ljava/io/BufferedReader;->count:I

    if-lt v6, v7, :cond_2e

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillbuf()I

    move-result v6

    if-ne v6, v12, :cond_2e

    .line 354
    monitor-exit v5

    move-object v5, v14

    .line 411
    :goto_2d
    return-object v5

    .line 356
    :cond_2e
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    .local v1, charPos:I
    :goto_30
    iget v6, p0, Ljava/io/BufferedReader;->count:I

    if-ge v1, v6, :cond_83

    .line 357
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v0, v6, v1

    .line 358
    .local v0, ch:C
    if-le v0, v11, :cond_3d

    .line 356
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 361
    :cond_3d
    if-ne v0, v10, :cond_53

    .line 362
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v8, v1, v8

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .line 363
    .local v3, res:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 364
    monitor-exit v5

    move-object v5, v3

    goto :goto_2d

    .line 365
    .end local v3           #res:Ljava/lang/String;
    :cond_53
    if-ne v0, v11, :cond_3a

    .line 366
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v8, v1, v8

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .line 367
    .restart local v3       #res:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 368
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget v7, p0, Ljava/io/BufferedReader;->count:I

    if-lt v6, v7, :cond_72

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillbuf()I

    move-result v6

    if-eq v6, v12, :cond_80

    :cond_72
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v6, v6, v7

    if-ne v6, v10, :cond_80

    .line 370
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 372
    :cond_80
    monitor-exit v5

    move-object v5, v3

    goto :goto_2d

    .line 376
    .end local v0           #ch:C
    .end local v3           #res:Ljava/lang/String;
    :cond_83
    const/4 v2, 0x0

    .line 377
    .local v2, eol:C
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v4, result:Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->count:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 381
    iget v6, p0, Ljava/io/BufferedReader;->count:I

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 384
    :goto_9b
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget v7, p0, Ljava/io/BufferedReader;->count:I

    if-lt v6, v7, :cond_c2

    .line 385
    if-ne v2, v10, :cond_aa

    .line 386
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    monitor-exit v5

    move-object v5, v6

    goto :goto_2d

    .line 389
    :cond_aa
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillbuf()I

    move-result v6

    if-ne v6, v12, :cond_c2

    .line 391
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gtz v6, :cond_b8

    if-eqz v2, :cond_c0

    :cond_b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_bc
    monitor-exit v5

    move-object v5, v6

    goto/16 :goto_2d

    :cond_c0
    move-object v6, v14

    goto :goto_bc

    .line 395
    :cond_c2
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    :goto_c4
    iget v6, p0, Ljava/io/BufferedReader;->count:I

    if-ge v1, v6, :cond_11d

    .line 396
    if-nez v2, :cond_dd

    .line 397
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v6, v6, v1

    if-eq v6, v10, :cond_d6

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v6, v6, v1

    if-ne v6, v11, :cond_da

    .line 398
    :cond_d6
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v2, v6, v1

    .line 395
    :cond_da
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 400
    :cond_dd
    if-ne v2, v11, :cond_101

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v6, v6, v1

    if-ne v6, v10, :cond_101

    .line 401
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    if-le v1, v6, :cond_f5

    .line 402
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v8, v1, v8

    sub-int/2addr v8, v13

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 404
    :cond_f5
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 405
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    monitor-exit v5

    move-object v5, v6

    goto/16 :goto_2d

    .line 406
    :cond_101
    if-eqz v2, :cond_da

    .line 407
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    if-le v1, v6, :cond_113

    .line 408
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v8, v1, v8

    sub-int/2addr v8, v13

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 410
    :cond_113
    iput v1, p0, Ljava/io/BufferedReader;->pos:I

    .line 411
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    monitor-exit v5

    move-object v5, v6

    goto/16 :goto_2d

    .line 414
    :cond_11d
    if-nez v2, :cond_131

    .line 415
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->count:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 419
    :goto_12b
    iget v6, p0, Ljava/io/BufferedReader;->count:I

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    goto/16 :goto_9b

    .line 417
    :cond_131
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->count:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v13

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_13e
    .catchall {:try_start_1f .. :try_end_13e} :catchall_1c

    goto :goto_12b
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 441
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 443
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/BufferedReader;->count:I

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_27

    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_27
    const/4 v1, 0x1

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_15

    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 462
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 464
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/BufferedReader;->markpos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 465
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005c"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_29
    iget v1, p0, Ljava/io/BufferedReader;->markpos:I

    iput v1, p0, Ljava/io/BufferedReader;->pos:I

    .line 468
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_15

    .line 469
    return-void
.end method

.method public skip(J)J
    .registers 10
    .parameter "amount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 491
    cmp-long v2, p1, v5

    if-gez v2, :cond_c

    .line 492
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 494
    :cond_c
    iget-object v2, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_f
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 496
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K005b"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v3

    .line 498
    :cond_24
    const-wide/16 v3, 0x1

    cmp-long v3, p1, v3

    if-gez v3, :cond_2d

    .line 499
    :try_start_2a
    monitor-exit v2

    move-wide v2, v5

    .line 520
    :goto_2c
    return-wide v2

    .line 501
    :cond_2d
    iget v3, p0, Ljava/io/BufferedReader;->count:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-ltz v3, :cond_41

    .line 502
    iget v3, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    .line 503
    monitor-exit v2

    move-wide v2, p1

    goto :goto_2c

    .line 506
    :cond_41
    iget v3, p0, Ljava/io/BufferedReader;->count:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v0, v3

    .line 507
    .local v0, read:J
    iget v3, p0, Ljava/io/BufferedReader;->count:I

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    .line 508
    :goto_4b
    cmp-long v3, v0, p1

    if-gez v3, :cond_7d

    .line 509
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillbuf()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_59

    .line 510
    monitor-exit v2

    move-wide v2, v0

    goto :goto_2c

    .line 512
    :cond_59
    iget v3, p0, Ljava/io/BufferedReader;->count:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p1, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_71

    .line 513
    iget v3, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v3, v3

    sub-long v5, p1, v0

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    .line 514
    monitor-exit v2

    move-wide v2, p1

    goto :goto_2c

    .line 517
    :cond_71
    iget v3, p0, Ljava/io/BufferedReader;->count:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 518
    iget v3, p0, Ljava/io/BufferedReader;->count:I

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    goto :goto_4b

    .line 520
    :cond_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_2a .. :try_end_7e} :catchall_21

    move-wide v2, p1

    goto :goto_2c
.end method
