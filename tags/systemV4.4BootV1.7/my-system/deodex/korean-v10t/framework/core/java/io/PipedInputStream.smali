.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field protected in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field protected out:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 56
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 68
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->isConnected:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 56
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 68
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->isConnected:Z

    .line 93
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 94
    return-void
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
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 109
    :cond_a
    const/4 v0, 0x0

    .line 111
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-gt v0, v1, :cond_1d

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    sub-int/2addr v0, v1

    goto :goto_b

    .line 108
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v0, :cond_8

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 130
    :cond_8
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .registers 2
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 146
    return-void
.end method

.method declared-synchronized done()V
    .registers 2

    .prologue
    .line 393
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isClosed:Z

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 395
    monitor-exit p0

    return-void

    .line 393
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 170
    monitor-enter p0

    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v3, :cond_15

    .line 171
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0074"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 170
    :catchall_12
    move-exception v3

    monitor-exit p0

    throw v3

    .line 173
    :cond_15
    :try_start_15
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v3, :cond_25

    .line 174
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0075"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_12

    .line 183
    const/4 v1, 0x1

    .line 184
    .local v1, first:Z
    :goto_2c
    :try_start_2c
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v3, v5, :cond_63

    .line 186
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_32} :catch_51

    if-eqz v3, :cond_37

    move v3, v5

    .line 210
    :goto_35
    monitor-exit p0

    return v3

    .line 189
    :cond_37
    if-nez v1, :cond_59

    :try_start_39
    iget-object v3, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v3, :cond_59

    iget-object v3, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_59

    .line 190
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0076"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_51} :catch_51

    .line 197
    :catch_51
    move-exception v3

    move-object v0, v3

    .line 198
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_53
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_12

    .line 192
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_59
    const/4 v1, 0x0

    .line 194
    :try_start_5a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_62} :catch_51

    goto :goto_2c

    .line 201
    :cond_63
    :try_start_63
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v2, v3, v4

    .line 202
    .local v2, result:B
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-ne v3, v4, :cond_77

    .line 203
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 205
    :cond_77
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v3, v4, :cond_83

    .line 207
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    .line 208
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_83
    .catchall {:try_start_63 .. :try_end_83} :catchall_12

    .line 210
    :cond_83
    and-int/lit16 v3, v2, 0xff

    goto :goto_35
.end method

.method public declared-synchronized read([BII)I
    .registers 11
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 249
    monitor-enter p0

    if-nez p1, :cond_14

    .line 250
    :try_start_5
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "K0047"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    .line 249
    :catchall_11
    move-exception v4

    monitor-exit p0

    throw v4

    .line 257
    :cond_14
    or-int v4, p2, p3

    if-ltz v4, :cond_1c

    :try_start_18
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le p3, v4, :cond_28

    .line 258
    :cond_1c
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "K002f"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_11

    .line 262
    :cond_28
    if-nez p3, :cond_2d

    move v4, v5

    .line 335
    :goto_2b
    monitor-exit p0

    return v4

    .line 266
    :cond_2d
    :try_start_2d
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v4, :cond_3d

    .line 267
    new-instance v4, Ljava/io/IOException;

    const-string v5, "K0074"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_3d
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v4, :cond_4d

    .line 271
    new-instance v4, Ljava/io/IOException;

    const-string v5, "K0075"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_4d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_11

    .line 281
    const/4 v3, 0x1

    .line 282
    .local v3, first:Z
    :goto_54
    :try_start_54
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v6, :cond_8a

    .line 284
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isClosed:Z

    if-eqz v4, :cond_5e

    move v4, v6

    .line 285
    goto :goto_2b

    .line 287
    :cond_5e
    if-nez v3, :cond_80

    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v4, :cond_80

    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_80

    .line 288
    new-instance v4, Ljava/io/IOException;

    const-string v5, "K0076"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_78
    .catchall {:try_start_54 .. :try_end_78} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_78} :catch_78

    .line 295
    :catch_78
    move-exception v4

    move-object v2, v4

    .line 296
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_7a
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_11

    .line 290
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_80
    const/4 v3, 0x0

    .line 292
    :try_start_81
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 293
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_89} :catch_78

    goto :goto_54

    .line 299
    :cond_8a
    const/4 v1, 0x0

    .line 301
    .local v1, copyLength:I
    :try_start_8b
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    if-lt v4, v5, :cond_c2

    .line 302
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_cb

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    move v1, v4

    .line 304
    :goto_a0
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    invoke-static {v4, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 306
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v5, v5

    if-ne v4, v5, :cond_b6

    .line 307
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 309
    :cond_b6
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v5, :cond_c2

    .line 311
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 312
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 320
    :cond_c2
    if-eq v1, p3, :cond_c8

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v6, :cond_cd

    :cond_c8
    move v4, v1

    .line 321
    goto/16 :goto_2b

    :cond_cb
    move v1, p3

    .line 302
    goto :goto_a0

    .line 324
    :cond_cd
    move v0, v1

    .line 326
    .local v0, bytesCopied:I
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    sub-int v5, p3, v0

    if-le v4, v5, :cond_f8

    sub-int v4, p3, v0

    move v1, v4

    .line 328
    :goto_da
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    add-int v6, p2, v0

    invoke-static {v4, v5, p1, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 330
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v5, :cond_f4

    .line 332
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 333
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 335
    :cond_f4
    add-int v4, v0, v1

    goto/16 :goto_2b

    .line 326
    :cond_f8
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    iget v5, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_fc
    .catchall {:try_start_8b .. :try_end_fc} :catchall_11

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_da
.end method

.method protected declared-synchronized receive(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "K0076"

    .line 357
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    if-eqz v1, :cond_1a

    .line 358
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0078"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 357
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 360
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_32

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_32

    .line 361
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0076"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_17

    .line 370
    :cond_38
    :try_start_38
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_6a

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v1, v2, :cond_6a

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 372
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 373
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_38

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_38

    .line 374
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0076"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_62} :catch_62

    .line 377
    :catch_62
    move-exception v1

    move-object v0, v1

    .line 378
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_64
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 380
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6a
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_8b

    .line 381
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_76

    .line 382
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 384
    :cond_76
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 385
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_8b

    .line 386
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_8b
    .catchall {:try_start_64 .. :try_end_8b} :catchall_17

    .line 390
    :cond_8b
    monitor-exit p0

    return-void
.end method
