.class public Lorg/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private hash:Lorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    .line 29
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .registers 4
    .parameter "cipher"
    .parameter "hash"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .registers 6
    .parameter "cipher"
    .parameter "hash"
    .parameter "encodingParams"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    .line 46
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 48
    if-eqz p3, :cond_16

    .line 50
    array-length v0, p3

    invoke-interface {p2, p3, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 53
    :cond_16
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 54
    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 5
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 295
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 296
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 297
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 298
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 299
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

    .line 310
    new-array v3, p4, [B

    .line 311
    .local v3, mask:[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v2, v4, [B

    .line 312
    .local v2, hashBuf:[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 313
    .local v0, C:[B
    const/4 v1, 0x0

    .line 315
    .local v1, counter:I
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 319
    :cond_11
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 321
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 322
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 323
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 325
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    div-int v4, p4, v4

    if-lt v1, v4, :cond_11

    .line 329
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_5d

    .line 331
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 333
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 334
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 335
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 337
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    array-length v5, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    :cond_5d
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .registers 15
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 202
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 203
    .local v1, data:[B
    const/4 v0, 0x0

    .line 210
    .local v0, block:[B
    array-length v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v7

    if-ge v6, v7, :cond_33

    .line 212
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    new-array v0, v6, [B

    .line 214
    array-length v6, v0

    array-length v7, v1

    sub-int/2addr v6, v7

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :goto_21
    array-length v6, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_35

    .line 223
    new-instance v6, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_33
    move-object v0, v1

    goto :goto_21

    .line 229
    :cond_35
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    invoke-direct {p0, v0, v6, v7, v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 232
    .local v3, mask:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_45
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_55

    .line 234
    aget-byte v6, v0, v2

    aget-byte v7, v3, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 240
    :cond_55
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v0, v9, v6, v7}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 242
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v6

    :goto_64
    array-length v6, v0

    if-eq v2, v6, :cond_77

    .line 244
    aget-byte v6, v0, v2

    iget-object v7, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    sub-int v7, v2, v7

    aget-byte v7, v3, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 250
    :cond_77
    const/4 v2, 0x0

    :goto_78
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_94

    .line 252
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    add-int/2addr v7, v2

    aget-byte v7, v0, v7

    if-eq v6, v7, :cond_91

    .line 254
    new-instance v6, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data hash wrong"

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 250
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 263
    :cond_94
    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    mul-int/lit8 v5, v6, 0x2

    .local v5, start:I
    :goto_99
    array-length v6, v0

    if-eq v5, v6, :cond_a4

    .line 265
    aget-byte v6, v0, v5

    if-eq v6, v10, :cond_a4

    aget-byte v6, v0, v5

    if-eqz v6, :cond_c5

    .line 271
    :cond_a4
    array-length v6, v0

    sub-int/2addr v6, v10

    if-ge v5, v6, :cond_ac

    aget-byte v6, v0, v5

    if-eq v6, v10, :cond_c8

    .line 273
    :cond_ac
    new-instance v6, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data start wrong "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 263
    :cond_c5
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 276
    :cond_c8
    add-int/lit8 v5, v5, 0x1

    .line 281
    array-length v6, v0

    sub-int/2addr v6, v5

    new-array v4, v6, [B

    .line 283
    .local v4, output:[B
    array-length v6, v4

    invoke-static {v0, v5, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    return-object v4
.end method

.method public encodeBlock([BII)[B
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 140
    .local v0, block:[B
    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v6

    aput-byte v6, v0, v4

    .line 154
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    .line 161
    .local v3, seed:[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 166
    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 168
    .local v2, mask:[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    .local v1, i:I
    :goto_3c
    array-length v4, v0

    if-eq v1, v4, :cond_4f

    .line 170
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 176
    :cond_4f
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 184
    const/4 v1, 0x0

    :goto_65
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_75

    .line 186
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 189
    :cond_75
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 89
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_14

    .line 91
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 95
    :goto_13
    return v1

    :cond_14
    move v1, v0

    goto :goto_13
.end method

.method public getOutputBlockSize()I
    .registers 4

    .prologue
    .line 101
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 103
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_c

    move v1, v0

    .line 109
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_b
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 67
    instance-of v3, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1c

    .line 69
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 71
    .local v2, rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 72
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 80
    .end local v2           #rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_14
    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 82
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 83
    return-void

    .line 76
    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1c
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 77
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_14
.end method

.method public processBlock([BII)[B
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 125
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_8
.end method
