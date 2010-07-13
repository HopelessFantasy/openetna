.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private dest:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .registers 2
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->done()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    .line 80
    :cond_c
    return-void
.end method

.method public connect(Ljava/io/PipedInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_8

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 96
    :cond_8
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_18

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0079"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_18
    monitor-enter p1

    .line 100
    :try_start_19
    iget-boolean v0, p1, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_2c

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K007a"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v0

    .line 103
    :cond_2c
    const/16 v0, 0x400

    :try_start_2e
    new-array v0, v0, [B

    iput-object v0, p1, Ljava/io/PipedInputStream;->buffer:[B

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedInputStream;->isConnected:Z

    .line 105
    iput-object p1, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    .line 106
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_29

    .line 107
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    monitor-enter v0

    .line 121
    :try_start_7
    iget-object v1, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v0

    .line 124
    :cond_d
    return-void

    .line 122
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public write(I)V
    .registers 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    if-nez v0, :cond_10

    .line 193
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K007b"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_10
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 196
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Ljava/io/PipedOutputStream;->dest:Ljava/io/PipedInputStream;

    if-nez v0, :cond_10

    .line 163
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K007b"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_10
    invoke-super {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    return-void
.end method
