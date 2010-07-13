.class public Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_a
    .array-data 0x1
        0x4at
        0xddt
        0xa2t
        0x2ct
        0x79t
        0xe8t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    .line 54
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .registers 7
    .parameter "key"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 329
    new-array v0, v4, [B

    .line 331
    .local v0, result:[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 332
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 334
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .registers 8
    .parameter "key"
    .parameter "checksum"

    .prologue
    const/4 v4, 0x0

    .line 349
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    .line 351
    .local v0, calculatedChecksum:[B
    array-length v2, p2

    array-length v3, v0

    if-eq v2, v3, :cond_b

    move v2, v4

    .line 364
    :goto_a
    return v2

    .line 356
    :cond_b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v2, p2

    if-eq v1, v2, :cond_1a

    .line 358
    aget-byte v2, p2, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_17

    move v2, v4

    .line 360
    goto :goto_a

    .line 356
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 364
    :cond_1a
    const/4 v2, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forWrapping"
    .parameter "param"

    .prologue
    const/16 v3, 0x8

    .line 65
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 66
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 68
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_36

    .line 70
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 72
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v1, :cond_35

    .line 77
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 79
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 81
    .local v0, sr:Ljava/security/SecureRandom;
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 83
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 105
    .end local v0           #sr:Ljava/security/SecureRandom;
    :cond_35
    return-void

    .line 86
    .restart local p2
    :cond_36
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_35

    .line 88
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 89
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 90
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 92
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v1, :cond_65

    .line 94
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v1, v1

    if-eq v1, v3, :cond_35

    .line 96
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV is not 8 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You should not supply an IV for unwrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unwrap([BII)[B
    .registers 22
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    move v14, v0

    if-eqz v14, :cond_f

    .line 213
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Not set for unwrapping"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 216
    :cond_f
    if-nez p1, :cond_19

    .line 218
    new-instance v14, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v15, "Null pointer as ciphertext"

    invoke-direct {v14, v15}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 221
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    rem-int v14, p3, v14

    if-eqz v14, :cond_49

    .line 223
    new-instance v14, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ciphertext not multiple of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 245
    :cond_49
    new-instance v12, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v14, v0

    sget-object v15, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v12, v14, v15}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 247
    .local v12, param2:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 249
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v8, v0

    .line 251
    .local v8, TEMP3:[B
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v8

    move v3, v14

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    const/4 v11, 0x0

    .local v11, i:I
    :goto_70
    array-length v14, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v15

    div-int/2addr v14, v15

    if-ge v11, v14, :cond_93

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    mul-int v10, v11, v14

    .line 257
    .local v10, currentBytePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14, v8, v10, v8, v10}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 253
    add-int/lit8 v11, v11, 0x1

    goto :goto_70

    .line 261
    .end local v10           #currentBytePos:I
    :cond_93
    array-length v14, v8

    new-array v7, v14, [B

    .line 263
    .local v7, TEMP2:[B
    const/4 v11, 0x0

    :goto_97
    array-length v14, v8

    if-ge v11, v14, :cond_a5

    .line 265
    array-length v14, v8

    add-int/lit8 v15, v11, 0x1

    sub-int/2addr v14, v15

    aget-byte v14, v8, v14

    aput-byte v14, v7, v11

    .line 263
    add-int/lit8 v11, v11, 0x1

    goto :goto_97

    .line 269
    :cond_a5
    const/16 v14, 0x8

    new-array v14, v14, [B

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 271
    array-length v14, v7

    const/16 v15, 0x8

    sub-int/2addr v14, v15

    new-array v6, v14, [B

    .line 273
    .local v6, TEMP1:[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x8

    move-object v0, v7

    move v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    const/16 v14, 0x8

    const/4 v15, 0x0

    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x8

    sub-int v16, v16, v17

    move-object v0, v7

    move v1, v14

    move-object v2, v6

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    new-instance v14, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 282
    array-length v14, v6

    new-array v9, v14, [B

    .line 284
    .local v9, WKCKS:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v6

    move v1, v14

    move-object v2, v9

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    const/4 v11, 0x0

    :goto_113
    array-length v14, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v15

    div-int/2addr v14, v15

    if-ge v11, v14, :cond_136

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    mul-int v10, v11, v14

    .line 290
    .restart local v10       #currentBytePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14, v9, v10, v9, v10}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 286
    add-int/lit8 v11, v11, 0x1

    goto :goto_113

    .line 295
    .end local v10           #currentBytePos:I
    :cond_136
    array-length v14, v9

    const/16 v15, 0x8

    sub-int/2addr v14, v15

    new-array v13, v14, [B

    .line 296
    .local v13, result:[B
    const/16 v14, 0x8

    new-array v5, v14, [B

    .line 298
    .local v5, CKStoBeVerified:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x8

    sub-int v16, v16, v17

    move-object v0, v9

    move v1, v14

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v14, v9

    const/16 v15, 0x8

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object v0, v9

    move v1, v14

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v14

    if-nez v14, :cond_175

    .line 305
    new-instance v14, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v15, "Checksum inside ciphertext is corrupted"

    invoke-direct {v14, v15}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 310
    :cond_175
    return-object v13
.end method

.method public wrap([BII)[B
    .registers 24
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    move/from16 v16, v0

    if-nez v16, :cond_10

    .line 129
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Not initialized for wrapping"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 132
    :cond_10
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v13, v0

    .line 134
    .local v13, keyToBeWrapped:[B
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v13

    move/from16 v3, v16

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v5

    .line 140
    .local v5, CKS:[B
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v9, v0

    .line 142
    .local v9, WKCKS:[B
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v13

    move/from16 v1, v16

    move-object v2, v9

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    const/16 v16, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v16

    move-object v2, v9

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v6, v0

    .line 149
    .local v6, TEMP1:[B
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v9

    move/from16 v1, v16

    move-object v2, v6

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v17

    div-int v14, v16, v17

    .line 152
    .local v14, noOfBlocks:I
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v17

    rem-int v11, v16, v17

    .line 154
    .local v11, extraBytes:I
    if-eqz v11, :cond_a7

    .line 156
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Not multiple of block length"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 159
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 161
    const/4 v12, 0x0

    .local v12, i:I
    :goto_b9
    if-ge v12, v14, :cond_d9

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v16

    mul-int v10, v12, v16

    .line 165
    .local v10, currentBytePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    move v2, v10

    move-object v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 161
    add-int/lit8 v12, v12, 0x1

    goto :goto_b9

    .line 169
    .end local v10           #currentBytePos:I
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v7, v0

    .line 171
    .local v7, TEMP2:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v7

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v6

    move/from16 v1, v16

    move-object v2, v7

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v8, v0

    .line 177
    .local v8, TEMP3:[B
    const/4 v12, 0x0

    :goto_136
    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_14e

    .line 179
    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    sub-int v16, v16, v17

    aget-byte v16, v7, v16

    aput-byte v16, v8, v12

    .line 177
    add-int/lit8 v12, v12, 0x1

    goto :goto_136

    .line 185
    :cond_14e
    new-instance v15, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object/from16 v16, v0

    sget-object v17, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct/range {v15 .. v17}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 187
    .local v15, param2:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 189
    const/4 v12, 0x0

    :goto_16c
    add-int/lit8 v16, v14, 0x1

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_191

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v16

    mul-int v10, v12, v16

    .line 193
    .restart local v10       #currentBytePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    move v2, v10

    move-object v3, v8

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 189
    add-int/lit8 v12, v12, 0x1

    goto :goto_16c

    .line 196
    .end local v10           #currentBytePos:I
    :cond_191
    return-object v8
.end method
