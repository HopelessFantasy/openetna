.class public Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source "ISO9796d2PSSSigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fullMessage:Z

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .registers 5
    .parameter "cipher"
    .parameter "digest"
    .parameter "saltLength"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V
    .registers 7
    .parameter "cipher"
    .parameter "digest"
    .parameter "saltLength"
    .parameter "implicit"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 65
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 66
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    .line 67
    iput p3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 69
    if-eqz p4, :cond_16

    .line 71
    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    .line 94
    :goto_15
    return-void

    .line 75
    :cond_16
    instance-of v0, p2, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    if-eqz v0, :cond_1f

    .line 77
    const/16 v0, 0x33cc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_15

    .line 91
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no valid trailer for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ItoOSP(I[B)V
    .registers 5
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 547
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 548
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 549
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 550
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 551
    return-void
.end method

.method private LtoOSP(J[B)V
    .registers 8
    .parameter "l"
    .parameter "sp"

    .prologue
    const/4 v3, 0x0

    .line 560
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    .line 561
    const/4 v0, 0x1

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 562
    const/4 v0, 0x2

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 563
    const/4 v0, 0x3

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 564
    const/4 v0, 0x4

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 565
    const/4 v0, 0x5

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 566
    const/4 v0, 0x6

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 567
    const/4 v0, 0x7

    ushr-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 568
    return-void
.end method

.method private clearBlock([B)V
    .registers 4
    .parameter "block"

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_a

    .line 202
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_a
    return-void
.end method

.method private isSameAs([B[B)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 178
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v2, p2

    if-eq v1, v2, :cond_8

    move v1, v3

    .line 191
    :goto_7
    return v1

    .line 183
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v1, p2

    if-eq v0, v1, :cond_17

    .line 185
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_14

    move v1, v3

    .line 187
    goto :goto_7

    .line 183
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 191
    :cond_17
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private maskGeneratorFunction1([BIII)[B
    .registers 13
    .parameter "Z"
    .parameter "zOff"
    .parameter "zLen"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 578
    new-array v3, p4, [B

    .line 579
    .local v3, mask:[B
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 580
    .local v2, hashBuf:[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 581
    .local v0, C:[B
    const/4 v1, 0x0

    .line 583
    .local v1, counter:I
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 585
    :goto_10
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_34

    .line 587
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 589
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 590
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 591
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 593
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 598
    :cond_34
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_57

    .line 600
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 602
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 603
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 604
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 606
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    :cond_57
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 267
    .local v3, digSize:I
    new-array v6, v3, [B

    .line 269
    .local v6, m2Hash:[B
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 271
    const/16 v10, 0x8

    new-array v0, v10, [B

    .line 272
    .local v0, C:[B
    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    mul-int/lit8 v10, v10, 0x8

    int-to-long v10, v10

    invoke-direct {p0, v10, v11, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 274
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-interface {v10, v0, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 276
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v12, 0x0

    iget v13, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-interface {v10, v11, v12, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 278
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v6

    invoke-interface {v10, v6, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 282
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v10, :cond_9f

    .line 284
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 292
    .local v8, salt:[B
    :goto_38
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v8

    invoke-interface {v10, v8, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 294
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v4, v10, [B

    .line 296
    .local v4, hash:[B
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 298
    const/4 v9, 0x2

    .line 299
    .local v9, tLength:I
    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v11, 0xbc

    if-ne v10, v11, :cond_55

    .line 301
    const/4 v9, 0x1

    .line 304
    :cond_55
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v10, v10

    iget v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    sub-int/2addr v10, v11

    array-length v11, v8

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    const/4 v11, 0x1

    sub-int v7, v10, v11

    .line 306
    .local v7, off:I
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v11, 0x1

    aput-byte v11, v10, v7

    .line 308
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v13, v7, 0x1

    iget v14, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v12, v7, 0x1

    iget v13, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/2addr v12, v13

    array-length v13, v8

    invoke-static {v8, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    const/4 v10, 0x0

    array-length v11, v4

    iget-object v12, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v12, v12

    iget v13, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v9

    invoke-direct {p0, v4, v10, v11, v12}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 312
    .local v2, dbMask:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8f
    array-length v10, v2

    if-eq v5, v10, :cond_a9

    .line 314
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v11, v10, v5

    aget-byte v12, v2, v5

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v5

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 288
    .end local v2           #dbMask:[B
    .end local v4           #hash:[B
    .end local v5           #i:I
    .end local v7           #off:I
    .end local v8           #salt:[B
    .end local v9           #tLength:I
    :cond_9f
    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    new-array v8, v10, [B

    .line 289
    .restart local v8       #salt:[B
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_38

    .line 317
    .restart local v2       #dbMask:[B
    .restart local v4       #hash:[B
    .restart local v5       #i:I
    .restart local v7       #off:I
    .restart local v9       #tLength:I
    :cond_a9
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v12, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v12, v12

    iget v13, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v9

    iget v13, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v4, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v11, 0xbc

    if-ne v10, v11, :cond_ed

    .line 321
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v12, -0x44

    aput-byte v12, v10, v11

    .line 329
    :goto_c9
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v11, 0x0

    aget-byte v12, v10, v11

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 331
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v13, v13

    invoke-interface {v10, v11, v12, v13}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 333
    .local v1, b:[B
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 334
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 335
    const/4 v10, 0x0

    iput v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 337
    return-object v1

    .line 325
    .end local v1           #b:[B
    :cond_ed
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    iget v12, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 326
    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iget v12, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_c9
.end method

.method public getRecoveredMessage()[B
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .registers 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .parameter "forSigning"
    .parameter "param"

    .prologue
    const/4 v6, 0x1

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 129
    .local v2, lengthOfSalt:I
    instance-of v4, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v4, :cond_4c

    .line 131
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v3, v0

    .line 133
    .local v3, p:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 134
    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    .line 153
    .end local v3           #p:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_18
    :goto_18
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v4, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 155
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    iput v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    .line 157
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    .line 159
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v5, 0xbc

    if-ne v4, v5, :cond_72

    .line 161
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v4, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sub-int/2addr v4, v6

    sub-int/2addr v4, v6

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    .line 168
    :goto_48
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    .line 169
    return-void

    .line 136
    :cond_4c
    instance-of v4, p2, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    if-eqz v4, :cond_64

    .line 138
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    move-object v3, v0

    .line 140
    .local v3, p:Lorg/bouncycastle/crypto/params/ParametersWithSalt;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 141
    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 142
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v2, v4

    .line 143
    goto :goto_18

    .line 146
    .end local v3           #p:Lorg/bouncycastle/crypto/params/ParametersWithSalt;
    :cond_64
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object v1, v0

    .line 147
    if-eqz p1, :cond_18

    .line 149
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_18

    .line 165
    :cond_72
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v4, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sub-int/2addr v4, v6

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_48
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 249
    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 250
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    if-eqz v0, :cond_11

    .line 252
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 254
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 255
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 256
    return-void
.end method

.method public update(B)V
    .registers 5
    .parameter "b"

    .prologue
    .line 212
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v0, v1

    .line 220
    :goto_11
    return-void

    .line 218
    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    goto :goto_11
.end method

.method public update([BII)V
    .registers 6
    .parameter "in"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 230
    :goto_0
    if-lez p3, :cond_13

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 232
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    .line 233
    add-int/lit8 p2, p2, 0x1

    .line 234
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 237
    :cond_13
    if-lez p3, :cond_1a

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 241
    :cond_1a
    return-void
.end method

.method public verifySignature([B)Z
    .registers 23
    .parameter "signature"

    .prologue
    .line 347
    const/4 v6, 0x0

    .line 351
    .local v6, block:[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_db

    move-result-object v6

    .line 361
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    div-int/lit8 v18, v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5d

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x7

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 365
    .local v16, tmp:[B
    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v6

    move/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    move-object/from16 v6, v16

    .line 369
    .end local v16           #tmp:[B
    :cond_5d
    const/4 v15, 0x0

    .line 371
    .local v15, tLength:I
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aget-byte v17, v6, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    xor-int/lit16 v0, v0, 0xbc

    move/from16 v17, v0

    if-nez v17, :cond_e1

    .line 373
    const/4 v15, 0x1

    .line 413
    :goto_77
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v11, v0

    .line 414
    .local v11, m2Hash:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v11

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 419
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v18, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v15

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v7

    .line 420
    .local v7, dbMask:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_c2
    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-eq v0, v1, :cond_129

    .line 422
    aget-byte v17, v6, v10

    aget-byte v18, v7, v10

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v10

    .line 420
    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    .line 353
    .end local v7           #dbMask:[B
    .end local v10           #i:I
    .end local v11           #m2Hash:[B
    .end local v15           #tLength:I
    :catch_db
    move-exception v17

    move-object/from16 v8, v17

    .line 355
    .local v8, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 515
    .end local v8           #e:Ljava/lang/Exception;
    :goto_e0
    return v17

    .line 377
    .restart local v15       #tLength:I
    :cond_e1
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    sub-int v17, v17, v18

    aget-byte v17, v6, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    aget-byte v18, v6, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v14, v17, v18

    .line 379
    .local v14, sigTrail:I
    packed-switch v14, :pswitch_data_318

    .line 404
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "unrecognised hash in signature"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 390
    :pswitch_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    move/from16 v17, v0

    if-nez v17, :cond_126

    .line 392
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "signer should be initialised with SHA1"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 407
    :cond_126
    const/4 v15, 0x2

    goto/16 :goto_77

    .line 425
    .end local v14           #sigTrail:I
    .restart local v7       #dbMask:[B
    .restart local v10       #i:I
    .restart local v11       #m2Hash:[B
    :cond_129
    const/16 v17, 0x0

    aget-byte v18, v6, v17

    and-int/lit8 v18, v18, 0x7f

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v17

    .line 430
    const/4 v12, 0x0

    .line 432
    .local v12, mStart:I
    const/4 v12, 0x0

    :goto_138
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_14b

    .line 434
    aget-byte v17, v6, v12

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15f

    .line 440
    :cond_14b
    add-int/lit8 v12, v12, 0x1

    .line 442
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-lt v0, v1, :cond_162

    .line 444
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 445
    const/16 v17, 0x0

    goto :goto_e0

    .line 432
    :cond_15f
    add-int/lit8 v12, v12, 0x1

    goto :goto_138

    .line 448
    :cond_162
    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-le v0, v1, :cond_2b5

    .line 450
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 457
    :goto_171
    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v6

    move v1, v12

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v5, v0

    .line 465
    .local v5, C:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_209

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-interface/range {v17 .. v20}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 474
    :cond_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v11

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object v1, v11

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v9, v0

    .line 477
    .local v9, hash:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v18, v18, v12

    move-object v0, v7

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, v17

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v9

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 481
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v15

    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 483
    .local v13, off:I
    const/4 v10, 0x0

    :goto_27b
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-eq v0, v1, :cond_2c2

    .line 485
    aget-byte v17, v9, v10

    add-int v18, v13, v10

    aget-byte v18, v6, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2bf

    .line 487
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 488
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 490
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 492
    const/16 v17, 0x0

    goto/16 :goto_e0

    .line 454
    .end local v5           #C:[B
    .end local v9           #hash:[B
    .end local v13           #off:I
    :cond_2b5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    goto/16 :goto_171

    .line 483
    .restart local v5       #C:[B
    .restart local v9       #hash:[B
    .restart local v13       #off:I
    :cond_2bf
    add-int/lit8 v10, v10, 0x1

    goto :goto_27b

    .line 500
    :cond_2c2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    move/from16 v17, v0

    if-eqz v17, :cond_2f9

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result v17

    if-nez v17, :cond_2f9

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 505
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 507
    const/16 v17, 0x0

    goto/16 :goto_e0

    .line 511
    :cond_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 512
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 513
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 515
    const/16 v17, 0x1

    goto/16 :goto_e0

    .line 379
    :pswitch_data_318
    .packed-switch 0x33cc
        :pswitch_110
    .end packed-switch
.end method
