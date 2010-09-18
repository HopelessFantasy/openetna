.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method decodeUTF(I)Ljava/lang/String;
    .registers 6
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 521
    new-array v0, p1, [B

    .line 522
    .local v0, buf:[B
    new-array v1, p1, [C

    .line 524
    .local v1, out:[C
    invoke-virtual {p0, v0, v3, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 526
    invoke-static {v0, v1, v3, p1}, Lorg/apache/harmony/luni/util/Util;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method

.method public final read([B)I
    .registers 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 112
    .local v0, temp:I
    if-gez v0, :cond_e

    .line 113
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 115
    :cond_e
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public final readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 132
    .local v0, temp:I
    if-gez v0, :cond_e

    .line 133
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 135
    :cond_e
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 152
    .local v0, b1:I
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 153
    .local v1, b2:I
    or-int v2, v0, v1

    if-gez v2, :cond_16

    .line 154
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 156
    :cond_16
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-char v2, v2

    return v2
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 209
    return-void
.end method

.method public final readFully([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    if-nez p3, :cond_3

    .line 270
    :cond_2
    return-void

    .line 247
    :cond_3
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_13

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "KA00b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_13
    if-nez p1, :cond_21

    .line 251
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_21
    or-int v1, p2, p3

    if-ltz v1, :cond_29

    array-length v1, p1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_37

    .line 259
    :cond_29
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    .local v0, result:I
    :cond_35
    add-int/2addr p2, v0

    .line 268
    sub-int/2addr p3, v0

    .line 262
    .end local v0           #result:I
    :cond_37
    if-lez p3, :cond_2

    .line 263
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 264
    .restart local v0       #result:I
    if-gez v0, :cond_35

    .line 265
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readInt()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 286
    new-array v4, v9, [B

    .line 287
    .local v4, buf:[B
    const/4 v6, 0x0

    .line 288
    .local v6, nread:I
    :goto_4
    if-ge v6, v9, :cond_19

    .line 289
    iget-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v8, v9, v6

    invoke-virtual {v7, v4, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 290
    .local v5, nbytes:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_17

    .line 291
    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v7

    .line 293
    :cond_17
    add-int/2addr v6, v5

    .line 294
    goto :goto_4

    .line 295
    .end local v5           #nbytes:I
    :cond_19
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    and-int/lit16 v0, v7, 0xff

    .line 296
    .local v0, b1:I
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v1, v7, 0xff

    .line 297
    .local v1, b2:I
    const/4 v7, 0x2

    aget-byte v7, v4, v7

    and-int/lit16 v2, v7, 0xff

    .line 298
    .local v2, b3:I
    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v3, v7, 0xff

    .line 299
    .local v3, b4:I
    shl-int/lit8 v7, v0, 0x18

    shl-int/lit8 v8, v1, 0x10

    add-int/2addr v7, v8

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    return v7
.end method

.method public final readLine()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x50

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 319
    .local v1, line:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 321
    .local v0, foundTerminator:Z
    :cond_8
    :goto_8
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 322
    .local v2, nextByte:I
    sparse-switch v2, :sswitch_data_5c

    .line 342
    if-eqz v0, :cond_56

    .line 343
    iget-object p0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    .end local p0
    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1e
    return-object v3

    .line 324
    .restart local p0
    :sswitch_1f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_29

    if-nez v0, :cond_29

    .line 325
    const/4 v3, 0x0

    goto :goto_1e

    .line 327
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 329
    :sswitch_2e
    if-eqz v0, :cond_3c

    .line 330
    iget-object p0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    .end local p0
    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 333
    .restart local p0
    :cond_3c
    const/4 v0, 0x1

    .line 335
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/PushbackInputStream;

    if-eq v3, v4, :cond_8

    .line 336
    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    goto :goto_8

    .line 340
    :sswitch_51
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 346
    :cond_56
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 322
    nop

    :sswitch_data_5c
    .sparse-switch
        -0x1 -> :sswitch_1f
        0xa -> :sswitch_51
        0xd -> :sswitch_2e
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 365
    .local v4, i1:I
    iget-object v5, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 366
    .local v0, b1:I
    iget-object v5, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 367
    .local v1, b2:I
    iget-object v5, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 368
    .local v2, b3:I
    iget-object v5, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 369
    .local v3, b4:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    or-int/2addr v5, v3

    if-gez v5, :cond_28

    .line 370
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 372
    :cond_28
    int-to-long v5, v4

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    int-to-long v7, v0

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    shl-int/lit8 v7, v1, 0x10

    int-to-long v7, v7

    add-long/2addr v5, v7

    shl-int/lit8 v7, v2, 0x8

    int-to-long v7, v7

    add-long/2addr v5, v7

    int-to-long v7, v3

    add-long/2addr v5, v7

    return-wide v5
.end method

.method public final readShort()S
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 390
    new-array v2, v7, [B

    .line 391
    .local v2, buf:[B
    const/4 v4, 0x0

    .line 392
    .local v4, nread:I
    :goto_4
    if-ge v4, v7, :cond_19

    .line 393
    iget-object v5, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v6, v7, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 394
    .local v3, nbytes:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_17

    .line 395
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 397
    :cond_17
    add-int/2addr v4, v3

    .line 398
    goto :goto_4

    .line 399
    .end local v3           #nbytes:I
    :cond_19
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    and-int/lit16 v0, v5, 0xff

    .line 400
    .local v0, b1:I
    const/4 v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v1, v5, 0xff

    .line 401
    .local v1, b2:I
    shl-int/lit8 v5, v0, 0x8

    add-int/2addr v5, v1

    int-to-short v5, v5

    return v5
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 463
    .local v0, utfSize:I
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 420
    .local v0, temp:I
    if-gez v0, :cond_e

    .line 421
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 423
    :cond_e
    return v0
.end method

.method public final readUnsignedShort()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 441
    .local v0, b1:I
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 442
    .local v1, b2:I
    or-int v2, v0, v1

    if-gez v2, :cond_16

    .line 443
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 445
    :cond_16
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2
.end method

.method public final skipBytes(I)I
    .registers 8
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v2, 0x0

    .line 575
    .local v2, skipped:I
    :goto_1
    if-ge v2, p1, :cond_16

    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v4, p1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .local v0, skip:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_16

    .line 576
    int-to-long v3, v2

    add-long/2addr v3, v0

    long-to-int v2, v3

    goto :goto_1

    .line 583
    .end local v0           #skip:J
    :cond_16
    return v2
.end method
