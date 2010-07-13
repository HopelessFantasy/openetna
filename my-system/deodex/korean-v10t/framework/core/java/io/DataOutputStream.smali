.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# static fields
.field static final MAX_BUF_SIZE:I = 0x2000


# instance fields
.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    return-void
.end method


# virtual methods
.method countUTFBytes(Ljava/lang/String;)J
    .registers 8
    .parameter "str"

    .prologue
    .line 377
    const/4 v3, 0x0

    .local v3, utfCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 378
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_21

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 380
    .local v0, charValue:I
    if-lez v0, :cond_17

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_17

    .line 381
    add-int/lit8 v3, v3, 0x1

    .line 378
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 382
    :cond_17
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1e

    .line 383
    add-int/lit8 v3, v3, 0x2

    goto :goto_14

    .line 385
    :cond_1e
    add-int/lit8 v3, v3, 0x3

    goto :goto_14

    .line 388
    .end local v0           #charValue:I
    :cond_21
    int-to-long v4, v3

    return-wide v4
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 66
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    if-gez v0, :cond_9

    .line 76
    const v0, 0x7fffffff

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 78
    :cond_9
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    return v0
.end method

.method public write(I)V
    .registers 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 125
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 126
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
    .line 104
    if-nez p1, :cond_e

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_e
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 109
    return-void
.end method

.method public final writeBoolean(Z)V
    .registers 4
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 140
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 141
    return-void

    .line 139
    :cond_f
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public final writeByte(I)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 157
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 158
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 181
    :goto_6
    return-void

    .line 175
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 176
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 179
    :cond_1e
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 180
    iget v2, p0, Ljava/io/DataOutputStream;->written:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Ljava/io/DataOutputStream;->written:I

    goto :goto_6
.end method

