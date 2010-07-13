.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private bytes:Ljava/nio/ByteBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 49
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 62
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 63
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "file.encoding"

    const-string v3, "ISO8859_1"

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, encoding:Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 67
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 68
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "out"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 49
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 90
    if-nez p2, :cond_13

    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 93
    :cond_13
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 95
    :try_start_15
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_2e

    .line 99
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 100
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 101
    return-void

    .line 96
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .parameter "out"
    .parameter "cs"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 49
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 116
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 117
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 118
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 119
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .registers 4
    .parameter "out"
    .parameter "enc"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 49
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 136
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 137
    iput-object p2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 138
    return-void
.end method

.method private checkStatus()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_10

    .line 193
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K005d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_10
    return-void
.end method

.method private convert(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 259
    .local v0, result:Ljava/nio/charset/CoderResult;
    :goto_9
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 260
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_19
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 263
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 264
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 265
    goto :goto_9

    .line 269
    :cond_2b
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v1, :cond_21

    .line 157
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 158
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 159
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 160
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 164
    :cond_21
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 181
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, position:I
    if-lez v0, :cond_24

    .line 182
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 186
    :cond_24
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    .end local v0           #position:I
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_6

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/InputStreamReader$HistoricalNamesUtil;->getHistoricalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public write(I)V
    .registers 7
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 287
    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    int-to-char v4, p1

    aput-char v4, v2, v3

    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 288
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 289
    monitor-exit v1

    .line 290
    return-void

    .line 289
    .end local v0           #chars:Ljava/nio/CharBuffer;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    if-nez p1, :cond_14

    .line 323
    :try_start_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K0047"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v2

    .line 325
    :cond_14
    or-int v2, p2, p3

    if-ltz v2, :cond_1f

    :try_start_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_2b

    .line 326
    :cond_1f
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v3, "K002f"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_2b
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 330
    add-int v2, p3, p2

    invoke-static {p1, p2, v2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 331
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 332
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_11

    .line 333
    return-void
.end method

.method public write([CII)V
    .registers 8
    .parameter "buf"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 244
    if-nez p1, :cond_17

    .line 245
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K0047"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v2

    .line 247
    :cond_17
    or-int v2, p2, p3

    if-ltz v2, :cond_1f

    :try_start_1b
    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_2b

    .line 248
    :cond_1f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "K002f"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_2b
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 252
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 253
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_14

    .line 254
    return-void
.end method
