.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field private static final END:I = 0x2

.field private static final FLUSH:I = 0x3

.field private static final INIT:I = 0x0

.field private static final ONGOING:I = 0x1


# instance fields
.field private averBytes:F

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private malformAction:Ljava/nio/charset/CodingErrorAction;

.field private maxBytes:F

.field private replace:[B

.field private status:I

.field private unmapAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .registers 7
    .parameter "cs"
    .parameter "averageBytesPerChar"
    .parameter "maxBytesPerChar"

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 165
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .registers 7
    .parameter "cs"
    .parameter "averageBytesPerChar"
    .parameter "maxBytesPerChar"
    .parameter "replacement"

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    cmpg-float v0, p2, v1

    if-lez v0, :cond_c

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_18

    .line 193
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "niochar.02"

    invoke-static {v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_18
    cmpl-float v0, p2, p3

    if-lez v0, :cond_28

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "niochar.03"

    invoke-static {v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_28
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    .line 200
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averBytes:F

    .line 201
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytes:F

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 203
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 204
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 205
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    .line 206
    return-void
.end method

.method private allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "output"

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_c

    .line 401
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 406
    :goto_b
    return-object v1

    .line 403
    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 404
    .local v0, result:Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 405
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object v1, v0

    .line 406
    goto :goto_b
.end method

.method private checkCoderResult(Ljava/nio/charset/CoderResult;)V
    .registers 4
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_16

    .line 391
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 392
    :cond_16
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_2c

    .line 394
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 396
    :cond_2c
    return-void
.end method

.method private implCanEncode(Ljava/nio/CharBuffer;)Z
    .registers 8
    .parameter "cb"

    .prologue
    .line 249
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 250
    const/4 v4, 0x0

    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 252
    :cond_8
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz v4, :cond_18

    .line 254
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "niochar.0B"

    invoke-static {v5}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 256
    :cond_18
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 257
    .local v1, malformBak:Ljava/nio/charset/CodingErrorAction;
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 258
    .local v3, unmapBak:Ljava/nio/charset/CodingErrorAction;
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 259
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 260
    const/4 v2, 0x1

    .line 262
    .local v2, result:Z
    :try_start_27
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_27 .. :try_end_2a} :catch_34

    .line 266
    :goto_2a
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 267
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 268
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 269
    return v2

    .line 263
    :catch_34
    move-exception v0

    .line 264
    .local v0, e:Ljava/nio/charset/CharacterCodingException;
    const/4 v2, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averBytes:F

    return v0
.end method

.method public canEncode(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implCanEncode(Ljava/nio/CharBuffer;)Z

    move-result v0

    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "sequence"

    .prologue
    .line 292
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_f

    .line 293
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 297
    .local v0, cb:Ljava/nio/CharBuffer;
    :goto_a
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implCanEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1

    .line 295
    .end local v0           #cb:Ljava/nio/CharBuffer;
    .restart local p1
    :cond_f
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .restart local v0       #cb:Ljava/nio/CharBuffer;
    goto :goto_a
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_c

    .line 347
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 382
    :goto_b
    return-object v3

    .line 349
    :cond_c
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 350
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->averBytes:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 351
    .local v0, length:I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 352
    .local v1, output:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 354
    .local v2, result:Ljava/nio/charset/CoderResult;
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p1, v1, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 355
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 356
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 362
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 363
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 366
    :goto_32
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 367
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 368
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 369
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_32

    .line 358
    :cond_44
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 359
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1d

    .line 375
    :cond_4f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 376
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 377
    new-instance v3, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v3

    .line 378
    :cond_62
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 379
    new-instance v3, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v3

    .line 381
    :cond_72
    const/4 v3, 0x3

    iput v3, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    move-object v3, v1

    .line 382
    goto :goto_b
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 12
    .parameter "in"
    .parameter "out"
    .parameter "endOfInput"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 478
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    if-nez p3, :cond_24

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-ne v4, v6, :cond_24

    .line 479
    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 514
    .local v0, action:Ljava/nio/charset/CodingErrorAction;
    .local v3, result:Ljava/nio/charset/CoderResult;
    :cond_13
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 520
    :cond_18
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 485
    .end local v0           #action:Ljava/nio/charset/CodingErrorAction;
    .end local v3           #result:Ljava/nio/charset/CoderResult;
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_27
    .catch Ljava/nio/BufferOverflowException; {:try_start_24 .. :try_end_27} :catch_4c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_24 .. :try_end_27} :catch_53

    move-result-object v3

    .line 491
    .restart local v3       #result:Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 492
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 493
    .local v2, remaining:I
    if-eqz p3, :cond_5a

    move v4, v6

    :goto_35
    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 494
    if-eqz p3, :cond_5c

    if-lez v2, :cond_5c

    .line 495
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 500
    .end local v2           #remaining:I
    :cond_3f
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 501
    if-eqz p3, :cond_5e

    move v4, v6

    :goto_48
    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    move-object v4, v3

    .line 517
    :goto_4b
    return-object v4

    .line 486
    .end local v3           #result:Ljava/nio/charset/CoderResult;
    :catch_4c
    move-exception v1

    .line 487
    .local v1, e:Ljava/nio/BufferOverflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 488
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    :catch_53
    move-exception v1

    .line 489
    .local v1, e:Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    .end local v1           #e:Ljava/nio/BufferUnderflowException;
    .restart local v2       #remaining:I
    .restart local v3       #result:Ljava/nio/charset/CoderResult;
    :cond_5a
    move v4, v7

    .line 493
    goto :goto_35

    :cond_5c
    move-object v4, v3

    .line 497
    goto :goto_4b

    .end local v2           #remaining:I
    :cond_5e
    move v4, v7

    .line 501
    goto :goto_48

    .line 504
    :cond_60
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 505
    .restart local v0       #action:Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 506
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 510
    :cond_6a
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v4, :cond_7a

    .line 511
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    array-length v5, v5

    if-ge v4, v5, :cond_13

    .line 512
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_4b

    .line 516
    :cond_7a
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v4, :cond_18

    move-object v4, v3

    .line 517
    goto :goto_4b
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 5
    .parameter "out"

    .prologue
    .line 595
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz v1, :cond_f

    .line 596
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 598
    :cond_f
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 599
    .local v0, result:Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1a

    .line 600
    const/4 v1, 0x3

    iput v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 602
    :cond_1a
    return-object v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .parameter "out"

    .prologue
    .line 617
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 631
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 644
    return-void
.end method

.method protected implReplaceWith([B)V
    .registers 2
    .parameter "newReplacement"

    .prologue
    .line 656
    return-void
.end method

.method protected implReset()V
    .registers 1

    .prologue
    .line 666
    return-void
.end method

.method public isLegalReplacement([B)Z
    .registers 10
    .parameter "repl"

    .prologue
    const/4 v7, 0x1

    .line 684
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v5, :cond_d

    .line 685
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    iput-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 688
    :cond_d
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    .line 689
    .local v1, malform:Ljava/nio/charset/CodingErrorAction;
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v4

    .line 690
    .local v4, unmap:Ljava/nio/charset/CodingErrorAction;
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 691
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 692
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 693
    .local v0, in:Ljava/nio/ByteBuffer;
    array-length v5, p1

    int-to-float v5, v5

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v6}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 695
    .local v2, out:Ljava/nio/CharBuffer;
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5, v0, v2, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 696
    .local v3, result:Ljava/nio/charset/CoderResult;
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 697
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 698
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-nez v5, :cond_51

    move v5, v7

    :goto_50
    return v5

    :cond_51
    const/4 v5, 0x0

    goto :goto_50
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .registers 2

    .prologue
    .line 722
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytes:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .parameter "newAction"

    .prologue
    .line 740
    if-nez p1, :cond_e

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "niochar.0C"

    invoke-static {v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_e
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 745
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 746
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .parameter "newAction"

    .prologue
    .line 765
    if-nez p1, :cond_e

    .line 767
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "niochar.0D"

    invoke-static {v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_e
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 770
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 771
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .parameter "replacement"

    .prologue
    .line 804
    if-eqz p1, :cond_13

    array-length v0, p1

    if-eqz v0, :cond_13

    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytes:F

    array-length v1, p1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_13

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 808
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "niochar.0E"

    invoke-static {v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_1f
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    .line 811
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    .line 812
    return-object p0
.end method

.method public final replacement()[B
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .prologue
    .line 824
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 825
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    .line 826
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
