.class public Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 5
    .parameter "cipher"

    .prologue
    .line 191
    const/16 v0, 0x8

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;II)V
    .registers 5
    .parameter "cipher"
    .parameter "cfbBitSize"
    .parameter "macSizeInBits"

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 7
    .parameter "cipher"
    .parameter "cfbBitSize"
    .parameter "macSizeInBits"
    .parameter "padding"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 252
    rem-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_12

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_12
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    .line 259
    new-instance v0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    .line 260
    iput-object p4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 261
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    .line 263
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 265
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 5
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 206
    const/16 v0, 0x8

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 207
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v4, 0x0

    .line 341
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 346
    .local v0, blockSize:I
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_1c

    .line 348
    :goto_b
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_25

    .line 350
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 351
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    goto :goto_b

    .line 356
    :cond_1c
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 359
    :cond_25
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 361
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getMacBlock([B)V

    .line 363
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 367
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 278
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 378
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 380
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    :cond_e
    iput v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 388
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 389
    return-void
.end method

.method public update(B)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, resultLen:I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 292
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 293
    iput v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 296
    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte p1, v1, v2

    .line 297
    return-void
.end method

.method public update([BII)V
    .registers 11
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 304
    if-gez p3, :cond_b

    .line 306
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_b
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 310
    .local v0, blockSize:I
    const/4 v2, 0x0

    .line 311
    .local v2, resultLen:I
    iget v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    .line 313
    .local v1, gapLen:I
    if-le p3, v1, :cond_3c

    .line 315
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, v4, v6, v5, v6}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 319
    iput v6, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 320
    sub-int/2addr p3, v1

    .line 321
    add-int/2addr p2, v1

    .line 323
    :goto_2e
    if-le p3, v0, :cond_3c

    .line 325
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, p1, p2, v4, v6}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 327
    sub-int/2addr p3, v0

    .line 328
    add-int/2addr p2, v0

    goto :goto_2e

    .line 332
    :cond_3c
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 335
    return-void
.end method
