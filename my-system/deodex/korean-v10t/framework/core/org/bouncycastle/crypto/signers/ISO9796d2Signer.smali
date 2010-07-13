.class public Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source "ISO9796d2Signer.java"

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

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .registers 4
    .parameter "cipher"
    .parameter "digest"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V
    .registers 6
    .parameter "cipher"
    .parameter "digest"
    .parameter "implicit"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 53
    if-eqz p3, :cond_e

    .line 55
    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    .line 78
    :goto_d
    return-void

    .line 59
    :cond_e
    instance-of v0, p2, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    if-eqz v0, :cond_17

    .line 61
    const/16 v0, 0x33cc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_d

    .line 75
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no valid trailer for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearBlock([B)V
    .registers 4
    .parameter "block"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_a

    .line 166
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_a
    return-void
.end method

.method private isSameAs([B[B)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 124
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_21

    .line 126
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    array-length v2, p2

    if-le v1, v2, :cond_10

    move v1, v3

    .line 155
    :goto_f
    return v1

    .line 131
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_37

    .line 133
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1e

    move v1, v3

    .line 135
    goto :goto_f

    .line 131
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 141
    .end local v0           #i:I
    :cond_21
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v2, p2

    if-eq v1, v2, :cond_28

    move v1, v3

    .line 143
    goto :goto_f

    .line 146
    :cond_28
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_29
    array-length v1, p2

    if-eq v0, v1, :cond_37

    .line 148
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_34

    move v1, v3

    .line 150
    goto :goto_f

    .line 146
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 155
    :cond_37
    const/4 v1, 0x1

    goto :goto_f
.end method


# virtual methods
.method public generateSignature()[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 232
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 234
    .local v2, digSize:I
    const/4 v6, 0x0

    .line 235
    .local v6, t:I
    const/4 v1, 0x0

    .line 237
    .local v1, delta:I
    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v9, 0xbc

    if-ne v8, v9, :cond_5c

    .line 239
    const/16 v6, 0x8

    .line 240
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    sub-int v1, v8, v12

    .line 241
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 242
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    sub-int/2addr v9, v12

    const/16 v10, -0x44

    aput-byte v10, v8, v9

    .line 253
    :goto_2a
    const/4 v3, 0x0

    .line 254
    .local v3, header:B
    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    iget v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int v7, v8, v9

    .line 256
    .local v7, x:I
    if-lez v7, :cond_84

    .line 258
    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v9, v7, 0x7

    div-int/lit8 v9, v9, 0x8

    sub-int v5, v8, v9

    .line 259
    .local v5, mR:I
    const/16 v3, 0x60

    .line 261
    sub-int/2addr v1, v5

    .line 263
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v8, v11, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    .end local v5           #mR:I
    :goto_4b
    sub-int v8, v1, v12

    if-lez v8, :cond_c2

    .line 275
    sub-int v4, v1, v12

    .local v4, i:I
    :goto_51
    if-eqz v4, :cond_93

    .line 277
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, -0x45

    aput-byte v9, v8, v4

    .line 275
    add-int/lit8 v4, v4, -0x1

    goto :goto_51

    .line 246
    .end local v3           #header:B
    .end local v4           #i:I
    .end local v7           #x:I
    :cond_5c
    const/16 v6, 0x10

    .line 247
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    sub-int v1, v8, v10

    .line 248
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 249
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 250
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    sub-int/2addr v9, v12

    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_2a

    .line 267
    .restart local v3       #header:B
    .restart local v7       #x:I
    :cond_84
    const/16 v3, 0x40

    .line 268
    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v1, v8

    .line 270
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v8, v11, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4b

    .line 279
    .restart local v4       #i:I
    :cond_93
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    sub-int v9, v1, v12

    aget-byte v10, v8, v9

    xor-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 280
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xb

    aput-byte v9, v8, v11

    .line 281
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    .line 289
    .end local v4           #i:I
    :goto_ac
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    invoke-interface {v8, v9, v11, v10}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 291
    .local v0, b:[B
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 292
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 294
    return-object v0

    .line 285
    .end local v0           #b:[B
    :cond_c2
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xa

    aput-byte v9, v8, v11

    .line 286
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    goto :goto_ac
.end method

.method public getRecoveredMessage()[B
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .registers 2

    .prologue
    .line 482
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 97
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object v1, v0

    .line 99
    .local v1, kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 101
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    .line 103
    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    .line 105
    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v3, 0xbc

    if-ne v2, v3, :cond_37

    .line 107
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    .line 114
    :goto_33
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->reset()V

    .line 115
    return-void

    .line 111
    :cond_37
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_33
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 213
    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v0, :cond_16

    .line 218
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 221
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 222
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 223
    return-void
.end method

.method public update(B)V
    .registers 4
    .parameter "b"

    .prologue
    .line 176
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 178
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    .line 183
    :cond_12
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 184
    return-void
.end method

.method public update([BII)V
    .registers 8
    .parameter "in"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 194
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 196
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, p3, :cond_25

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 200
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 204
    .end local v0           #i:I
    :cond_25
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 205
    return-void
.end method

.method public verifySignature([B)Z
    .registers 15
    .parameter "signature"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 304
    const/4 v0, 0x0

    .line 308
    .local v0, block:[B
    :try_start_3
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v9, 0x0

    array-length v10, p1

    invoke-interface {v8, p1, v9, v10}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_1d

    move-result-object v0

    .line 315
    aget-byte v8, v0, v11

    and-int/lit16 v8, v8, 0xc0

    xor-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_21

    .line 317
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 318
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v11

    .line 471
    :goto_1c
    return v8

    .line 310
    :catch_1d
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/lang/Exception;
    move v8, v11

    .line 312
    goto :goto_1c

    .line 323
    .end local v2           #e:Ljava/lang/Exception;
    :cond_21
    array-length v8, v0

    sub-int/2addr v8, v12

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0xf

    xor-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_35

    .line 325
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 326
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v11

    .line 328
    goto :goto_1c

    .line 331
    :cond_35
    const/4 v1, 0x0

    .line 333
    .local v1, delta:I
    array-length v8, v0

    sub-int/2addr v8, v12

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    xor-int/lit16 v8, v8, 0xbc

    if-nez v8, :cond_6b

    .line 335
    const/4 v1, 0x1

    .line 375
    :goto_41
    const/4 v5, 0x0

    .line 377
    .local v5, mStart:I
    const/4 v5, 0x0

    :goto_43
    array-length v8, v0

    if-eq v5, v8, :cond_4e

    .line 379
    aget-byte v8, v0, v5

    and-int/lit8 v8, v8, 0xf

    xor-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_97

    .line 385
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    .line 390
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v3, v8, [B

    .line 392
    .local v3, hash:[B
    array-length v8, v0

    sub-int/2addr v8, v1

    array-length v9, v3

    sub-int v6, v8, v9

    .line 397
    .local v6, off:I
    sub-int v8, v6, v5

    if-gtz v8, :cond_9a

    .line 399
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 400
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v11

    .line 402
    goto :goto_1c

    .line 339
    .end local v3           #hash:[B
    .end local v5           #mStart:I
    .end local v6           #off:I
    :cond_6b
    array-length v8, v0

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    array-length v9, v0

    sub-int/2addr v9, v12

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    .line 341
    .local v7, sigTrail:I
    packed-switch v7, :pswitch_data_140

    .line 366
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "unrecognised hash in signature"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 352
    :pswitch_87
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v8, v8, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    if-nez v8, :cond_95

    .line 354
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "signer should be initialised with SHA1"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 369
    :cond_95
    const/4 v1, 0x2

    goto :goto_41

    .line 377
    .end local v7           #sigTrail:I
    .restart local v5       #mStart:I
    :cond_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 408
    .restart local v3       #hash:[B
    .restart local v6       #off:I
    :cond_9a
    aget-byte v8, v0, v11

    and-int/lit8 v8, v8, 0x20

    if-nez v8, :cond_fc

    .line 410
    iput-boolean v12, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 412
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 413
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    sub-int v9, v6, v5

    invoke-interface {v8, v0, v5, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 414
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v3, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 416
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b4
    array-length v8, v3

    if-eq v4, v8, :cond_d5

    .line 418
    add-int v8, v6, v4

    aget-byte v9, v0, v8

    aget-byte v10, v3, v4

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 419
    add-int v8, v6, v4

    aget-byte v8, v0, v8

    if-eqz v8, :cond_d2

    .line 421
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 422
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v11

    .line 424
    goto/16 :goto_1c

    .line 416
    :cond_d2
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 428
    :cond_d5
    sub-int v8, v6, v5

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 429
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v9, v9

    invoke-static {v0, v5, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    :goto_e3
    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v8, :cond_134

    .line 459
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v8

    if-nez v8, :cond_134

    .line 461
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 462
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v11

    .line 464
    goto/16 :goto_1c

    .line 433
    .end local v4           #i:I
    :cond_fc
    iput-boolean v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 435
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v3, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 437
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_104
    array-length v8, v3

    if-eq v4, v8, :cond_125

    .line 439
    add-int v8, v6, v4

    aget-byte v9, v0, v8

    aget-byte v10, v3, v4

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 440
    add-int v8, v6, v4

    aget-byte v8, v0, v8

    if-eqz v8, :cond_122

    .line 442
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 443
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v11

    .line 445
    goto/16 :goto_1c

    .line 437
    :cond_122
    add-int/lit8 v4, v4, 0x1

    goto :goto_104

    .line 449
    :cond_125
    sub-int v8, v6, v5

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 450
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v9, v9

    invoke-static {v0, v5, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e3

    .line 468
    :cond_134
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 469
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v12

    .line 471
    goto/16 :goto_1c

    .line 341
    nop

    :pswitch_data_140
    .packed-switch 0x33cc
        :pswitch_87
    .end packed-switch
.end method
