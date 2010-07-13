.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private closed:Z

.field private dest:Ljava/io/PipedReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .registers 2
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 65
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
    .line 78
    iget-object v0, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    if-eqz v1, :cond_f

    .line 81
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    invoke-virtual {v1}, Ljava/io/PipedReader;->done()V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    .line 84
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PipedWriter;->closed:Z

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public connect(Ljava/io/PipedReader;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    if-eqz v1, :cond_16

    .line 102
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0079"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 104
    :cond_16
    :try_start_16
    iget-boolean v1, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v1, :cond_26

    .line 105
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0078"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_26
    invoke-virtual {p1}, Ljava/io/PipedReader;->establishConnection()V

    .line 108
    iput-object p1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    .line 109
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_13

    .line 110
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    invoke-virtual {v0}, Ljava/io/PipedReader;->flush()V

    .line 125
    :cond_9
    return-void
.end method

.method public write(I)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-boolean v1, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v1, :cond_16

    .line 216
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0078"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 218
    :cond_16
    :try_start_16
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    if-nez v1, :cond_26

    .line 219
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K007b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_26
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/io/PipedReader;->receive(C)V

    .line 222
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_13

    .line 223
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-boolean v1, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v1, :cond_16

    .line 167
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0078"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 169
    :cond_16
    :try_start_16
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    if-nez v1, :cond_26

    .line 170
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K007b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_26
    if-nez p1, :cond_34

    .line 173
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_34
    or-int v1, p2, p3

    if-ltz v1, :cond_3c

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_48

    .line 183
    :cond_3c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_48
    iget-object v1, p0, Ljava/io/PipedWriter;->dest:Ljava/io/PipedReader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 187
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_13

    .line 188
    return-void
.end method
