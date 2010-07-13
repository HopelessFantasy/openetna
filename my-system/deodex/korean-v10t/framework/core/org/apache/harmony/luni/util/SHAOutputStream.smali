.class public Lorg/apache/harmony/luni/util/SHAOutputStream;
.super Ljava/io/OutputStream;
.source "SHAOutputStream.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BlockSizeInBytes:I = 0x40

.field private static final H0:I = 0x67452301

.field private static final H1:I = -0x10325477

.field private static final H2:I = -0x67452302

.field private static final H3:I = 0x10325476

.field private static final H4:I = -0x3c2d1e10

.field private static final HConstantsSize:I = 0x5

.field private static final HashSizeInBytes:I = 0x14

.field private static final K0_19:I = 0x5a827999

.field private static final K20_39:I = 0x6ed9eba1

.field private static final K40_59:I = -0x70e44324

.field private static final K60_79:I = -0x359d3e2a

.field private static final WArraySize:I = 0x50


# instance fields
.field private HConstants:[I

.field private MArray:[B

.field private WArray:[I

.field private bytesProcessed:J

.field private bytesToProcess:I

.field private oneByte:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    .line 91
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->initialize()V

    .line 92
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 93
    return-void
.end method

.method public constructor <init>([B)V
    .registers 9
    .parameter "state"

    .prologue
    const/4 v6, 0x4

    .line 104
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;-><init>()V

    .line 106
    array-length v2, p1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_f

    .line 107
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 110
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v6, :cond_33

    .line 111
    iget-object v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 112
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    if-ge v1, v6, :cond_30

    .line 113
    iget-object v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v2, v0

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x3

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 110
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 116
    .end local v1           #j:I
    :cond_33
    return-void
.end method

.method private copyToInternalBuffer([BII)V
    .registers 8
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 151
    move v1, p2

    .line 152
    .local v1, index:I
    iget v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .local v0, i:I
    :goto_3
    iget v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/2addr v2, p3

    if-ge v0, v2, :cond_13

    .line 153
    iget-object v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    :cond_13
    iget v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .line 157
    return-void
.end method

.method private initialize()V
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    .line 234
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    .line 235
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    .line 236
    return-void
.end method

.method private padBuffer()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x40

    .line 244
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    iget v4, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 245
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/lit8 v0, v3, 0x1

    .local v0, i:I
    :goto_f
    if-ge v0, v7, :cond_18

    .line 246
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    aput-byte v8, v3, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 249
    :cond_18
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    int-to-long v3, v3

    iget-wide v5, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    mul-long v1, v3, v5

    .line 252
    .local v1, lengthInBits:J
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/lit8 v3, v3, 0x9

    if-le v3, v7, :cond_35

    .line 256
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 258
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v7, :cond_35

    .line 259
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    aput-byte v8, v3, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 263
    :cond_35
    const/4 v0, 0x1

    :goto_36
    const/16 v3, 0x9

    if-ge v0, v3, :cond_4b

    .line 264
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    sub-int v4, v7, v0

    const-wide/16 v5, 0xff

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 265
    const/16 v3, 0x8

    ushr-long/2addr v1, v3

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 267
    :cond_4b
    return-void
.end method

.method private processBuffer()V
    .registers 12

    .prologue
    .line 282
    const/4 v5, 0x0

    .local v5, t:I
    :goto_1
    const/16 v7, 0xf

    if-gt v5, v7, :cond_3b

    .line 284
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v9, v5, 0x4

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 289
    :cond_3b
    const/16 v5, 0x10

    :goto_3d
    const/16 v7, 0x4f

    if-gt v5, v7, :cond_71

    .line 290
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    const/4 v8, 0x3

    sub-int v8, v5, v8

    aget v7, v7, v8

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    const/16 v9, 0x8

    sub-int v9, v5, v9

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    const/16 v9, 0xe

    sub-int v9, v5, v9

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    const/16 v9, 0x10

    sub-int v9, v5, v9

    aget v8, v8, v9

    xor-int v6, v7, v8

    .line 291
    .local v6, temp:I
    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int v6, v7, v8

    .line 293
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aput v6, v7, v5

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 297
    .end local v6           #temp:I
    :cond_71
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x0

    aget v0, v7, v8

    .line 298
    .local v0, A:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x1

    aget v1, v7, v8

    .line 299
    .local v1, B:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x2

    aget v2, v7, v8

    .line 300
    .local v2, C:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x3

    aget v3, v7, v8

    .line 301
    .local v3, D:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x4

    aget v4, v7, v8

    .line 304
    .local v4, E:I
    const/4 v5, 0x0

    :goto_8b
    const/16 v7, 0x13

    if-gt v5, v7, :cond_b5

    .line 305
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 306
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int v6, v7, v8

    .line 307
    and-int v7, v1, v2

    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 308
    move v4, v3

    .line 309
    move v3, v2

    .line 310
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 311
    move v1, v0

    .line 312
    move v0, v6

    .line 304
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 314
    .end local v6           #temp:I
    :cond_b5
    const/16 v5, 0x14

    :goto_b7
    const/16 v7, 0x27

    if-gt v5, v7, :cond_de

    .line 315
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 316
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int v6, v7, v8

    .line 317
    xor-int v7, v1, v2

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 318
    move v4, v3

    .line 319
    move v3, v2

    .line 320
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 321
    move v1, v0

    .line 322
    move v0, v6

    .line 314
    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    .line 324
    .end local v6           #temp:I
    :cond_de
    const/16 v5, 0x28

    :goto_e0
    const/16 v7, 0x3b

    if-gt v5, v7, :cond_10c

    .line 325
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 326
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, -0x70e44324

    add-int v6, v7, v8

    .line 327
    and-int v7, v1, v2

    and-int v8, v1, v3

    or-int/2addr v7, v8

    and-int v8, v2, v3

    or-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 328
    move v4, v3

    .line 329
    move v3, v2

    .line 330
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 331
    move v1, v0

    .line 332
    move v0, v6

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_e0

    .line 334
    .end local v6           #temp:I
    :cond_10c
    const/16 v5, 0x3c

    :goto_10e
    const/16 v7, 0x4f

    if-gt v5, v7, :cond_135

    .line 335
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 336
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, -0x359d3e2a

    add-int v6, v7, v8

    .line 337
    xor-int v7, v1, v2

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 338
    move v4, v3

    .line 339
    move v3, v2

    .line 340
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 341
    move v1, v0

    .line 342
    move v0, v6

    .line 334
    add-int/lit8 v5, v5, 0x1

    goto :goto_10e

    .line 346
    .end local v6           #temp:I
    :cond_135
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v9, v0

    aput v9, v7, v8

    .line 347
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v9, v1

    aput v9, v7, v8

    .line 348
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v9, v2

    aput v9, v7, v8

    .line 349
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    add-int/2addr v9, v3

    aput v9, v7, v8

    .line 350
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x4

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    add-int/2addr v9, v4

    aput v9, v7, v8

    .line 352
    iget-wide v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    const-wide/16 v9, 0x40

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    .line 353
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .line 355
    return-void
.end method

.method private static toStringBlock([B)Ljava/lang/String;
    .registers 3
    .parameter "block"

    .prologue
    .line 383
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->toStringBlock([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBlock([BII)Ljava/lang/String;
    .registers 7
    .parameter "block"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 398
    const-string v1, "0123456789ABCDEF"

    .line 399
    .local v1, hexdigits:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    move v2, p1

    .local v2, i:I
    :goto_d
    add-int v3, p1, p2

    if-ge v2, v3, :cond_2c

    .line 402
    aget-byte v3, p0, v2

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 405
    :cond_2c
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/util/SHAOutputStream;

    .line 133
    .local v0, result:Lorg/apache/harmony/luni/util/SHAOutputStream;
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    .line 134
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    .line 135
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    .line 136
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    iput-object p0, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    .line 137
    return-object v0
.end method

.method public getHash()[I
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->padBuffer()V

    .line 168
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 169
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 172
    .local v0, result:[I
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 173
    return-object v0
.end method

.method public getHashAsBytes()[B
    .registers 5

    .prologue
    .line 184
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 185
    .local v0, hash:[B
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->padBuffer()V

    .line 186
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    const/4 v2, 0x5

    if-ge v1, v2, :cond_49

    .line 191
    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 192
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 193
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 194
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 198
    :cond_49
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 199
    return-object v0
.end method

.method public getHashAsBytes(Z)[B
    .registers 6
    .parameter "pad"

    .prologue
    .line 210
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 211
    .local v0, hash:[B
    if-eqz p1, :cond_c

    .line 212
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->padBuffer()V

    .line 213
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 217
    :cond_c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4b

    .line 218
    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 219
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 220
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 221
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 225
    :cond_4b
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 226
    return-object v0
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const v1, 0x67452301

    aput v1, v0, v3

    .line 363
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 364
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 365
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 366
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x4

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 367
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    .line 368
    iput v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->getHashAsBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->toStringBlock([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 5
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 461
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->write([BII)V

    .line 462
    return-void
.end method

.method public write([BII)V
    .registers 9
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    const/16 v4, 0x40

    .line 427
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    sub-int v1, v4, v3

    .line 428
    .local v1, spaceLeft:I
    if-ge p3, v1, :cond_c

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    .line 448
    :cond_b
    :goto_b
    return-void

    .line 434
    :cond_c
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    .line 435
    sub-int v0, p3, v1

    .line 436
    .local v0, bytesLeft:I
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 437
    add-int v2, p2, v1

    .line 438
    .local v2, start:I
    :goto_16
    if-lt v0, v4, :cond_22

    .line 439
    invoke-direct {p0, p1, v2, v4}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    .line 440
    sub-int/2addr v0, v4

    .line 441
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 442
    add-int/lit8 v2, v2, 0x40

    goto :goto_16

    .line 444
    :cond_22
    if-lez v0, :cond_b

    .line 446
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    goto :goto_b
.end method
