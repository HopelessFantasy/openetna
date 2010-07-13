.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private data:[C

.field private in:I

.field private isClosed:Z

.field private isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field private out:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 74
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/PipedReader;->data:[C

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/io/PipedReader;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 91
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
    .line 103
    iget-object v0, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Ljava/io/PipedReader;->data:[C

    if-eqz v1, :cond_a

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedReader;->data:[C

    .line 109
    :cond_a
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .registers 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method done()V
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Ljava/io/PipedReader;->isClosed:Z

    .line 462
    iget-object v1, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method establishConnection()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Ljava/io/PipedReader;->data:[C

    if-nez v1, :cond_16

    .line 138
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0078"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 140
    :cond_16
    :try_start_16
    iget-boolean v1, p0, Ljava/io/PipedReader;->isConnected:Z

    if-eqz v1, :cond_26

    .line 141
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K007a"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PipedReader;->isConnected:Z

    .line 144
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_13

    .line 145
    return-void
.end method

.method flush()V
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object v1, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    new-array v0, v2, [C

    .line 168
    .local v0, carray:[C
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/PipedReader;->read([CII)I

    move-result v1

    .line 169
    .local v1, result:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    aget-char v2, v0, v3

    :goto_d
    return v2

    :cond_e
    move v2, v1

    goto :goto_d
.end method

.method public read([CII)I
    .registers 13
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 205
    iget-object v4, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 206
    :try_start_5
    iget-boolean v5, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v5, :cond_18

    .line 207
    new-instance v5, Ljava/io/IOException;

    const-string v6, "K007b"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :catchall_15
    move-exception v5

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v5

    .line 209
    :cond_18
    :try_start_18
    iget-object v5, p0, Ljava/io/PipedReader;->data:[C

    if-nez v5, :cond_28

    .line 210
    new-instance v5, Ljava/io/IOException;

    const-string v6, "K0078"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    :cond_28
    if-nez p1, :cond_36

    .line 220
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "K0047"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    :cond_36
    or-int v5, p2, p3

    if-ltz v5, :cond_3e

    array-length v5, p1

    sub-int/2addr v5, p2

    if-le p3, v5, :cond_4a

    .line 223
    :cond_3e
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "K002f"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    :cond_4a
    if-nez p3, :cond_4f

    .line 227
    monitor-exit v4

    move v4, v6

    .line 291
    :goto_4e
    return v4

    .line 234
    :cond_4f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_15

    .line 236
    const/4 v3, 0x1

    .line 237
    .local v3, first:Z
    :goto_56
    :try_start_56
    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v8, :cond_91

    .line 239
    iget-boolean v5, p0, Ljava/io/PipedReader;->isClosed:Z
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_5c} :catch_7b

    if-eqz v5, :cond_61

    .line 240
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_15

    move v4, v8

    goto :goto_4e

    .line 242
    :cond_61
    if-nez v3, :cond_83

    :try_start_63
    iget-object v5, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    if-eqz v5, :cond_83

    iget-object v5, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_83

    .line 243
    new-instance v5, Ljava/io/IOException;

    const-string v6, "K0076"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_7b} :catch_7b

    .line 250
    :catch_7b
    move-exception v5

    move-object v2, v5

    .line 251
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_7d
    new-instance v5, Ljava/io/InterruptedIOException;

    invoke-direct {v5}, Ljava/io/InterruptedIOException;-><init>()V

    throw v5
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_15

    .line 245
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_83
    const/4 v3, 0x0

    .line 247
    :try_start_84
    iget-object v5, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 248
    iget-object v5, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_90} :catch_7b

    goto :goto_56

    .line 254
    :cond_91
    const/4 v1, 0x0

    .line 256
    .local v1, copyLength:I
    :try_start_92
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-lt v5, v6, :cond_c9

    .line 257
    iget-object v5, p0, Ljava/io/PipedReader;->data:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v5, v6

    if-le p3, v5, :cond_d3

    iget-object v5, p0, Ljava/io/PipedReader;->data:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v5, v6

    move v1, v5

    .line 259
    :goto_a7
    iget-object v5, p0, Ljava/io/PipedReader;->data:[C

    iget v6, p0, Ljava/io/PipedReader;->out:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 261
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget-object v6, p0, Ljava/io/PipedReader;->data:[C

    array-length v6, v6

    if-ne v5, v6, :cond_bd

    .line 262
    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 264
    :cond_bd
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v6, :cond_c9

    .line 266
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/PipedReader;->in:I

    .line 267
    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 275
    :cond_c9
    if-eq v1, p3, :cond_cf

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v8, :cond_d5

    .line 276
    :cond_cf
    monitor-exit v4

    move v4, v1

    goto/16 :goto_4e

    :cond_d3
    move v1, p3

    .line 257
    goto :goto_a7

    .line 279
    :cond_d5
    move v0, v1

    .line 281
    .local v0, charsCopied:I
    iget v5, p0, Ljava/io/PipedReader;->in:I

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v5, v6

    sub-int v6, p3, v1

    if-le v5, v6, :cond_102

    sub-int v5, p3, v1

    move v1, v5

    .line 283
    :goto_e2
    iget-object v5, p0, Ljava/io/PipedReader;->data:[C

    iget v6, p0, Ljava/io/PipedReader;->out:I

    add-int v7, p2, v0

    invoke-static {v5, v6, p1, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 286
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v6, :cond_fc

    .line 288
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/PipedReader;->in:I

    .line 289
    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 291
    :cond_fc
    add-int v5, v0, v1

    monitor-exit v4

    move v4, v5

    goto/16 :goto_4e

    .line 281
    :cond_102
    iget v5, p0, Ljava/io/PipedReader;->in:I

    iget v6, p0, Ljava/io/PipedReader;->out:I
    :try_end_106
    .catchall {:try_start_92 .. :try_end_106} :catchall_15

    sub-int/2addr v5, v6

    move v1, v5

    goto :goto_e2
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-boolean v1, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v1, :cond_16

    .line 314
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K007b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 316
    :cond_16
    :try_start_16
    iget-object v1, p0, Ljava/io/PipedReader;->data:[C

    if-nez v1, :cond_26

    .line 317
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0078"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_26
    iget v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    const/4 v1, 0x1

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_13

    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method receive(C)V
    .registers 7
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "K0076"

    .line 338
    iget-object v1, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_5
    iget-object v2, p0, Ljava/io/PipedReader;->data:[C

    if-nez v2, :cond_18

    .line 340
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0078"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v2

    .line 342
    :cond_18
    :try_start_18
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_30

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_30

    .line 343
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0076"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_15

    .line 352
    :cond_36
    :try_start_36
    iget-object v2, p0, Ljava/io/PipedReader;->data:[C

    if-eqz v2, :cond_6c

    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-ne v2, v3, :cond_6c

    .line 353
    iget-object v2, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 355
    iget-object v2, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 357
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_36

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_36

    .line 358
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0076"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_64} :catch_64

    .line 361
    :catch_64
    move-exception v2

    move-object v0, v2

    .line 362
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_66
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 364
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6c
    iget-object v2, p0, Ljava/io/PipedReader;->data:[C

    if-eqz v2, :cond_8e

    .line 365
    iget v2, p0, Ljava/io/PipedReader;->in:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_78

    .line 366
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 368
    :cond_78
    iget-object v2, p0, Ljava/io/PipedReader;->data:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/PipedReader;->in:I

    aput-char p1, v2, v3

    .line 369
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    array-length v3, v3

    if-ne v2, v3, :cond_8c

    .line 370
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 372
    :cond_8c
    monitor-exit v1

    .line 375
    :goto_8d
    return-void

    .line 374
    :cond_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_66 .. :try_end_8f} :catchall_15

    goto :goto_8d
.end method

.method receive([CII)V
    .registers 10
    .parameter "chars"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "K0076"

    .line 396
    iget-object v2, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    :try_start_5
    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    if-nez v3, :cond_18

    .line 398
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0078"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v3

    .line 400
    :cond_18
    :try_start_18
    iget-object v3, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v3, :cond_30

    iget-object v3, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_30

    .line 401
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0076"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    :cond_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_15

    .line 409
    :cond_36
    :goto_36
    if-lez p3, :cond_72

    .line 411
    :cond_38
    :try_start_38
    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    if-eqz v3, :cond_6e

    iget v3, p0, Ljava/io/PipedReader;->out:I

    iget v4, p0, Ljava/io/PipedReader;->in:I

    if-ne v3, v4, :cond_6e

    .line 412
    iget-object v3, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 414
    iget-object v3, p0, Ljava/io/PipedReader;->lock:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 416
    iget-object v3, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v3, :cond_38

    iget-object v3, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_38

    .line 417
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0076"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_66
    .catchall {:try_start_38 .. :try_end_66} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_66} :catch_66

    .line 420
    :catch_66
    move-exception v3

    move-object v0, v3

    .line 421
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_68
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 423
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6e
    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    if-nez v3, :cond_76

    .line 453
    :cond_72
    if-nez p3, :cond_c7

    .line 454
    monitor-exit v2

    .line 457
    :goto_75
    return-void

    .line 426
    :cond_76
    iget v3, p0, Ljava/io/PipedReader;->in:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7e

    .line 427
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedReader;->in:I

    .line 429
    :cond_7e
    iget v3, p0, Ljava/io/PipedReader;->in:I

    iget v4, p0, Ljava/io/PipedReader;->out:I

    if-lt v3, v4, :cond_a6

    .line 430
    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v3, v4

    .line 431
    .local v1, length:I
    if-ge p3, v1, :cond_8e

    .line 432
    move v1, p3

    .line 434
    :cond_8e
    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    iget v4, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    add-int/2addr p2, v1

    .line 436
    sub-int/2addr p3, v1

    .line 437
    iget v3, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    .line 438
    iget v3, p0, Ljava/io/PipedReader;->in:I

    iget-object v4, p0, Ljava/io/PipedReader;->data:[C

    array-length v4, v4

    if-ne v3, v4, :cond_a6

    .line 439
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedReader;->in:I

    .line 442
    .end local v1           #length:I
    :cond_a6
    if-lez p3, :cond_36

    iget v3, p0, Ljava/io/PipedReader;->in:I

    iget v4, p0, Ljava/io/PipedReader;->out:I

    if-eq v3, v4, :cond_36

    .line 443
    iget v3, p0, Ljava/io/PipedReader;->out:I

    iget v4, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v3, v4

    .line 444
    .restart local v1       #length:I
    if-ge p3, v1, :cond_b7

    .line 445
    move v1, p3

    .line 447
    :cond_b7
    iget-object v3, p0, Ljava/io/PipedReader;->data:[C

    iget v4, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    add-int/2addr p2, v1

    .line 449
    sub-int/2addr p3, v1

    .line 450
    iget v3, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    goto/16 :goto_36

    .line 456
    .end local v1           #length:I
    :cond_c7
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_68 .. :try_end_c8} :catchall_15

    goto :goto_75
.end method
