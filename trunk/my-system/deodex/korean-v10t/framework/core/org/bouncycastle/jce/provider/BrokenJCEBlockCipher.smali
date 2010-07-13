.class public Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.super Ljava/lang/Object;
.source "BrokenJCEBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/jce/provider/BrokenPBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES2Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithMD5AndDES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeHash:I

.field private pbeIvSize:I

.field private pbeKeySize:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 8
    .parameter "engine"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 64
    iput v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    .line 65
    iput v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    .line 69
    iput v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 76
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 77
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IIII)V
    .registers 12
    .parameter "engine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "pbeKeySize"
    .parameter "pbeIvSize"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 64
    iput v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    .line 65
    iput v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    .line 69
    iput v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 86
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 88
    iput p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    .line 89
    iput p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    .line 90
    iput p4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    .line 91
    iput p5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    .line 92
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 14
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v7, 0x0

    .line 452
    .local v7, len:I
    if-eqz p3, :cond_e

    .line 454
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 459
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    add-int v1, p5, v7

    invoke-virtual {v0, p4, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_15
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_e .. :try_end_15} :catch_18
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_e .. :try_end_15} :catch_24

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 461
    :catch_18
    move-exception v0

    move-object v6, v0

    .line 463
    .local v6, e:Lorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    .end local v6           #e:Lorg/bouncycastle/crypto/DataLengthException;
    :catch_24
    move-exception v0

    move-object v6, v0

    .line 467
    .local v6, e:Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .registers 13
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 414
    const/4 v7, 0x0

    .line 415
    .local v7, len:I
    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 417
    .local v4, tmp:[B
    if-eqz p3, :cond_13

    .line 419
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 424
    :cond_13
    :try_start_13
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, v4, v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_18
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_13 .. :try_end_18} :catch_20
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_13 .. :try_end_18} :catch_2c

    move-result v0

    add-int/2addr v7, v0

    .line 435
    new-array v8, v7, [B

    .line 437
    .local v8, out:[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    return-object v8

    .line 426
    .end local v8           #out:[B
    :catch_20
    move-exception v0

    move-object v6, v0

    .line 428
    .local v6, e:Lorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    .end local v6           #e:Lorg/bouncycastle/crypto/DataLengthException;
    :catch_2c
    move-exception v0

    move-object v6, v0

    .line 432
    .local v6, e:Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 107
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .parameter "inputLen"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .prologue
    const/16 v3, 0x2f

    .line 118
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_36

    .line 120
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_36

    .line 122
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_23

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_23
    :try_start_23
    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 132
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_39

    .line 141
    .end local v1           #name:Ljava/lang/String;
    :cond_36
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v2

    .line 134
    .restart local v1       #name:Ljava/lang/String;
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 136
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_35

    .line 339
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_11

    .line 343
    :try_start_9
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v2

    .line 352
    :cond_11
    if-nez v2, :cond_35

    .line 354
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 339
    .local v0, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 358
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_35
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 359
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 360
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 376
    return-void

    .line 372
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 374
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 19
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 234
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move v2, v0

    if-eqz v2, :cond_64

    .line 236
    move-object/from16 v0, p2

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v2, v0

    iget v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iget v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    iget v8, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v10

    .line 239
    .local v10, param:Lorg/bouncycastle/crypto/CipherParameters;
    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    if-eqz v2, :cond_2e

    .line 241
    move-object v0, v10

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v11, v0

    iput-object v11, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 292
    .end local p3
    :cond_2e
    :goto_2e
    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz v2, :cond_59

    instance-of v2, v10, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v2, :cond_59

    .line 294
    if-nez p4, :cond_3d

    .line 296
    new-instance p4, Ljava/security/SecureRandom;

    .end local p4
    invoke-direct/range {p4 .. p4}, Ljava/security/SecureRandom;-><init>()V

    .line 299
    .restart local p4
    :cond_3d
    const/4 v2, 0x1

    if-eq p1, v2, :cond_43

    const/4 v2, 0x3

    if-ne p1, v2, :cond_124

    .line 301
    :cond_43
    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-array v9, v2, [B

    .line 303
    .local v9, iv:[B
    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 304
    new-instance v11, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v11, v10, v9}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 305
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .local v11, param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v12, v0

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v11

    .line 313
    .end local v9           #iv:[B
    .end local v11           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_59
    packed-switch p1, :pswitch_data_13c

    .line 324
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "eeek!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    :goto_63
    return-void

    .line 244
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_64
    if-nez p3, :cond_70

    .line 246
    new-instance v10, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_2e

    .line 248
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_70
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/IvParameterSpec;

    move v2, v0

    if-eqz v2, :cond_a0

    .line 250
    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz v2, :cond_96

    .line 252
    new-instance v10, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v10, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 253
    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v10

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v11, v0

    iput-object v11, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_2e

    .line 257
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_96
    new-instance v10, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_2e

    .line 260
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_a0
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/RC2ParameterSpec;

    move v2, v0

    if-eqz v2, :cond_d7

    .line 262
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    move-object v12, v0

    .line 264
    .local v12, rc2Param:Ljavax/crypto/spec/RC2ParameterSpec;
    new-instance v10, Lorg/bouncycastle/crypto/params/RC2Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v3

    invoke-direct {v10, v2, v3}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 266
    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v12}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v2

    if-eqz v2, :cond_2e

    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz v2, :cond_2e

    .line 268
    new-instance v11, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v12}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v11, v10, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 269
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v11       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v12, v0

    .end local v12           #rc2Param:Ljavax/crypto/spec/RC2ParameterSpec;
    iput-object v12, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    :goto_d4
    move-object v10, v11

    .end local v11           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2e

    .line 272
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_d7
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/RC5ParameterSpec;

    move v2, v0

    if-eqz v2, :cond_11c

    .line 274
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    move-object v13, v0

    .line 276
    .local v13, rc5Param:Ljavax/crypto/spec/RC5ParameterSpec;
    new-instance v10, Lorg/bouncycastle/crypto/params/RC5Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v3

    invoke-direct {v10, v2, v3}, Lorg/bouncycastle/crypto/params/RC5Parameters;-><init>([BI)V

    .line 277
    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v13}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_102

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can only accept RC5 word size 32 (at the moment...)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_102
    invoke-virtual {v13}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v2

    if-eqz v2, :cond_2e

    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz v2, :cond_2e

    .line 283
    new-instance v11, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v13}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v11, v10, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 284
    .end local v10           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v11       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v12, v0

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_d4

    .line 289
    .end local v11           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .end local v13           #rc5Param:Ljavax/crypto/spec/RC5ParameterSpec;
    .restart local p3
    :cond_11c
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    .end local p3
    .restart local v10       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_124
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "no IV set when one expected"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :pswitch_12c
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v10}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_63

    .line 321
    :pswitch_134
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_63

    .line 313
    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_12c
        :pswitch_134
        :pswitch_12c
        :pswitch_134
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 8
    .parameter "mode"

    .prologue
    const/4 v3, 0x3

    .line 147
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, modeName:Ljava/lang/String;
    const-string v2, "ECB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 152
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 196
    :goto_1d
    return-void

    .line 154
    :cond_1e
    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 156
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 157
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_1d

    .line 160
    :cond_45
    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 162
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_7a

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, wordSize:I
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_1d

    .line 172
    .end local v1           #wordSize:I
    :cond_7a
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_1d

    .line 176
    :cond_95
    const-string v2, "CFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 178
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_cb

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .restart local v1       #wordSize:I
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 188
    .end local v1           #wordSize:I
    :cond_cb
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 194
    :cond_e7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t support mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, paddingName:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 206
    new-instance v1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 220
    :goto_19
    return-void

    .line 208
    :cond_1a
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 210
    :cond_32
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_19

    .line 212
    :cond_40
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 214
    new-instance v1, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_19

    .line 218
    :cond_56
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 12
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const-string v7, "Unknown key type "

    .line 497
    const/4 v2, 0x0

    .line 500
    .local v2, encoded:[B
    const/4 v4, 0x0

    :try_start_4
    array-length v5, p1

    invoke-virtual {p0, p1, v4, v5}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B
    :try_end_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_8} :catch_12
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_8} :catch_1e

    move-result-object v2

    .line 511
    const/4 v4, 0x3

    if-ne p3, v4, :cond_2a

    .line 513
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 527
    :goto_11
    return-object v4

    .line 502
    :catch_12
    move-exception v4

    move-object v0, v4

    .line 504
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    .end local v0           #e:Ljavax/crypto/BadPaddingException;
    :catch_1e
    move-exception v4

    move-object v1, v4

    .line 508
    .local v1, e2:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 519
    .end local v1           #e2:Ljavax/crypto/IllegalBlockSizeException;
    :cond_2a
    :try_start_2a
    const-string v4, "BC"

    invoke-static {p2, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 521
    .local v3, kf:Ljava/security/KeyFactory;
    const/4 v4, 0x1

    if-ne p3, v4, :cond_3d

    .line 523
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    goto :goto_11

    .line 525
    :cond_3d
    const/4 v4, 0x2

    if-ne p3, v4, :cond_a7

    .line 527
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_48
    .catch Ljava/security/NoSuchProviderException; {:try_start_2a .. :try_end_48} :catch_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_48} :catch_69
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2a .. :try_end_48} :catch_88

    move-result-object v4

    goto :goto_11

    .line 530
    .end local v3           #kf:Ljava/security/KeyFactory;
    :catch_4a
    move-exception v4

    move-object v0, v4

    .line 532
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown key type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 534
    .end local v0           #e:Ljava/security/NoSuchProviderException;
    :catch_69
    move-exception v4

    move-object v0, v4

    .line 536
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown key type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_88
    move-exception v4

    move-object v1, v4

    .line 540
    .local v1, e2:Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown key type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 543
    .end local v1           #e2:Ljava/security/spec/InvalidKeySpecException;
    .restart local v3       #kf:Ljava/security/KeyFactory;
    :cond_a7
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown key type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineUpdate([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"

    .prologue
    .line 405
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 16
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 383
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v11

    .line 385
    .local v11, length:I
    if-lez v11, :cond_15

    .line 387
    new-array v4, v11, [B

    .line 389
    .local v4, out:[B
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-object v0, v4

    .line 395
    .end local v4           #out:[B
    :goto_14
    return-object v0

    .line 393
    :cond_15
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    .line 395
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 476
    .local v1, encoded:[B
    if-nez v1, :cond_e

    .line 478
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_e
    const/4 v2, 0x0

    :try_start_f
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B
    :try_end_13
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    .line 485
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 487
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
