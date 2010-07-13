.class public final Lcom/ibm/icu4jni/charset/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final INPUT_HELD:I = 0x3

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_BYTES:I = 0x2

.field private static final LIMIT:I = 0x4

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[B

.field private allocatedOutput:[C

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[B

.field private onMalformedInput:I

.field private onUnmappableInput:I

.field private outEnd:I

.field private output:[C

.field private savedInputHeldLen:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;J)V
    .registers 10
    .parameter "cs"
    .parameter "cHandle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-static {p2, p3}, Lcom/ibm/icu4jni/charset/NativeConverter;->getAveCharsPerByte(J)F

    move-result v0

    invoke-static {p2, p3}, Lcom/ibm/icu4jni/charset/NativeConverter;->getMaxCharsPerByte(J)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    .line 50
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    .line 51
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    .line 54
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 55
    iput-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 67
    iput v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    .line 68
    iput v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    .line 84
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->replacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 85
    .local v4, sub:[C
    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    array-length v5, v4

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/charset/NativeConverter;->setCallbackDecode(JII[CI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    .line 89
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 90
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 93
    :cond_46
    iput-wide p2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    .line 95
    return-void
.end method

.method private final getArray(Ljava/nio/ByteBuffer;)I
    .registers 6
    .parameter "in"

    .prologue
    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 309
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->inEnd:I

    .line 311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    add-int/2addr v1, v2

    .line 328
    :goto_19
    return v1

    .line 313
    :cond_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->inEnd:I

    .line 315
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedInput:[B

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->inEnd:I

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedInput:[B

    array-length v2, v2

    if-le v1, v2, :cond_31

    .line 316
    :cond_2b
    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->inEnd:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 318
    :cond_31
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 322
    .local v0, pos:I
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->inEnd:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 324
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    goto :goto_19
.end method

.method private final getArray(Ljava/nio/CharBuffer;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    .line 290
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->outEnd:I

    .line 291
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 303
    :goto_16
    return v0

    .line 293
    :cond_17
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->outEnd:I

    .line 295
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedOutput:[C

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->outEnd:I

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedOutput:[C

    array-length v1, v1

    if-le v0, v1, :cond_2e

    .line 296
    :cond_28
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->outEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 298
    :cond_2e
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    .line 303
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private final setPosition(Ljava/nio/ByteBuffer;)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_27

    iget v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    if-lez v1, :cond_27

    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    add-int v0, v1, v2

    .line 349
    .local v0, len:I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    .line 358
    .end local v0           #len:I
    :goto_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    .line 360
    return-void

    .line 352
    :cond_27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    .line 354
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_23
.end method

.method private final setPosition(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 333
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 334
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    .line 342
    return-void

    .line 336
    :cond_17
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_13
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 237
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 269
    :goto_9
    return-object v0

    .line 240
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v1

    aput v1, v0, v3

    .line 241
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 242
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 246
    :try_start_20
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu4jni/charset/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    .line 258
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_42

    .line 259
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_77

    .line 268
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 260
    :cond_42
    :try_start_42
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_58

    .line 261
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_77

    move-result-object v0

    .line 268
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 262
    :cond_58
    :try_start_58
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6e

    .line 263
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_77

    move-result-object v0

    .line 268
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 266
    :cond_6e
    :try_start_6e
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_77

    .line 268
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 268
    :catchall_77
    move-exception v0

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-direct {p0, p2}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

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
    .line 278
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    .line 279
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    .line 281
    return-void
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7
    .parameter "out"

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 174
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->outEnd:I

    iget-object v4, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu4jni/charset/NativeConverter;->flushByteToChar(J[CI[I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    .line 183
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 184
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2e

    .line 185
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_59

    .line 197
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 198
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->implReset()V

    :goto_2d
    return-object v0

    .line 186
    :cond_2e
    :try_start_2e
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4b

    .line 187
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_50

    .line 188
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_59

    move-result-object v0

    .line 197
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 198
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->implReset()V

    goto :goto_2d

    .line 191
    :cond_4b
    :try_start_4b
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    .line 194
    :cond_50
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_59

    .line 197
    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 198
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->implReset()V

    goto :goto_2d

    .line 197
    :catchall_59
    move-exception v0

    invoke-direct {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 198
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->implReset()V

    throw v0
.end method

.method protected final implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 8
    .parameter "newAction"

    .prologue
    .line 125
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    .line 132
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->replacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 134
    .local v4, sub:[C
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    array-length v5, v4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/charset/NativeConverter;->setCallbackDecode(JII[CI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    .line 135
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 136
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 127
    .end local v4           #sub:[C
    :cond_2f
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 128
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    goto :goto_b

    .line 129
    :cond_3b
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    goto :goto_b

    .line 138
    .restart local v4       #sub:[C
    :cond_47
    return-void
.end method

.method protected final implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 8
    .parameter "newAction"

    .prologue
    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    .line 154
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->replacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 155
    .local v4, sub:[C
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onMalformedInput:I

    iget v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    array-length v5, v4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/charset/NativeConverter;->setCallbackDecode(JII[CI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    .line 156
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 157
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 149
    .end local v4           #sub:[C
    :cond_2f
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    goto :goto_b

    .line 151
    :cond_3b
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->onUnmappableInput:I

    goto :goto_b

    .line 159
    .restart local v4       #sub:[C
    :cond_47
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .registers 6
    .parameter "newReplacement"

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-wide v1, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v1, v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    if-le v0, v1, :cond_1a

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_1a
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu4jni/charset/NativeConverter;->setSubstitutionChars(J[CI)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    .line 112
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 113
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 116
    :cond_39
    return-void
.end method

.method protected implReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    iget-wide v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->resetByteToChar(J)V

    .line 208
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    aput v2, v0, v2

    .line 209
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 210
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 211
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 212
    iput v2, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->savedInputHeldLen:I

    .line 213
    iput-object v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->output:[C

    .line 214
    iput-object v3, p0, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;->input:[B

    .line 215
    return-void
.end method
