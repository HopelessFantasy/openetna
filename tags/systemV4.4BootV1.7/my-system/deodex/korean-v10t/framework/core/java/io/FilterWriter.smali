.class public abstract Ljava/io/FilterWriter;
.super Ljava/io/Writer;
.source "FilterWriter.java"


# instance fields
.field protected out:Ljava/io/Writer;


# direct methods
.method protected constructor <init>(Ljava/io/Writer;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    .line 51
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
    .line 62
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public write(I)V
    .registers 4
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public write([CII)V
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
    .line 101
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