.method public final writeChar(I)V
    .registers 4
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 199
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 215
    .local v1, newBytes:[B
    const/4 v0, 0x0

    .local v0, index:I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 216
    if-nez v0, :cond_27

    move v2, v0

    .line 217
    .local v2, newIndex:I
    :goto_12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 218
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 216
    .end local v2           #newIndex:I
    :cond_27
    mul-int/lit8 v3, v0, 0x2

    move v2, v3

    goto :goto_12

    .line 220
    :cond_2b
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 221
    iget v3, p0, Ljava/io/DataOutputStream;->written:I

    array-length v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/DataOutputStream;->written:I

    .line 222
    return-void
.end method

.method public final writeDouble(D)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 237
    return-void
.end method

.method public final writeFloat(F)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 252
    return-void
.end method

.method public final writeInt(I)V
    .registers 4
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 267
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 268
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 269
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 270
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 271
    return-void
.end method

.method public final writeLong(J)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 286
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 287
    return-void
.end method

.method public final writeShort(I)V
    .registers 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 304
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 327
    .local v2, length:I
    const/16 v9, 0xaaa

    if-gt v2, v9, :cond_66

    .line 328
    mul-int/lit8 v3, v2, 0x3

    .line 329
    .local v3, size:I
    new-array v4, v3, [B

    .line 345
    .local v4, utfBytes:[B
    const/4 v7, 0x0

    .line 346
    .local v7, utfIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    move v8, v7

    .end local v7           #utfIndex:I
    .local v8, utfIndex:I
    :goto_f
    if-ge v1, v2, :cond_5e

    .line 347
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    .local v0, charValue:I
    if-lez v0, :cond_24

    const/16 v9, 0x7f

    if-gt v0, v9, :cond_24

    .line 349
    add-int/lit8 v7, v8, 0x1

    .end local v8           #utfIndex:I
    .restart local v7       #utfIndex:I
    int-to-byte v9, v0

    aput-byte v9, v4, v8

    .line 346
    :goto_20
    add-int/lit8 v1, v1, 0x1

    move v8, v7

    .end local v7           #utfIndex:I
    .restart local v8       #utfIndex:I
    goto :goto_f

    .line 350
    :cond_24
    const/16 v9, 0x7ff

    if-gt v0, v9, :cond_3e

    .line 351
    add-int/lit8 v7, v8, 0x1

    .end local v8           #utfIndex:I
    .restart local v7       #utfIndex:I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 352
    add-int/lit8 v8, v7, 0x1

    .end local v7           #utfIndex:I
    .restart local v8       #utfIndex:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    move v7, v8

    .end local v8           #utfIndex:I
    .restart local v7       #utfIndex:I
    goto :goto_20

    .line 354
    .end local v7           #utfIndex:I
    .restart local v8       #utfIndex:I
    :cond_3e
    add-int/lit8 v7, v8, 0x1

    .end local v8           #utfIndex:I
    .restart local v7       #utfIndex:I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 355
    add-int/lit8 v8, v7, 0x1

    .end local v7           #utfIndex:I
    .restart local v8       #utfIndex:I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 356
    add-int/lit8 v7, v8, 0x1

    .end local v8           #utfIndex:I
    .restart local v7       #utfIndex:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    goto :goto_20

    .line 359
    .end local v0           #charValue:I
    .end local v7           #utfIndex:I
    .restart local v8       #utfIndex:I
    :cond_5e
    invoke-virtual {p0, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 360
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 374
    .end local v1           #i:I
    .end local v3           #size:I
    .end local v4           #utfBytes:[B
    .end local v8           #utfIndex:I
    :goto_65
    return-void

    .line 366
    :cond_66
    const v9, 0xffff

    if-gt v2, v9, :cond_7e

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->countUTFBytes(Ljava/lang/String;)J

    move-result-wide v5

    .local v5, utfCount:J
    const-wide/32 v9, 0xffff

    cmp-long v9, v5, v9

    if-gtz v9, :cond_7e

    .line 367
    long-to-int v9, v5

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 368
    invoke-virtual {p0, p1, v5, v6}, Ljava/io/DataOutputStream;->writeUTFBytes(Ljava/lang/String;J)V

    goto :goto_65

    .line 370
    .end local v5           #utfCount:J
    :cond_7e
    new-instance v9, Ljava/io/UTFDataFormatException;

    const-string v10, "K0068"

    invoke-static {v10}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method writeUTFBytes(Ljava/lang/String;J)V
    .registers 16
    .parameter "str"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v5, 0x1

    .line 393
    .local v5, single:Z
    long-to-int v6, p2

    .line 395
    .local v6, size:I
    const-wide/16 v10, 0x2000

    cmp-long v10, p2, v10

    if-lez v10, :cond_b

    .line 396
    const/4 v5, 0x0

    .line 397
    const/16 v6, 0x2000

    .line 399
    :cond_b
    new-array v7, v6, [B

    .line 422
    .local v7, utfBytes:[B
    const/4 v8, 0x0

    .local v8, utfIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 423
    .local v4, length:I
    move v1, v4

    .line 424
    .local v1, end:I
    :goto_14
    if-ge v2, v4, :cond_85

    .line 425
    if-nez v5, :cond_21

    .line 426
    array-length v10, v7

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x3

    add-int v1, v2, v10

    .line 427
    if-le v1, v4, :cond_21

    .line 428
    move v1, v4

    .line 431
    :cond_21
    move v3, v2

    .local v3, j:I
    move v9, v8

    .end local v8           #utfIndex:I
    .local v9, utfIndex:I
    :goto_23
    if-ge v3, v1, :cond_72

    .line 432
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 433
    .local v0, charValue:I
    if-lez v0, :cond_38

    const/16 v10, 0x7f

    if-gt v0, v10, :cond_38

    .line 434
    add-int/lit8 v8, v9, 0x1

    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    int-to-byte v10, v0

    aput-byte v10, v7, v9

    .line 431
    :goto_34
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8           #utfIndex:I
    .restart local v9       #utfIndex:I
    goto :goto_23

    .line 435
    :cond_38
    const/16 v10, 0x7ff

    if-gt v0, v10, :cond_52

    .line 436
    add-int/lit8 v8, v9, 0x1

    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    shr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x1f

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 437
    add-int/lit8 v9, v8, 0x1

    .end local v8           #utfIndex:I
    .restart local v9       #utfIndex:I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    move v8, v9

    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    goto :goto_34

    .line 439
    .end local v8           #utfIndex:I
    .restart local v9       #utfIndex:I
    :cond_52
    add-int/lit8 v8, v9, 0x1

    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    shr-int/lit8 v10, v0, 0xc

    and-int/lit8 v10, v10, 0xf

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 440
    add-int/lit8 v9, v8, 0x1

    .end local v8           #utfIndex:I
    .restart local v9       #utfIndex:I
    shr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 441
    add-int/lit8 v8, v9, 0x1

    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    goto :goto_34

    .line 444
    .end local v0           #charValue:I
    .end local v8           #utfIndex:I
    .restart local v9       #utfIndex:I
    :cond_72
    if-nez v5, :cond_7a

    array-length v10, v7

    const/16 v11, 0x12c

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_8c

    .line 445
    :cond_7a
    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 446
    if-eqz v5, :cond_82

    move v8, v9

    .line 463
    .end local v3           #j:I
    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    :cond_81
    :goto_81
    return-void

    .line 449
    .end local v8           #utfIndex:I
    .restart local v3       #j:I
    .restart local v9       #utfIndex:I
    :cond_82
    const/4 v8, 0x0

    .line 451
    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    :goto_83
    move v2, v1

    goto :goto_14

    .line 453
    .end local v3           #j:I
    :cond_85
    if-lez v8, :cond_81

    .line 454
    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10, v8}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_81

    .end local v8           #utfIndex:I
    .restart local v3       #j:I
    .restart local v9       #utfIndex:I
    :cond_8c
    move v8, v9

    .end local v9           #utfIndex:I
    .restart local v8       #utfIndex:I
    goto :goto_83
.end method
