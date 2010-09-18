.class public Ljava/io/StringWriter;
.super Ljava/io/Writer;
.source "StringWriter.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    .line 49
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialSize"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    if-gez p1, :cond_b

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    .line 67
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/StringWriter;
    .registers 2
    .parameter "c"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->write(I)V

    .line 220
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    .registers 5
    .parameter "csq"

    .prologue
    const/4 v1, 0x0

    const-string v2, "null"

    .line 236
    if-nez p1, :cond_11

    .line 237
    const-string v0, "null"

    const-string v0, "null"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    .line 241
    :goto_10
    return-object p0

    .line 239
    :cond_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    goto :goto_10
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 268
    if-nez p1, :cond_4

    .line 269
    const-string p1, "null"

    .line 271
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, output:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;II)V

    .line 273
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public getBuffer()Ljava/lang/StringBuffer;
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object v1, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public write(I)V
    .registers 5
    .parameter "oneChar"

    .prologue
    .line 165
    iget-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 180
    iget-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .registers 7
    .parameter "str"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 202
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, sub:Ljava/lang/String;
    iget-object v1, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_9
    iget-object v2, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v2
.end method

.method public write([CII)V
    .registers 6
    .parameter "cbuf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 143
    if-nez p1, :cond_e

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_e
    or-int v0, p2, p3

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 147
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_22
    iget-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_25
    iget-object v1, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw v1
.end method
