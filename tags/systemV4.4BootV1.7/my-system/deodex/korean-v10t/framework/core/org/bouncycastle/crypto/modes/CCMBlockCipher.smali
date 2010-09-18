.class public Lorg/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"


# instance fields
.field private blockSize:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private forEncryption:Z

.field private macBlock:[B

.field private params:Lorg/bouncycastle/crypto/params/CCMParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 34
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 35
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 37
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_22

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_22
    return-void
.end method

.method private areEqual([B[B)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 269
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_7

    move v1, v3

    .line 282
    :goto_6
    return v1

    .line 274
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v1, p2

    if-eq v0, v1, :cond_16

    .line 276
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_13

    move v1, v3

    .line 278
    goto :goto_6

    .line 274
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 282
    :cond_16
    const/4 v1, 0x1

    goto :goto_6
.end method

.method private calculateMac([BII[B)I
    .registers 21
    .parameter "data"
    .parameter "dataOff"
    .parameter "dataLen"
    .parameter "macBlock"

    .prologue
    .line 182
    new-instance v6, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/params/CCMParameters;->getMacSize()I

    move-result v13

    invoke-direct {v6, v12, v13}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 184
    .local v6, cMac:Lorg/bouncycastle/crypto/Mac;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/params/CCMParameters;->getNonce()[B

    move-result-object v10

    .line 185
    .local v10, nonce:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/params/CCMParameters;->getAssociatedText()[B

    move-result-object v4

    .line 187
    .local v4, associatedText:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/params/CCMParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 192
    const/16 v12, 0x10

    new-array v5, v12, [B

    .line 194
    .local v5, b0:[B
    if-eqz v4, :cond_42

    array-length v12, v4

    if-eqz v12, :cond_42

    .line 196
    const/4 v12, 0x0

    aget-byte v13, v5, v12

    or-int/lit8 v13, v13, 0x40

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 199
    :cond_42
    const/4 v12, 0x0

    aget-byte v13, v5, v12

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v14

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    and-int/lit8 v14, v14, 0x7

    shl-int/lit8 v14, v14, 0x3

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 201
    const/4 v12, 0x0

    aget-byte v13, v5, v12

    const/16 v14, 0xf

    array-length v15, v10

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    and-int/lit8 v14, v14, 0x7

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 203
    const/4 v12, 0x0

    const/4 v13, 0x1

    array-length v14, v10

    invoke-static {v10, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    move/from16 v11, p3

    .line 206
    .local v11, q:I
    const/4 v7, 0x1

    .line 207
    .local v7, count:I
    :goto_6d
    if-lez v11, :cond_7b

    .line 209
    array-length v12, v5

    sub-int/2addr v12, v7

    and-int/lit16 v13, v11, 0xff

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 210
    ushr-int/lit8 v11, v11, 0x8

    .line 211
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 214
    :cond_7b
    const/4 v12, 0x0

    array-length v13, v5

    invoke-interface {v6, v5, v12, v13}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 219
    if-eqz v4, :cond_d1

    .line 223
    array-length v12, v4

    const v13, 0xff00

    if-ge v12, v13, :cond_ad

    .line 225
    array-length v12, v4

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 226
    array-length v12, v4

    int-to-byte v12, v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 228
    const/4 v8, 0x2

    .line 242
    .local v8, extra:I
    :goto_95
    const/4 v12, 0x0

    array-length v13, v4

    invoke-interface {v6, v4, v12, v13}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 244
    array-length v12, v4

    add-int/2addr v12, v8

    rem-int/lit8 v8, v12, 0x10

    .line 245
    if-eqz v8, :cond_d1

    .line 247
    const/4 v9, 0x0

    .local v9, i:I
    :goto_a1
    const/16 v12, 0x10

    sub-int/2addr v12, v8

    if-eq v9, v12, :cond_d1

    .line 249
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    .line 232
    .end local v8           #extra:I
    .end local v9           #i:I
    :cond_ad
    const/4 v12, -0x1

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 233
    const/4 v12, -0x2

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 234
    array-length v12, v4

    shr-int/lit8 v12, v12, 0x18

    int-to-byte v12, v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 235
    array-length v12, v4

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 236
    array-length v12, v4

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 237
    array-length v12, v4

    int-to-byte v12, v12

    invoke-interface {v6, v12}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 239
    const/4 v8, 0x6

    .restart local v8       #extra:I
    goto :goto_95

    .line 257
    .end local v8           #extra:I
    :cond_d1
    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 259
    const/4 v12, 0x0

    move-object v0, v6

    move-object/from16 v1, p4

    move v2, v12

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v12

    return v12
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CCMParameters;->getMacSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 81
    .local v0, mac:[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-object v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/CCMParameters;

    if-nez v0, :cond_c

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters need to be CCMParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_c
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 63
    check-cast p2, Lorg/bouncycastle/crypto/params/CCMParameters;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    .line 64
    return-void
.end method

.method public processPacket([BII)[B
    .registers 23
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v15, v0

    if-nez v15, :cond_f

    .line 91
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "CCM cipher unitialized."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 94
    :cond_f
    new-instance v7, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    move-object v15, v0

    invoke-direct {v7, v15}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 95
    .local v7, ctrCipher:Lorg/bouncycastle/crypto/BlockCipher;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    new-array v10, v15, [B

    .line 96
    .local v10, iv:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/bouncycastle/crypto/params/CCMParameters;->getNonce()[B

    move-result-object v12

    .line 97
    .local v12, nonce:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/bouncycastle/crypto/params/CCMParameters;->getMacSize()I

    move-result v15

    div-int/lit8 v11, v15, 0x8

    .line 100
    .local v11, macSize:I
    const/4 v15, 0x0

    const/16 v16, 0xf

    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x1

    sub-int v16, v16, v17

    and-int/lit8 v16, v16, 0x7

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v10, v15

    .line 102
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v12

    move v1, v15

    move-object v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    move v15, v0

    new-instance v16, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->params:Lorg/bouncycastle/crypto/params/CCMParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/crypto/params/CCMParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v7

    move v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    move v15, v0

    if-eqz v15, :cond_11a

    .line 108
    move/from16 v9, p2

    .line 109
    .local v9, index:I
    const/4 v14, 0x0

    .line 111
    .local v14, outOff:I
    add-int v15, p3, v11

    new-array v13, v15, [B

    .line 113
    .local v13, out:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 117
    :goto_b4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    sub-int v15, p3, v15

    if-ge v9, v15, :cond_d3

    .line 119
    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    move-object v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    add-int/2addr v14, v15

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    add-int/2addr v9, v15

    goto :goto_b4

    .line 124
    :cond_d3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    new-array v5, v15, [B

    .line 126
    .local v5, block:[B
    const/4 v15, 0x0

    sub-int v16, p3, v9

    move-object/from16 v0, p1

    move v1, v9

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v5

    move v2, v15

    move-object v3, v5

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 130
    const/4 v15, 0x0

    sub-int v16, p3, v9

    move-object v0, v5

    move v1, v15

    move-object v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    sub-int v15, p3, v9

    add-int/2addr v14, v15

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v14

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v13

    move v3, v14

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_119
    return-object v13

    .line 138
    .end local v5           #block:[B
    .end local v9           #index:I
    .end local v13           #out:[B
    .end local v14           #outOff:I
    :cond_11a
    move/from16 v9, p2

    .line 139
    .restart local v9       #index:I
    const/4 v14, 0x0

    .line 141
    .restart local v14       #outOff:I
    sub-int v15, p3, v11

    new-array v13, v15, [B

    .line 143
    .restart local v13       #out:[B
    add-int v15, p2, p3

    sub-int/2addr v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 147
    move v8, v11

    .local v8, i:I
    :goto_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    array-length v15, v15

    if-eq v8, v15, :cond_166

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    const/16 v16, 0x0

    aput-byte v16, v15, v8

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_152

    .line 152
    :cond_166
    :goto_166
    array-length v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v14, v15, :cond_187

    .line 154
    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    move-object v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    add-int/2addr v14, v15

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    add-int/2addr v9, v15

    goto :goto_166

    .line 159
    :cond_187
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    new-array v5, v15, [B

    .line 161
    .restart local v5       #block:[B
    const/4 v15, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    sub-int v16, v16, v14

    move-object/from16 v0, p1

    move v1, v9

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v5

    move v2, v15

    move-object v3, v5

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 165
    const/4 v15, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    sub-int v16, v16, v14

    move-object v0, v5

    move v1, v15

    move-object v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move v15, v0

    new-array v6, v15, [B

    .line 169
    .local v6, calculatedMacBlock:[B
    const/4 v15, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v15

    move/from16 v3, v16

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->areEqual([B[B)Z

    move-result v15

    if-nez v15, :cond_119

    .line 173
    new-instance v15, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v16, "mac check in CCM failed"

    invoke-direct/range {v15 .. v16}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15
.end method
