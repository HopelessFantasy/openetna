.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected buf:[C

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 57
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 58
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialSize"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 74
    if-gez p1, :cond_11

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K005e"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_11
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 78
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method private expand(I)V
    .registers 6
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 93
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    if-gt v1, v2, :cond_a

    .line 100
    :goto_9
    return-void

    .line 97
    :cond_a
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v1, v1

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 98
    .local v0, newbuf:[C
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    goto :goto_9
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .registers 2
    .parameter "c"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 297
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .registers 5
    .parameter "csq"

    .prologue
    const/4 v1, 0x0

    const-string v2, "null"

    .line 312
    if-nez p1, :cond_11

    .line 313
    const-string v0, "null"

    const-string v0, "null"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    .line 317
    :goto_10
    return-object p0

    .line 315
    :cond_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    goto :goto_10
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 344
    if-nez p1, :cond_4

    .line 345
    const-string p1, "null"

    .line 347
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, output:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    .line 349
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
    .line 32
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

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
    .line 32
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

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
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

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
    .line 32
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

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
    .line 32
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

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
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v0

    return v1

    .line 136
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toCharArray()[C
    .registers 7

    .prologue
    .line 148
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_3
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    new-array v0, v2, [C

    .line 150
    .local v0, result:[C
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    monitor-exit v1

    return-object v0

    .line 152
    .end local v0           #result:[C
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 165
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v1

    .line 167
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"

    .prologue
    .line 220
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 222
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .parameter "str"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 246
    if-nez p1, :cond_e

    .line 247
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_e
    or-int v0, p2, p3

    if-ltz v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_25

    .line 256
    :cond_19
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_25
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_28
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 261
    add-int v1, p2, p3

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 262
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public write([CII)V
    .registers 7
    .parameter "c"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 195
    if-nez p1, :cond_e

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_e
    or-int v0, p2, p3

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 199
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_22
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_25
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 204
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
