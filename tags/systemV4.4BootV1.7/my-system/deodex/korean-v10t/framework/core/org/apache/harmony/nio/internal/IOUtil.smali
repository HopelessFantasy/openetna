.class public final Lorg/apache/harmony/nio/internal/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static convert(Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/io/OutputStream;)V
    .registers 8
    .parameter "lock"
    .parameter "encoder"
    .parameter "bytes"
    .parameter "chars"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    if-nez p1, :cond_12

    .line 222
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "nio.07"

    invoke-static {v2}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 224
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    invoke-virtual {p1, p3, p2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 226
    .local v0, result:Ljava/nio/charset/CoderResult;
    :goto_17
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 227
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_27
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 230
    invoke-static {p4, p2, p1, p0}, Lorg/apache/harmony/nio/internal/IOUtil;->flushOutputStreamWriter(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V

    .line 231
    const/4 v1, 0x1

    invoke-virtual {p1, p3, p2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 232
    goto :goto_17

    .line 236
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_f

    .line 237
    return-void
.end method

.method private static fillBuf(Ljava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;)V
    .registers 10
    .parameter "in"
    .parameter "bytes"
    .parameter "chars"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    const/4 v2, 0x0

    .line 135
    .local v2, read:I
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_14

    move-result v2

    .line 140
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1a

    .line 141
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 152
    :goto_13
    return-void

    .line 136
    :catch_14
    move-exception v4

    move-object v0, v4

    .line 137
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    throw v0

    .line 144
    .end local v0           #e:Ljava/io/IOException;
    :cond_1a
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    const/16 v4, 0x2000

    if-ge v2, v4, :cond_37

    const/4 v4, 0x1

    move v1, v4

    .line 146
    .local v1, endOfInput:Z
    :goto_23
    invoke-virtual {p3, p1, p2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 147
    .local v3, result:Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 148
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #endOfInput:Z
    .end local v3           #result:Ljava/nio/charset/CoderResult;
    :cond_37
    move v1, v5

    .line 145
    goto :goto_23

    .line 150
    .restart local v1       #endOfInput:Z
    .restart local v3       #result:Ljava/nio/charset/CoderResult;
    :cond_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_13
.end method

.method public static flushOutputStreamWriter(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V
    .registers 7
    .parameter "out"
    .parameter "bytes"
    .parameter "encoder"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p3

    .line 199
    if-nez p2, :cond_12

    .line 201
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "nio.07"

    invoke-static {v2}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :catchall_f
    move-exception v1

    monitor-exit p3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 204
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, position:I
    if-lez v0, :cond_26

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 209
    :cond_26
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 210
    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_f

    .line 211
    return-void
.end method

.method public static readInputStreamReader(Ljava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Object;)I
    .registers 7
    .parameter "in"
    .parameter "bytes"
    .parameter "chars"
    .parameter "decoder"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p4

    .line 67
    if-eqz p0, :cond_22

    .line 68
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 69
    invoke-static {p0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/IOUtil;->fillBuf(Ljava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;)V

    .line 71
    :cond_10
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    if-nez v0, :cond_19

    .line 72
    const/4 v0, -0x1

    monitor-exit p4

    .line 74
    :goto_18
    return v0

    :cond_19
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    monitor-exit p4

    goto :goto_18

    .line 78
    :catchall_1f
    move-exception v0

    monitor-exit p4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    .line 77
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "nio.06"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_1f
.end method

.method public static readInputStreamReader([CIILjava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Object;)I
    .registers 14
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .parameter "in"
    .parameter "bytes"
    .parameter "chars"
    .parameter "decoder"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 87
    monitor-enter p7

    .line 88
    if-eqz p3, :cond_6c

    .line 89
    if-nez p2, :cond_9

    .line 90
    const/4 v3, 0x0

    :try_start_7
    monitor-exit p7

    .line 120
    :goto_8
    return v3

    .line 92
    :cond_9
    invoke-static {p0, p1, p2}, Lorg/apache/harmony/nio/Util;->assertArrayIndex([CII)V

    .line 94
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    invoke-virtual {p5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-ne v3, v4, :cond_19

    .line 95
    invoke-static {p3, p4, p5, p6}, Lorg/apache/harmony/nio/internal/IOUtil;->fillBuf(Ljava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;)V

    .line 97
    :cond_19
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 98
    .local v2, position:I
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    sub-int v0, v3, v2

    .line 100
    .local v0, availableChars:I
    move v1, p2

    .line 101
    .local v1, needChars:I
    :cond_24
    if-ge v0, v1, :cond_5a

    .line 102
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-static {v3, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    add-int v3, v2, v0

    invoke-virtual {p5, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    sub-int/2addr v1, v0

    .line 106
    add-int/2addr p1, v0

    .line 107
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_45

    .line 108
    if-ne v1, p2, :cond_42

    move v3, v5

    :goto_3d
    monitor-exit p7

    goto :goto_8

    .line 124
    .end local v0           #availableChars:I
    .end local v1           #needChars:I
    .end local v2           #position:I
    :catchall_3f
    move-exception v3

    monitor-exit p7
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v3

    .line 108
    .restart local v0       #availableChars:I
    .restart local v1       #needChars:I
    .restart local v2       #position:I
    :cond_42
    sub-int v3, p2, v1

    goto :goto_3d

    .line 110
    :cond_45
    :try_start_45
    invoke-static {p3, p4, p5, p6}, Lorg/apache/harmony/nio/internal/IOUtil;->fillBuf(Ljava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;)V

    .line 111
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 112
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 113
    if-nez v0, :cond_24

    .line 114
    if-ne v1, p2, :cond_57

    move v3, v5

    :goto_55
    monitor-exit p7

    goto :goto_8

    :cond_57
    sub-int v3, p2, v1

    goto :goto_55

    .line 117
    :cond_5a
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-static {v3, v2, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-virtual {p5}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p5, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    monitor-exit p7

    move v3, p2

    goto :goto_8

    .line 123
    .end local v0           #availableChars:I
    .end local v1           #needChars:I
    .end local v2           #position:I
    :cond_6c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "nio.06"

    invoke-static {v4}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_78
    .catchall {:try_start_45 .. :try_end_78} :catchall_3f
.end method

.method public static writeOutputStreamWriter(ILjava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V
    .registers 9
    .parameter "oneChar"
    .parameter "out"
    .parameter "bytes"
    .parameter "encoder"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p4

    .line 172
    if-nez p3, :cond_12

    .line 174
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "nio.07"

    invoke-static {v2}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :catchall_f
    move-exception v1

    monitor-exit p4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 176
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    new-array v1, v1, [C

    const/4 v2, 0x0

    int-to-char v3, p0

    aput-char v3, v1, v2

    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 177
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-static {p4, p3, p2, v0, p1}, Lorg/apache/harmony/nio/internal/IOUtil;->convert(Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/io/OutputStream;)V

    .line 178
    monitor-exit p4
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_f

    .line 179
    return-void
.end method

.method public static writeOutputStreamWriter(Ljava/lang/String;IILjava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V
    .registers 9
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .parameter "out"
    .parameter "bytes"
    .parameter "encoder"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/harmony/nio/Util;->assertArrayIndex(III)V

    .line 161
    add-int v1, p2, p1

    invoke-static {p0, p1, v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 162
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-static {p6, p5, p4, v0, p3}, Lorg/apache/harmony/nio/internal/IOUtil;->convert(Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/io/OutputStream;)V

    .line 163
    return-void
.end method

.method public static writeOutputStreamWriter([CIILjava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V
    .registers 8
    .parameter "buf"
    .parameter "offset"
    .parameter "count"
    .parameter "out"
    .parameter "bytes"
    .parameter "encoder"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p0, p1, p2}, Lorg/apache/harmony/nio/Util;->assertArrayIndex([CII)V

    .line 188
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 189
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-static {p6, p5, p4, v0, p3}, Lorg/apache/harmony/nio/internal/IOUtil;->convert(Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/io/OutputStream;)V

    .line 190
    return-void
.end method
