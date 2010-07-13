.class public final Lcom/ibm/icu4jni/charset/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final INPUT_HELD:I = 0x3

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_CHARS:I = 0x2

.field private static final LIMIT:I = 0x4

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[C

.field private allocatedOutput:[B

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[C

.field private onMalformedInput:I

.field private onUnmappableInput:I

.field private outEnd:I

.field private output:[B

.field private savedInputHeldLen:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;J[B)V
    .registers 11
    .parameter "cs"
    .parameter "cHandle"
    .parameter "replacement"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-static {p2, p3}, Lcom/ibm/icu4jni/charset/NativeConverter;->getAveBytesPerChar(J)F

    move-result v0

    invoke-static {p2, p3}, Lcom/ibm/icu4jni/charset/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1, p4}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    .line 46
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->input:[C

    .line 47
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    .line 50
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 51
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 64
    iput v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    .line 65
    iput v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    .line 80
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->replacement()[B

    move-result-object v4

    .line 84
    .local v4, sub:[B
    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    array-length v5, v4

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/charset/NativeConverter;->setCallbackEncode(JII[BI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    .line 88
    iput-wide p2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    .line 89
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 90
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 92
    :cond_44
    return-void
.end method

.method private final getArray(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 331
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    .line 332
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->outEnd:I

    .line 333
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 345
    :goto_16
    return v0

    .line 335
    :cond_17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->outEnd:I

    .line 337
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedOutput:[B

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->outEnd:I

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedOutput:[B

    array-length v1, v1

    if-le v0, v1, :cond_2e

    .line 338
    :cond_28
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->outEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 340
    :cond_2e
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    .line 345
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private final getArray(Ljava/nio/CharBuffer;)I
    .registers 6
    .parameter "in"

    .prologue
    .line 350
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 351
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->input:[C

    .line 352
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->inEnd:I

    .line 353
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    add-int/2addr v1, v2

    .line 370
    :goto_19
    return v1

    .line 355
    :cond_1a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->inEnd:I

    .line 357
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedInput:[C

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->inEnd:I

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedInput:[C

    array-length v2, v2

    if-le v1, v2, :cond_31

    .line 358
    :cond_2b
    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->inEnd:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 360
    :cond_31
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->input:[C

    .line 363
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 364
    .local v0, pos:I
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->input:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->inEnd:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 366
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    goto :goto_19
.end method

.method private final setPosition(Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 381
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 387
    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    .line 389
    return-void

    .line 383
    :cond_17
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_13
.end method

.method private final setPosition(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    add-int v0, v1, v2

    .line 413
    .local v0, len:I
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 414
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 415
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    .line 418
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_29

    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    if-gtz v1, :cond_33

    .line 419
    :cond_29
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 425
    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->input:[C

    .line 427
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->canEncode(I)Z

    move-result v0

    return v0
.end method

.method public canEncode(I)Z
    .registers 4
    .parameter "codepoint"

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/charset/NativeConverter;->canEncode(JI)Z

    move-result v0

    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 220
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 255
    :goto_a
    return-object v0

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    aput v1, v0, v3

    .line 224
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 227
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    aput v3, v0, v4

    .line 232
    :try_start_25
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu4jni/charset/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    .line 240
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 242
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4f

    .line 243
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_84

    .line 254
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 255
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 244
    :cond_4f
    :try_start_4f
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_65

    .line 245
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_84

    move-result-object v0

    .line 254
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 255
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 246
    :cond_65
    :try_start_65
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7b

    .line 248
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_84

    move-result-object v0

    .line 254
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 255
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 251
    :cond_7b
    :try_start_7b
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_84

    .line 254
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 255
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 254
    :catchall_84
    move-exception v0

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 255
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    .line 322
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    .line 324
    return-void
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7
    .parameter "out"

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 169
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->output:[B

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->outEnd:I

    iget-object v4, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu4jni/charset/NativeConverter;->flushCharToByte(J[BI[I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    .line 176
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 177
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2e

    .line 178
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_59

    .line 189
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->implReset()V

    :goto_2d
    return-object v0

    .line 179
    :cond_2e
    :try_start_2e
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4b

    .line 180
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_50

    .line 181
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_59

    move-result-object v0

    .line 189
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->implReset()V

    goto :goto_2d

    .line 184
    :cond_4b
    :try_start_4b
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    .line 187
    :cond_50
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_59

    .line 189
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->implReset()V

    goto :goto_2d

    .line 189
    :catchall_59
    move-exception v0

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->implReset()V

    throw v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 8
    .parameter "newAction"

    .prologue
    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    .line 124
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    .line 129
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->replacement()[B

    move-result-object v4

    .line 130
    .local v4, sub:[B
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    array-length v5, v4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/charset/NativeConverter;->setCallbackEncode(JII[BI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    .line 131
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 132
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 126
    .end local v4           #sub:[B
    :cond_2e
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    goto :goto_e

    .line 135
    .restart local v4       #sub:[B
    :cond_3a
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 8
    .parameter "newAction"

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    .line 146
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    .line 151
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->replacement()[B

    move-result-object v4

    .line 152
    .local v4, sub:[B
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onMalformedInput:I

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    array-length v5, v4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/charset/NativeConverter;->setCallbackEncode(JII[BI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    .line 153
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 154
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 148
    .end local v4           #sub:[B
    :cond_2e
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->onUnmappableInput:I

    goto :goto_e

    .line 156
    .restart local v4       #sub:[B
    :cond_3a
    return-void
.end method

.method protected implReplaceWith([B)V
    .registers 6
    .parameter "newReplacement"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    .line 102
    array-length v0, p1

    iget-wide v1, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v1, v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    if-le v0, v1, :cond_19

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of replacement Bytes are greater than max bytes per char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_19
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->setSubstitutionBytes(J[BI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    .line 109
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 110
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 113
    :cond_31
    return-void
.end method

.method protected implReset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->resetCharToByte(J)V

    .line 200
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    aput v2, v0, v2

    .line 201
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 202
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 203
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 204
    iput v2, p0, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;->savedInputHeldLen:I

    .line 205
    return-void
.end method
