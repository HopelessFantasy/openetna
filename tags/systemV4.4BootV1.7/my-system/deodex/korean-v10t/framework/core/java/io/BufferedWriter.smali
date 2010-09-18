.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# instance fields
.field private buf:[C

.field private final lineSeparator:Ljava/lang/String;

.field private out:Ljava/io/Writer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 70
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    .line 80
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    const-string v1, "Default buffer size used in BufferedWriter constructor. It would be better to be explicit if an 8k-char buffer is required."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 5
    .parameter "out"
    .parameter "size"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 102
    if-gtz p2, :cond_20

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0058"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_20
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 106
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    .line 107
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

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
    .line 120
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 122
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 123
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 127
    :cond_17
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

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
    .line 140
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 142
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005d"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 144
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    if-lez v1, :cond_26

    .line 145
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 147
    :cond_26
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    .line 148
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 149
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_15

    .line 150
    return-void
.end method

.method public newLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 172
    return-void
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
    .line 255
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 257
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K005d"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 259
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v1, v2, :cond_2d

    .line 260
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 261
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    .line 263
    :cond_2d
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 264
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_15

    .line 265
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 11
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v2, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 292
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K005d"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3

    .line 294
    :cond_18
    if-gtz p3, :cond_1c

    .line 295
    :try_start_1a
    monitor-exit v2

    .line 331
    :goto_1b
    return-void

    .line 297
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    if-gt p2, v3, :cond_25

    if-gez p2, :cond_2b

    .line 298
    :cond_25
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 300
    :cond_2b
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v3, :cond_44

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-lt p3, v3, :cond_44

    .line 301
    new-array v1, p3, [C

    .line 302
    .local v1, chars:[C
    add-int v3, p2, p3

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 303
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, p3}, Ljava/io/Writer;->write([CII)V

    .line 304
    monitor-exit v2

    goto :goto_1b

    .line 306
    .end local v1           #chars:[C
    :cond_44
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    iget v4, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v3, v4

    .line 307
    .local v0, available:I
    if-ge p3, v0, :cond_4e

    .line 308
    move v0, p3

    .line 310
    :cond_4e
    if-lez v0, :cond_5e

    .line 311
    add-int v3, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 312
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 314
    :cond_5e
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    if-ne v3, v4, :cond_9b

    .line 315
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 316
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 317
    if-le p3, v0, :cond_9b

    .line 318
    add-int/2addr p2, v0

    .line 319
    sub-int v0, p3, v0

    .line 320
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-lt v0, v3, :cond_8d

    .line 321
    new-array v1, p3, [C

    .line 322
    .restart local v1       #chars:[C
    add-int v3, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    .line 324
    monitor-exit v2

    goto :goto_1b

    .line 326
    .end local v1           #chars:[C
    :cond_8d
    add-int v3, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 327
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 330
    :cond_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_1a .. :try_end_9c} :catchall_15

    goto/16 :goto_1b
.end method

.method public write([CII)V
    .registers 10
    .parameter "cbuf"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 198
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K005d"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2

    .line 205
    :cond_18
    if-nez p1, :cond_26

    .line 206
    :try_start_1a
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K0047"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_26
    or-int v2, p2, p3

    if-ltz v2, :cond_2e

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_3a

    .line 209
    :cond_2e
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "K002f"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_3a
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v2, :cond_4a

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt p3, v2, :cond_4a

    .line 213
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 214
    monitor-exit v1

    .line 240
    :goto_49
    return-void

    .line 216
    :cond_4a
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v2, v3

    .line 217
    .local v0, available:I
    if-ge p3, v0, :cond_54

    .line 218
    move v0, p3

    .line 220
    :cond_54
    if-lez v0, :cond_62

    .line 221
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 224
    :cond_62
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_94

    .line 225
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Writer;->write([CII)V

    .line 226
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 227
    if-le p3, v0, :cond_94

    .line 228
    add-int/2addr p2, v0

    .line 229
    sub-int v0, p3, v0

    .line 230
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_88

    .line 231
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    .line 232
    monitor-exit v1

    goto :goto_49

    .line 235
    :cond_88
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 239
    :cond_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_1a .. :try_end_95} :catchall_15

    goto :goto_49
.end method
