.class public Ljava/io/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/InputStreamReader$HistoricalNamesUtil;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field bytes:Ljava/nio/ByteBuffer;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 55
    iput-boolean v4, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 59
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 73
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 74
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "file.encoding"

    const-string v3, "ISO8859_1"

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, encoding:Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 80
    iget-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .parameter "in"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 55
    iput-boolean v3, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 59
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 102
    if-nez p2, :cond_16

    .line 103
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 105
    :cond_16
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 107
    :try_start_18
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2e} :catch_34

    .line 114
    iget-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    return-void

    .line 110
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 6
    .parameter "in"
    .parameter "charset"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 55
    iput-boolean v2, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 59
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 147
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 148
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 151
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5
    .parameter "in"
    .parameter "dec"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 55
    iput-boolean v1, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 59
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    .line 130
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 131
    iput-object p2, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 132
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    return-void
.end method

.method private isOpen()Z
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_6

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
    .line 164
    iget-object v0, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-eqz v1, :cond_c

    .line 167
    iget-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 170
    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 171
    iget-object v1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1b

    .line 172
    iget-object v1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 175
    :cond_1b
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/InputStreamReader$HistoricalNamesUtil;->getHistoricalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 362
    iget-object v1, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_4
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v2

    if-nez v2, :cond_19

    .line 365
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0070"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v2

    .line 368
    :cond_19
    const/4 v2, 0x1

    :try_start_1a
    new-array v0, v2, [C

    .line 369
    .local v0, buf:[C
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    if-eq v2, v4, :cond_29

    const/4 v2, 0x0

    aget-char v2, v0, v2

    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_16

    return v2

    :cond_29
    move v2, v4

    goto :goto_27
.end method

.method public read([CII)I
    .registers 15
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    iget-object v6, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 401
    :try_start_6
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 403
    new-instance v7, Ljava/io/IOException;

    const-string v8, "K0070"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 481
    :catchall_18
    move-exception v7

    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v7

    .line 410
    :cond_1b
    if-nez p1, :cond_29

    .line 411
    :try_start_1d
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "K0047"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 413
    :cond_29
    or-int v7, p2, p3

    if-ltz v7, :cond_31

    array-length v7, p1

    sub-int/2addr v7, p3

    if-le p2, v7, :cond_3d

    .line 414
    :cond_31
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    const-string v8, "K002f"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 417
    :cond_3d
    if-nez p3, :cond_42

    .line 418
    monitor-exit v6

    move v6, v8

    .line 480
    :goto_41
    return v6

    .line 421
    :cond_42
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 422
    .local v2, out:Ljava/nio/CharBuffer;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 426
    .local v3, result:Ljava/nio/charset/CoderResult;
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_8d

    move v0, v9

    .line 428
    .local v0, needInput:Z
    :goto_51
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 430
    if-eqz v0, :cond_cc

    .line 431
    iget-object v7, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_8f

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v7

    if-le v7, p2, :cond_8f

    .line 466
    :cond_67
    :goto_67
    sget-object v7, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v7, :cond_7d

    iget-boolean v7, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    if-eqz v7, :cond_7d

    .line 467
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v2, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 472
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 474
    :cond_7d
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v7

    if-eqz v7, :cond_102

    .line 475
    new-instance v7, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v7

    .end local v0           #needInput:Z
    :cond_8d
    move v0, v8

    .line 426
    goto :goto_51

    .line 436
    .restart local v0       #needInput:Z
    :cond_8f
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    sub-int v4, v7, v8

    .line 437
    .local v4, to_read:I
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int v1, v7, v8

    .line 438
    .local v1, off:I
    iget-object v7, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 440
    .local v5, was_red:I
    if-ne v5, v10, :cond_bd

    .line 441
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    goto :goto_67

    .line 443
    :cond_bd
    if-eqz v5, :cond_67

    .line 446
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 447
    const/4 v0, 0x0

    .line 451
    .end local v1           #off:I
    .end local v4           #to_read:I
    .end local v5           #was_red:I
    :cond_cc
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 455
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ne v7, v8, :cond_ff

    .line 456
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 457
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 458
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 460
    :cond_ff
    const/4 v0, 0x1

    goto/16 :goto_51

    .line 476
    :cond_102
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v7

    if-eqz v7, :cond_112

    .line 477
    new-instance v7, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v7

    .line 480
    :cond_112
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v7

    sub-int/2addr v7, p2

    if-nez v7, :cond_11e

    move v7, v10

    :goto_11a
    monitor-exit v6

    move v6, v7

    goto/16 :goto_41

    :cond_11e
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I
    :try_end_121
    .catchall {:try_start_1d .. :try_end_121} :catchall_18

    move-result v7

    sub-int/2addr v7, p2

    goto :goto_11a
.end method

.method public ready()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 508
    iget-object v1, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_4
    iget-object v2, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-nez v2, :cond_17

    .line 511
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K0070"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v2

    .line 514
    :cond_17
    :try_start_17
    iget-object v2, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_14
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_24} :catch_2d

    move-result v2

    if-lez v2, :cond_2b

    :cond_27
    const/4 v2, 0x1

    :goto_28
    :try_start_28
    monitor-exit v1

    move v1, v2

    .line 516
    :goto_2a
    return v1

    :cond_2b
    move v2, v3

    .line 514
    goto :goto_28

    .line 515
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 516
    .local v0, e:Ljava/io/IOException;
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_14

    move v1, v3

    goto :goto_2a
.end method
