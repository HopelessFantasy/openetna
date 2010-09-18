.class public Lorg/bouncycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;
.source "PSSSigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:B = -0x44t


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .registers 5
    .parameter "cipher"
    .parameter "digest"
    .parameter "sLen"

    .prologue
    .line 49
    const/16 v0, -0x44

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V
    .registers 7
    .parameter "cipher"
    .parameter "digest"
    .parameter "sLen"
    .parameter "trailer"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 59
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 60
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    .line 61
    iput p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    .line 62
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    .line 63
    add-int/lit8 v0, p3, 0x8

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    .line 64
    iput-byte p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    .line 65
    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 5
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 270
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 271
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 272
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 273
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 274
    return-void
.end method

.method private clearBlock([B)V
    .registers 4
    .parameter "block"

    .prologue
    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_a

    .line 106
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_a
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .registers 13
    .parameter "Z"
    .parameter "zOff"
    .parameter "zLen"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 285
    new-array v3, p4, [B

    .line 286
    .local v3, mask:[B
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 287
    .local v2, hashBuf:[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 288
    .local v0, C:[B
    const/4 v1, 0x0

    .line 290
    .local v1, counter:I
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 292
    :goto_10
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_34

    .line 294
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 296
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 297
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 298
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 300
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 305
    :cond_34
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_57

    .line 307
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 309
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 310
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 311
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 313
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_57
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 145
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x9

    if-ge v4, v5, :cond_19

    .line 147
    new-instance v4, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "encoding error"

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_19
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 152
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    if-eqz v4, :cond_43

    .line 154
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 156
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    :cond_43
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 161
    .local v2, h:[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 163
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 165
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v10

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v10

    aput-byte v10, v4, v5

    .line 166
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v10

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    array-length v4, v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v10

    invoke-direct {p0, v2, v9, v4, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 169
    .local v1, dbMask:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_85
    array-length v4, v1

    if-eq v3, v4, :cond_95

    .line 171
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v3

    aget-byte v6, v1, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 174
    :cond_95
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v9

    const/16 v6, 0xff

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    iget v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v7, v8

    shr-int/2addr v6, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    .line 176
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v10

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v9, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    sub-int/2addr v5, v10

    iget-byte v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v6, v4, v5

    .line 180
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 182
    .local v0, b:[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 184
    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    instance-of v3, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_34

    .line 75
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 77
    .local v2, p:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 78
    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    .line 89
    .end local v2           #p:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_15
    :goto_15
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 91
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    .line 93
    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->reset()V

    .line 96
    return-void

    .line 82
    :cond_34
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object v1, v0

    .line 83
    if-eqz p1, :cond_15

    .line 85
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_15
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 136
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "b"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 117
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 128
    return-void
.end method

.method public verifySignature([B)Z
    .registers 15
    .parameter "signature"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v6, v6, 0x8

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x9

    if-ge v5, v6, :cond_14

    move v5, v10

    .line 260
    :goto_13
    return v5

    .line 199
    :cond_14
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    iget v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v7, v8

    invoke-interface {v5, v6, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 203
    :try_start_24
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-interface {v5, p1, v6, v7}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 204
    .local v0, b:[B
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    array-length v8, v0

    sub-int/2addr v7, v8

    array-length v8, v0

    invoke-static {v0, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_4b

    .line 211
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    sub-int/2addr v6, v11

    aget-byte v5, v5, v6

    iget-byte v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v5, v6, :cond_4f

    .line 213
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v10

    .line 214
    goto :goto_13

    .line 206
    .end local v0           #b:[B
    :catch_4b
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/Exception;
    move v5, v10

    .line 208
    goto :goto_13

    .line 217
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #b:[B
    :cond_4f
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v11

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v11

    invoke-direct {p0, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 219
    .local v1, dbMask:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_66
    array-length v5, v1

    if-eq v3, v5, :cond_76

    .line 221
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v5, v3

    aget-byte v7, v1, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 224
    :cond_76
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v5, v10

    const/16 v7, 0xff

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x8

    iget v9, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v8, v9

    shr-int/2addr v7, v8

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v10

    .line 226
    const/4 v3, 0x0

    :goto_8a
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v12

    if-eq v3, v5, :cond_a7

    .line 228
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v5, v3

    if-eqz v5, :cond_a4

    .line 230
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v10

    .line 231
    goto/16 :goto_13

    .line 226
    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 235
    :cond_a7
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v12

    aget-byte v5, v5, v6

    if-eq v5, v11, :cond_bf

    .line 237
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v10

    .line 238
    goto/16 :goto_13

    .line 241
    :cond_bf
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v11

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v8, v8

    iget v9, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    invoke-interface {v5, v6, v10, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 244
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    iget v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    invoke-interface {v5, v6, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 246
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int v3, v5, v11

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int v4, v5, v6

    .line 247
    .local v4, j:I
    :goto_fe
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v5, v5

    if-eq v4, v5, :cond_120

    .line 249
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v5, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    aget-byte v6, v6, v4

    xor-int/2addr v5, v6

    if-eqz v5, :cond_11b

    .line 251
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 252
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v10

    .line 253
    goto/16 :goto_13

    .line 247
    :cond_11b
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 257
    :cond_120
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 258
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v11

    .line 260
    goto/16 :goto_13
.end method
