.class public Lorg/bouncycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field agree:Lorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field mac:Lorg/bouncycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/bouncycastle/crypto/params/IESParameters;

.field privParam:Lorg/bouncycastle/crypto/CipherParameters;

.field pubParam:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V
    .registers 5
    .parameter "agree"
    .parameter "kdf"
    .parameter "mac"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 46
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 47
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 48
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .registers 6
    .parameter "agree"
    .parameter "kdf"
    .parameter "mac"
    .parameter "cipher"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 68
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 69
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 70
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 71
    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 72
    return-void
.end method

.method private decryptBlock([BII[B)[B
    .registers 26
    .parameter "in_enc"
    .parameter "inOff"
    .parameter "inLen"
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v11, 0x0

    .line 102
    .local v11, M:[B
    const/16 v17, 0x0

    .line 103
    .local v17, macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v15, Lorg/bouncycastle/crypto/params/KDFParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v5

    move-object v0, v15

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 104
    .local v15, kParam:Lorg/bouncycastle/crypto/params/KDFParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v18

    .line 106
    .local v18, macKeySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    move-object v5, v0

    invoke-interface {v5, v15}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v5, v0

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    sub-int p3, p3, v5

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v5, v0

    if-nez v5, :cond_d4

    .line 112
    div-int/lit8 v5, v18, 0x8

    add-int v5, v5, p3

    new-array v12, v5, [B

    .line 114
    .local v12, buf:[B
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v11, v0

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    move-object v5, v0

    const/4 v6, 0x0

    array-length v7, v12

    invoke-interface {v5, v12, v6, v7}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 118
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4e
    move v0, v14

    move/from16 v1, p3

    if-eq v0, v1, :cond_60

    .line 120
    add-int v5, p2, v14

    aget-byte v5, p1, v5

    aget-byte v6, v12, v14

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v14

    .line 118
    add-int/lit8 v14, v14, 0x1

    goto :goto_4e

    .line 123
    :cond_60
    new-instance v17, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local v17           #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v5, v18, 0x8

    move-object/from16 v0, v17

    move-object v1, v12

    move/from16 v2, p3

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 145
    .end local v14           #i:I
    .end local p4
    .restart local v17       #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    :goto_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v16

    .line 147
    .local v16, macIV:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 152
    add-int p2, p2, p3

    .line 154
    const/16 v20, 0x0

    .local v20, t:I
    :goto_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_149

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    move-object v5, v0

    aget-byte v5, v5, v20

    add-int v6, p2, v20

    aget-byte v6, p1, v6

    if-eq v5, v6, :cond_145

    .line 158
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "Mac codes failed to equal."

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    .end local v12           #buf:[B
    .end local v16           #macIV:[B
    .end local v20           #t:I
    .restart local p4
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object/from16 p4, v0

    .end local p4
    check-cast p4, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v13

    .line 128
    .local v13, cipherKeySize:I
    div-int/lit8 v5, v13, 0x8

    div-int/lit8 v6, v18, 0x8

    add-int/2addr v5, v6

    new-array v12, v5, [B

    .line 130
    .restart local v12       #buf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v8, 0x0

    div-int/lit8 v9, v13, 0x8

    invoke-direct {v7, v12, v8, v9}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v5

    new-array v9, v5, [B

    .line 134
    .local v9, tmp:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v5, v0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v19

    .line 136
    .local v19, off:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v5

    add-int v19, v19, v5

    .line 138
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v11, v0

    .line 140
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v1, v5

    move-object v2, v11

    move v3, v6

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    new-instance v17, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local v17           #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v5, v13, 0x8

    div-int/lit8 v6, v18, 0x8

    move-object/from16 v0, v17

    move-object v1, v12

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .restart local v17       #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_6d

    .line 154
    .end local v9           #tmp:[B
    .end local v13           #cipherKeySize:I
    .end local v19           #off:I
    .restart local v16       #macIV:[B
    .restart local v20       #t:I
    :cond_145
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b4

    .line 162
    :cond_149
    return-object v11
.end method

.method private encryptBlock([BII[B)[B
    .registers 24
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v8, 0x0

    .line 173
    .local v8, C:[B
    const/16 v16, 0x0

    .line 174
    .local v16, macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v14, Lorg/bouncycastle/crypto/params/KDFParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v4

    move-object v0, v14

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 175
    .local v14, kParam:Lorg/bouncycastle/crypto/params/KDFParameters;
    const/4 v11, 0x0

    .line 176
    .local v11, c_text_length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v17

    .line 178
    .local v17, macKeySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    move-object v4, v0

    invoke-interface {v4, v14}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v4, v0

    if-nez v4, :cond_9d

    .line 182
    div-int/lit8 v4, v17, 0x8

    add-int v4, v4, p3

    new-array v10, v4, [B

    .line 184
    .local v10, buf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v4, v0

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    add-int v4, v4, p3

    new-array v8, v4, [B

    .line 185
    move/from16 v11, p3

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    move-object v4, v0

    const/4 v5, 0x0

    array-length v6, v10

    invoke-interface {v4, v10, v5, v6}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 189
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4e
    move v0, v13

    move/from16 v1, p3

    if-eq v0, v1, :cond_60

    .line 191
    add-int v4, p2, v13

    aget-byte v4, p1, v4

    aget-byte v5, v10, v13

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v8, v13

    .line 189
    add-int/lit8 v13, v13, 0x1

    goto :goto_4e

    .line 194
    :cond_60
    new-instance v16, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local v16           #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v4, v17, 0x8

    move-object/from16 v0, v16

    move-object v1, v10

    move/from16 v2, p3

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 214
    .end local v13           #i:I
    .end local p4
    .restart local v16       #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    :goto_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v15

    .line 216
    .local v15, macIV:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v8, v5, v11}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v4, v0

    const/4 v5, 0x0

    array-length v6, v15

    invoke-interface {v4, v15, v5, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v4, v0

    invoke-interface {v4, v8, v11}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 223
    return-object v8

    .line 198
    .end local v10           #buf:[B
    .end local v15           #macIV:[B
    .restart local p4
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    move-object/from16 p4, v0

    .end local p4
    check-cast p4, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v12

    .line 199
    .local v12, cipherKeySize:I
    div-int/lit8 v4, v12, 0x8

    div-int/lit8 v5, v17, 0x8

    add-int/2addr v4, v5

    new-array v10, v4, [B

    .line 201
    .restart local v10       #buf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v4, v0

    const/4 v5, 0x1

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v7, 0x0

    div-int/lit8 v8, v12, 0x8

    .end local v8           #C:[B
    invoke-direct {v6, v10, v7, v8}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v11

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    move-object v4, v0

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    add-int/2addr v4, v11

    new-array v8, v4, [B

    .line 207
    .restart local v8       #C:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v4, v0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v18

    .line 209
    .local v18, off:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v8

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    .line 211
    new-instance v16, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local v16           #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v4, v12, 0x8

    div-int/lit8 v5, v17, 0x8

    move-object/from16 v0, v16

    move-object v1, v10

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .restart local v16       #macKey:Lorg/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_6d
.end method


# virtual methods
.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .parameter "forEncryption"
    .parameter "privParam"
    .parameter "pubParam"
    .parameter "param"

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 89
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 90
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 91
    check-cast p4, Lorg/bouncycastle/crypto/params/IESParameters;

    .end local p4
    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    .line 92
    return-void
.end method

.method public processBlock([BII)[B
    .registers 7
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 234
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 236
    .local v0, z:Ljava/math/BigInteger;
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v1, :cond_1c

    .line 238
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/bouncycastle/crypto/engines/IESEngine;->encryptBlock([BII[B)[B

    move-result-object v1

    .line 242
    :goto_1b
    return-object v1

    :cond_1c
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/bouncycastle/crypto/engines/IESEngine;->decryptBlock([BII[B)[B

    move-result-object v1

    goto :goto_1b
.end method
