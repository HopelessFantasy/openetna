.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x30

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 56
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    .line 99
    const/16 v2, 0xff

    new-array v2, v2, [B

    sput-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .line 100
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    const/16 v2, 0xff

    if-ge v0, v2, :cond_2b

    .line 105
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 107
    :cond_2b
    const/16 v0, 0x5a

    :goto_2d
    const/16 v2, 0x41

    if-lt v0, v2, :cond_3d

    .line 108
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v3, 0x41

    sub-int v3, v0, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 110
    :cond_3d
    const/16 v0, 0x7a

    :goto_3f
    const/16 v2, 0x61

    if-lt v0, v2, :cond_51

    .line 111
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v3, 0x61

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    .line 113
    :cond_51
    const/16 v0, 0x39

    :goto_53
    if-lt v0, v6, :cond_61

    .line 114
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    sub-int v3, v0, v6

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 117
    :cond_61
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v4

    .line 118
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aput-byte v8, v2, v5

    .line 119
    const/4 v0, 0x0

    :goto_6a
    const/16 v2, 0x19

    if-gt v0, v2, :cond_78

    .line 120
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 123
    :cond_78
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, j:I
    :goto_7b
    const/16 v2, 0x33

    if-gt v0, v2, :cond_8b

    .line 124
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 127
    :cond_8b
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_8e
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_9e

    .line 128
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 131
    :cond_9e
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v7

    .line 132
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v8

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .registers 15
    .parameter "base64Data"

    .prologue
    .line 372
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 375
    array-length v0, p0

    if-nez v0, :cond_b

    .line 376
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 429
    .end local p0
    :goto_a
    return-object p0

    .line 379
    .restart local p0
    :cond_b
    array-length v0, p0

    div-int/lit8 v10, v0, 0x4

    .line 380
    .local v10, numberQuadruple:I
    const/4 v0, 0x0

    .line 381
    .local v0, decodedData:[B
    const/4 v0, 0x0

    .local v0, b1:B
    const/4 v1, 0x0

    .local v1, b2:B
    const/4 v2, 0x0

    .local v2, b3:B
    const/4 v3, 0x0

    .local v3, b4:B
    const/4 v8, 0x0

    .local v8, marker0:B
    const/4 v9, 0x0

    .line 385
    .local v9, marker1:B
    const/4 v6, 0x0

    .line 386
    .local v6, encodedIndex:I
    const/4 v4, 0x0

    .line 389
    .local v4, dataIndex:I
    array-length v5, p0

    .line 391
    .local v5, lastData:I
    :cond_18
    const/4 v7, 0x1

    sub-int v7, v5, v7

    aget-byte v7, p0, v7

    const/16 v11, 0x3d

    if-ne v7, v11, :cond_29

    .line 392
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_18

    .line 393
    const/4 p0, 0x0

    new-array p0, p0, [B

    .end local p0
    goto :goto_a

    .line 396
    .restart local p0
    :cond_29
    sub-int/2addr v5, v10

    new-array v5, v5, [B

    .line 399
    .local v5, decodedData:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2d
    if-ge v7, v10, :cond_a6

    .line 400
    mul-int/lit8 v4, v7, 0x4

    .line 401
    add-int/lit8 v0, v4, 0x2

    aget-byte v8, p0, v0

    .line 402
    .end local v0           #b1:B
    add-int/lit8 v0, v4, 0x3

    aget-byte v9, p0, v0

    .line 404
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v1, p0, v4

    .end local v1           #b2:B
    aget-byte v0, v0, v1

    .line 405
    .restart local v0       #b1:B
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v11, p0, v11

    aget-byte v1, v1, v11

    .line 407
    .restart local v1       #b2:B
    const/16 v11, 0x3d

    if-eq v8, v11, :cond_7a

    const/16 v11, 0x3d

    if-eq v9, v11, :cond_7a

    .line 409
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .end local v2           #b3:B
    aget-byte v2, v2, v8

    .line 410
    .restart local v2       #b3:B
    sget-object v3, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .end local v3           #b4:B
    aget-byte v3, v3, v9

    .line 412
    .restart local v3       #b4:B
    shl-int/lit8 v11, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 413
    add-int/lit8 v11, v6, 0x1

    and-int/lit8 v12, v1, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v2, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    .line 415
    add-int/lit8 v11, v6, 0x2

    shl-int/lit8 v12, v2, 0x6

    or-int/2addr v12, v3

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    .line 427
    :cond_75
    :goto_75
    add-int/lit8 v6, v6, 0x3

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 416
    :cond_7a
    const/16 v11, 0x3d

    if-ne v8, v11, :cond_87

    .line 418
    shl-int/lit8 v11, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    goto :goto_75

    .line 419
    :cond_87
    const/16 v11, 0x3d

    if-ne v9, v11, :cond_75

    .line 421
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .end local v2           #b3:B
    aget-byte v2, v2, v8

    .line 423
    .restart local v2       #b3:B
    shl-int/lit8 v11, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 424
    add-int/lit8 v11, v6, 0x1

    and-int/lit8 v12, v1, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v2, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    goto :goto_75

    :cond_a6
    move-object p0, v5

    .line 429
    goto/16 :goto_a
.end method

.method static discardNonBase64([B)[B
    .registers 8
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 490
    array-length v5, p0

    new-array v2, v5, [B

    .line 491
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 493
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    array-length v5, p0

    if-ge v3, v5, :cond_1b

    .line 494
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 495
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 493
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 499
    :cond_1b
    new-array v4, v0, [B

    .line 501
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    return-object v4
.end method

.method static discardWhitespace([B)[B
    .registers 8
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 441
    array-length v5, p0

    new-array v2, v5, [B

    .line 442
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 444
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    array-length v5, p0

    if-ge v3, v5, :cond_18

    .line 445
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_1e

    .line 452
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 444
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :sswitch_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 456
    :cond_18
    new-array v4, v0, [B

    .line 458
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    return-object v4

    .line 445
    :sswitch_data_1e
    .sparse-switch
        0x9 -> :sswitch_15
        0xa -> :sswitch_15
        0xd -> :sswitch_15
        0x20 -> :sswitch_15
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .registers 2
    .parameter "binaryData"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .registers 28
    .parameter "binaryData"
    .parameter "isChunked"

    .prologue
    .line 230
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    mul-int/lit8 v5, v5, 0x8

    .line 231
    .local v5, lengthDataBits:I
    rem-int/lit8 v13, v5, 0x18

    .line 232
    .local v13, fewerThan24bits:I
    div-int/lit8 v19, v5, 0x18

    .line 233
    .local v19, numberTriplets:I
    const/4 v5, 0x0

    .line 234
    .local v5, encodedData:[B
    const/4 v5, 0x0

    .line 235
    .local v5, encodedDataLength:I
    const/4 v6, 0x0

    .line 237
    .local v6, nbrChunks:I
    if-eqz v13, :cond_d2

    .line 239
    add-int/lit8 v5, v19, 0x1

    mul-int/lit8 v5, v5, 0x4

    .line 248
    :goto_13
    if-eqz p1, :cond_1c1

    .line 250
    sget-object v6, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    .end local v6           #nbrChunks:I
    array-length v6, v6

    if-nez v6, :cond_d6

    const/4 v6, 0x0

    .line 252
    .restart local v6       #nbrChunks:I
    :goto_1b
    sget-object v7, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    array-length v7, v7

    mul-int/2addr v7, v6

    add-int/2addr v5, v7

    move/from16 v17, v6

    .end local v6           #nbrChunks:I
    .local v17, nbrChunks:I
    move v11, v5

    .line 255
    .end local v5           #encodedDataLength:I
    .local v11, encodedDataLength:I
    :goto_23
    new-array v10, v11, [B

    .line 257
    .local v10, encodedData:[B
    const/4 v15, 0x0

    .local v15, k:B
    const/16 v16, 0x0

    .local v16, l:B
    const/4 v5, 0x0

    .local v5, b1:B
    const/4 v6, 0x0

    .local v6, b2:B
    const/4 v7, 0x0

    .line 259
    .local v7, b3:B
    const/4 v12, 0x0

    .line 260
    .local v12, encodedIndex:I
    const/4 v9, 0x0

    .line 261
    .local v9, dataIndex:I
    const/4 v8, 0x0

    .line 262
    .local v8, i:I
    const/16 v18, 0x4c

    .line 263
    .local v18, nextSeparatorIndex:I
    const/4 v8, 0x0

    .line 266
    .local v8, chunksSoFar:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_32
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_10f

    .line 267
    mul-int/lit8 v9, v14, 0x3

    .line 268
    aget-byte v5, p0, v9

    .line 269
    add-int/lit8 v6, v9, 0x1

    aget-byte v6, p0, v6

    .line 270
    add-int/lit8 v7, v9, 0x2

    aget-byte v7, p0, v7

    .line 274
    and-int/lit8 v15, v6, 0xf

    move v0, v15

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 275
    and-int/lit8 v15, v5, 0x3

    int-to-byte v15, v15

    .line 277
    and-int/lit8 v20, v5, -0x80

    if-nez v20, :cond_e2

    shr-int/lit8 v20, v5, 0x2

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 279
    .local v20, val1:B
    :goto_57
    and-int/lit8 v21, v6, -0x80

    if-nez v21, :cond_f1

    shr-int/lit8 v21, v6, 0x4

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 281
    .local v21, val2:B
    :goto_62
    and-int/lit8 v22, v7, -0x80

    if-nez v22, :cond_100

    shr-int/lit8 v22, v7, 0x6

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 284
    .local v22, val3:B
    :goto_6d
    sget-object v23, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aget-byte v20, v23, v20

    .end local v20           #val1:B
    aput-byte v20, v10, v12

    .line 288
    add-int/lit8 v20, v12, 0x1

    sget-object v23, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v24, v15, 0x4

    or-int v21, v21, v24

    aget-byte v21, v23, v21

    .end local v21           #val2:B
    aput-byte v21, v10, v20

    .line 290
    add-int/lit8 v20, v12, 0x2

    sget-object v21, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v23, v16, 0x2

    or-int v22, v22, v23

    aget-byte v21, v21, v22

    .end local v22           #val3:B
    aput-byte v21, v10, v20

    .line 292
    add-int/lit8 v20, v12, 0x3

    sget-object v21, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v22, v7, 0x3f

    aget-byte v21, v21, v22

    aput-byte v21, v10, v20

    .line 294
    add-int/lit8 v12, v12, 0x4

    .line 297
    if-eqz p1, :cond_ce

    .line 299
    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_ce

    .line 300
    sget-object v18, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    .end local v18           #nextSeparatorIndex:I
    const/16 v20, 0x0

    sget-object v21, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object v2, v10

    move v3, v12

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/lit8 v8, v8, 0x1

    .line 307
    add-int/lit8 v18, v8, 0x1

    mul-int/lit8 v18, v18, 0x4c

    sget-object v20, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    mul-int v20, v20, v8

    add-int v18, v18, v20

    .line 310
    .restart local v18       #nextSeparatorIndex:I
    sget-object v20, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v12, v12, v20

    .line 266
    :cond_ce
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_32

    .line 242
    .end local v7           #b3:B
    .end local v8           #chunksSoFar:I
    .end local v9           #dataIndex:I
    .end local v10           #encodedData:[B
    .end local v11           #encodedDataLength:I
    .end local v12           #encodedIndex:I
    .end local v14           #i:I
    .end local v15           #k:B
    .end local v16           #l:B
    .end local v17           #nbrChunks:I
    .end local v18           #nextSeparatorIndex:I
    .local v5, encodedDataLength:I
    .local v6, nbrChunks:I
    :cond_d2
    mul-int/lit8 v5, v19, 0x4

    goto/16 :goto_13

    .line 250
    .end local v6           #nbrChunks:I
    :cond_d6
    int-to-float v6, v5

    const/high16 v7, 0x4298

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    goto/16 :goto_1b

    .line 277
    .local v5, b1:B
    .local v6, b2:B
    .restart local v7       #b3:B
    .restart local v8       #chunksSoFar:I
    .restart local v9       #dataIndex:I
    .restart local v10       #encodedData:[B
    .restart local v11       #encodedDataLength:I
    .restart local v12       #encodedIndex:I
    .restart local v14       #i:I
    .restart local v15       #k:B
    .restart local v16       #l:B
    .restart local v17       #nbrChunks:I
    .restart local v18       #nextSeparatorIndex:I
    :cond_e2
    shr-int/lit8 v20, v5, 0x2

    move/from16 v0, v20

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    goto/16 :goto_57

    .line 279
    .restart local v20       #val1:B
    :cond_f1
    shr-int/lit8 v21, v6, 0x4

    move/from16 v0, v21

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    goto/16 :goto_62

    .line 281
    .restart local v21       #val2:B
    :cond_100
    shr-int/lit8 v22, v7, 0x6

    move/from16 v0, v22

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    goto/16 :goto_6d

    .line 316
    .end local v20           #val1:B
    .end local v21           #val2:B
    :cond_10f
    mul-int/lit8 v7, v14, 0x3

    .line 318
    .end local v9           #dataIndex:I
    .local v7, dataIndex:I
    const/16 v9, 0x8

    if-ne v13, v9, :cond_168

    .line 319
    aget-byte p0, p0, v7

    .line 320
    .end local v5           #b1:B
    .local p0, b1:B
    and-int/lit8 v5, p0, 0x3

    int-to-byte v5, v5

    .line 323
    .end local v15           #k:B
    .local v5, k:B
    and-int/lit8 v7, p0, -0x80

    if-nez v7, :cond_162

    .end local v7           #dataIndex:I
    shr-int/lit8 v7, p0, 0x2

    int-to-byte v7, v7

    .line 325
    .local v7, val1:B
    :goto_121
    sget-object v9, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aget-byte v7, v9, v7

    .end local v7           #val1:B
    aput-byte v7, v10, v12

    .line 326
    add-int/lit8 v7, v12, 0x1

    sget-object v9, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v13, v5, 0x4

    aget-byte v9, v9, v13

    .end local v13           #fewerThan24bits:I
    aput-byte v9, v10, v7

    .line 327
    add-int/lit8 v7, v12, 0x2

    const/16 v9, 0x3d

    aput-byte v9, v10, v7

    .line 328
    add-int/lit8 v7, v12, 0x3

    const/16 v9, 0x3d

    aput-byte v9, v10, v7

    move/from16 v7, v16

    .end local v16           #l:B
    .local v7, l:B
    move/from16 v25, v6

    .end local v6           #b2:B
    .local v25, b2:B
    move v6, v5

    .end local v5           #k:B
    .local v6, k:B
    move/from16 v5, v25

    .line 348
    .end local v12           #encodedIndex:I
    .end local v14           #i:I
    .end local v25           #b2:B
    .local v5, b2:B
    :goto_144
    if-eqz p1, :cond_161

    .line 350
    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_161

    .line 351
    sget-object p0, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    .end local p0           #b1:B
    const/16 p1, 0x0

    sget-object v5, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    .end local v5           #b2:B
    .end local p1
    array-length v5, v5

    sub-int v5, v11, v5

    sget-object v6, Lcom/google/android/mms/pdu/Base64;->CHUNK_SEPARATOR:[B

    .end local v6           #k:B
    array-length v6, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    :cond_161
    return-object v10

    .line 323
    .end local v7           #l:B
    .local v5, k:B
    .local v6, b2:B
    .restart local v12       #encodedIndex:I
    .restart local v13       #fewerThan24bits:I
    .restart local v14       #i:I
    .restart local v16       #l:B
    .restart local p0       #b1:B
    .restart local p1
    :cond_162
    shr-int/lit8 v7, p0, 0x2

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    goto :goto_121

    .line 329
    .local v5, b1:B
    .local v7, dataIndex:I
    .restart local v15       #k:B
    .local p0, binaryData:[B
    :cond_168
    const/16 v9, 0x10

    if-ne v13, v9, :cond_1ba

    .line 331
    aget-byte v5, p0, v7

    .line 332
    add-int/lit8 v6, v7, 0x1

    aget-byte p0, p0, v6

    .line 333
    .end local v6           #b2:B
    .local p0, b2:B
    and-int/lit8 v6, p0, 0xf

    int-to-byte v7, v6

    .line 334
    .end local v16           #l:B
    .local v7, l:B
    and-int/lit8 v6, v5, 0x3

    int-to-byte v6, v6

    .line 336
    .end local v15           #k:B
    .local v6, k:B
    and-int/lit8 v9, v5, -0x80

    if-nez v9, :cond_1ae

    shr-int/lit8 v9, v5, 0x2

    int-to-byte v9, v9

    .line 338
    .local v9, val1:B
    :goto_17f
    and-int/lit8 v13, p0, -0x80

    if-nez v13, :cond_1b4

    .end local v13           #fewerThan24bits:I
    shr-int/lit8 v13, p0, 0x4

    int-to-byte v13, v13

    .line 341
    .local v13, val2:B
    :goto_186
    sget-object v14, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    .end local v14           #i:I
    aget-byte v9, v14, v9

    .end local v9           #val1:B
    aput-byte v9, v10, v12

    .line 342
    add-int/lit8 v9, v12, 0x1

    sget-object v14, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v15, v6, 0x4

    or-int/2addr v13, v15

    aget-byte v13, v14, v13

    .end local v13           #val2:B
    aput-byte v13, v10, v9

    .line 344
    add-int/lit8 v9, v12, 0x2

    sget-object v13, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v14, v7, 0x2

    aget-byte v13, v13, v14

    aput-byte v13, v10, v9

    .line 345
    add-int/lit8 v9, v12, 0x3

    const/16 v12, 0x3d

    aput-byte v12, v10, v9

    .end local v12           #encodedIndex:I
    move/from16 v25, p0

    .end local p0           #b2:B
    .restart local v25       #b2:B
    move/from16 p0, v5

    .end local v5           #b1:B
    .local p0, b1:B
    move/from16 v5, v25

    .end local v25           #b2:B
    .local v5, b2:B
    goto :goto_144

    .line 336
    .local v5, b1:B
    .restart local v12       #encodedIndex:I
    .local v13, fewerThan24bits:I
    .restart local v14       #i:I
    .local p0, b2:B
    :cond_1ae
    shr-int/lit8 v9, v5, 0x2

    xor-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    goto :goto_17f

    .line 338
    .end local v13           #fewerThan24bits:I
    .restart local v9       #val1:B
    :cond_1b4
    shr-int/lit8 v13, p0, 0x4

    xor-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    goto :goto_186

    .end local v9           #val1:B
    .local v6, b2:B
    .local v7, dataIndex:I
    .restart local v13       #fewerThan24bits:I
    .restart local v15       #k:B
    .restart local v16       #l:B
    .local p0, binaryData:[B
    :cond_1ba
    move/from16 p0, v5

    .end local v5           #b1:B
    .local p0, b1:B
    move/from16 v7, v16

    .end local v16           #l:B
    .local v7, l:B
    move v5, v6

    .end local v6           #b2:B
    .local v5, b2:B
    move v6, v15

    .end local v15           #k:B
    .local v6, k:B
    goto :goto_144

    .end local v7           #l:B
    .end local v8           #chunksSoFar:I
    .end local v10           #encodedData:[B
    .end local v11           #encodedDataLength:I
    .end local v12           #encodedIndex:I
    .end local v14           #i:I
    .end local v17           #nbrChunks:I
    .end local v18           #nextSeparatorIndex:I
    .local v5, encodedDataLength:I
    .local v6, nbrChunks:I
    .local p0, binaryData:[B
    :cond_1c1
    move/from16 v17, v6

    .end local v6           #nbrChunks:I
    .restart local v17       #nbrChunks:I
    move v11, v5

    .end local v5           #encodedDataLength:I
    .restart local v11       #encodedDataLength:I
    goto/16 :goto_23
.end method

.method public static encodeBase64Chunked([B)[B
    .registers 2
    .parameter "binaryData"

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .registers 5
    .parameter "arrayOctect"

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 149
    array-length v1, p0

    .line 150
    .local v1, length:I
    if-nez v1, :cond_a

    move v2, v3

    .line 160
    :goto_9
    return v2

    .line 155
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1a

    .line 156
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_17

    .line 157
    const/4 v2, 0x0

    goto :goto_9

    .line 155
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    move v2, v3

    .line 160
    goto :goto_9
.end method

.method private static isBase64(B)Z
    .registers 4
    .parameter "octect"

    .prologue
    const/4 v2, 0x1

    .line 471
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_7

    move v0, v2

    .line 476
    :goto_6
    return v0

    .line 473
    :cond_7
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 474
    const/4 v0, 0x0

    goto :goto_6

    :cond_10
    move v0, v2

    .line 476
    goto :goto_6
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 202
    instance-of v0, p1, [B

    if-nez v0, :cond_c

    .line 203
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_c
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .registers 3
    .parameter "pArray"

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 520
    instance-of v0, p1, [B

    if-nez v0, :cond_c

    .line 521
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_c
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .registers 3
    .parameter "pArray"

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/mms/pdu/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
