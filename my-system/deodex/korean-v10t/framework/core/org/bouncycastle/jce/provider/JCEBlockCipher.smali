.class public Lorg/bouncycastle/jce/provider/JCEBlockCipher;
.super Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd40BitRC2;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithAESCBC;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES2Key;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndDES;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndRC2;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$AESOFB;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$AESCFB;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$AESCBC;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$AES;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$DESedeCBC;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$DESede;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$DESCBC;,
        Lorg/bouncycastle/jce/provider/JCEBlockCipher$DES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

.field private cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private ivLength:I

.field private ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 8
    .parameter "engine"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 75
    iput v4, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 77
    iput-boolean v5, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 79
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 80
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 89
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 90
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 9
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 75
    iput v4, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 77
    iput-boolean v5, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 79
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 80
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 98
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 99
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 100
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 15
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 674
    const/4 v7, 0x0

    .line 677
    .local v7, len:I
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v8

    .line 679
    .local v8, outputLen:I
    add-int v0, v8, p5

    array-length v1, p4

    if-le v0, v1, :cond_2b

    .line 680
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_2b
    if-eqz p3, :cond_38

    .line 686
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 691
    :cond_38
    :try_start_38
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    add-int v1, p5, v7

    invoke-virtual {v0, p4, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_3f
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_38 .. :try_end_3f} :catch_42
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_38 .. :try_end_3f} :catch_4e

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 693
    :catch_42
    move-exception v0

    move-object v6, v0

    .line 695
    .local v6, e:Lorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    .end local v6           #e:Lorg/bouncycastle/crypto/DataLengthException;
    :catch_4e
    move-exception v0

    move-object v6, v0

    .line 699
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

    .line 635
    const/4 v7, 0x0

    .line 636
    .local v7, len:I
    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 638
    .local v4, tmp:[B
    if-eqz p3, :cond_13

    .line 640
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 645
    :cond_13
    :try_start_13
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, v4, v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_18
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_13 .. :try_end_18} :catch_20
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_13 .. :try_end_18} :catch_2c

    move-result v0

    add-int/2addr v7, v0

    .line 656
    new-array v8, v7, [B

    .line 658
    .local v8, out:[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    return-object v8

    .line 647
    .end local v8           #out:[B
    :catch_20
    move-exception v0

    move-object v6, v0

    .line 649
    .local v6, e:Lorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    .end local v6           #e:Lorg/bouncycastle/crypto/DataLengthException;
    :catch_2c
    move-exception v0

    move-object v6, v0

    .line 653
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
    .line 104
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

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
    .line 115
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .parameter "inputLen"

    .prologue
    .line 121
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .prologue
    const/16 v3, 0x2f

    const-string v2, "BC"

    .line 126
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_1d

    .line 128
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_24

    .line 132
    :try_start_c
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 133
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_20

    .line 161
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    :goto_1f
    return-object v2

    .line 135
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1f

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :cond_24
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_1d

    .line 142
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_41

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_41
    :try_start_41
    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 152
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_55

    goto :goto_1d

    .line 154
    :catch_55
    move-exception v2

    move-object v0, v2

    .line 156
    .restart local v0       #e:Ljava/lang/Exception;
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
    .line 533
    const/4 v2, 0x0

    .line 535
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_35

    .line 537
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_11

    .line 541
    :try_start_9
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v2

    .line 550
    :cond_11
    if-nez v2, :cond_35

    .line 552
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

    .line 544
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 537
    .local v0, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 556
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_35
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 558
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 559
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
    .line 569
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 575
    return-void

    .line 571
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 573
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 20
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
    .line 328
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 329
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 330
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 335
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    move v12, v0

    if-nez v12, :cond_33

    .line 337
    new-instance v12, Ljava/security/InvalidKeyException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Key for algorithm "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not suitable for symmetric enryption."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 343
    :cond_33
    if-nez p3, :cond_4b

    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RC5-64"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 345
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 351
    :cond_4b
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move v12, v0

    if-eqz v12, :cond_12b

    .line 353
    move-object/from16 v0, p2

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v6, v0

    .line 355
    .local v6, k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v12

    if-eqz v12, :cond_f9

    .line 357
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 364
    :goto_67
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v12

    if-eqz v12, :cond_101

    .line 366
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .line 367
    .local v8, param:Lorg/bouncycastle/crypto/CipherParameters;
    new-instance v12, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v13

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v14

    invoke-direct {v12, v13, v14}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 379
    :goto_80
    instance-of v12, v8, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v12, :cond_8a

    .line 381
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v9, v0

    iput-object v9, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 476
    .end local v6           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    .end local p3
    :cond_8a
    :goto_8a
    iget v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v12, :cond_2d5

    instance-of v12, v8, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v12, :cond_2d5

    .line 478
    move-object/from16 v5, p4

    .line 480
    .local v5, ivRandom:Ljava/security/SecureRandom;
    if-nez v5, :cond_9b

    .line 482
    new-instance v5, Ljava/security/SecureRandom;

    .end local v5           #ivRandom:Ljava/security/SecureRandom;
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 485
    .restart local v5       #ivRandom:Ljava/security/SecureRandom;
    :cond_9b
    const/4 v12, 0x1

    move/from16 v0, p1

    move v1, v12

    if-eq v0, v1, :cond_a7

    const/4 v12, 0x3

    move/from16 v0, p1

    move v1, v12

    if-ne v0, v1, :cond_2aa

    .line 487
    :cond_a7
    iget v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-array v4, v12, [B

    .line 489
    .local v4, iv:[B
    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 490
    new-instance v9, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v9, v8, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 491
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .local v9, param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v9

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v0

    iput-object v10, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 499
    .end local v4           #iv:[B
    .end local v5           #ivRandom:Ljava/security/SecureRandom;
    :goto_b9
    if-eqz p4, :cond_2d2

    iget-boolean v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    if-eqz v12, :cond_2d2

    .line 501
    new-instance v8, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 506
    .end local v9           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :goto_c8
    packed-switch p1, :pswitch_data_2d8

    .line 517
    :try_start_cb
    new-instance v12, Ljava/security/InvalidParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unknown opmode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " passed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ed} :catch_ed

    .line 520
    :catch_ed
    move-exception v12

    move-object v3, v12

    .line 522
    .local v3, e:Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 361
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v6       #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p3
    :cond_f9
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto/16 :goto_67

    .line 369
    :cond_101
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/PBEParameterSpec;

    move v12, v0

    if-eqz v12, :cond_123

    .line 371
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v3, v0

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 372
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v12

    invoke-interface {v12}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    move-object v0, v6

    move-object/from16 v1, p3

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_80

    .line 376
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_123
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "PBE requires PBE parameters to be set."

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 384
    .end local v6           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_12b
    if-nez p3, :cond_138

    .line 386
    new-instance v8, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_8a

    .line 388
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_138
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/IvParameterSpec;

    move v12, v0

    if-eqz v12, :cond_1ad

    .line 390
    iget v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v12, :cond_18c

    .line 392
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v7, v0

    .line 394
    .local v7, p:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v12

    array-length v12, v12

    iget v13, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eq v12, v13, :cond_172

    .line 396
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IV must be "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes long."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 399
    :cond_172
    new-instance v8, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v12, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v13

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 400
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v9, v0

    iput-object v9, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_8a

    .line 404
    .end local v7           #p:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_18c
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v12, :cond_1a2

    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v13, "ECB"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a2

    .line 406
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "ECB mode does not use an IV"

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 409
    :cond_1a2
    new-instance v8, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_8a

    .line 427
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_1ad
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/RC2ParameterSpec;

    move v12, v0

    if-eqz v12, :cond_1e4

    .line 429
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    move-object v10, v0

    .line 431
    .local v10, rc2Param:Ljavax/crypto/spec/RC2ParameterSpec;
    new-instance v8, Lorg/bouncycastle/crypto/params/RC2Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v13

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 433
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v10}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v12

    if-eqz v12, :cond_8a

    iget v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v12, :cond_8a

    .line 435
    new-instance v9, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v9, v8, v12}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 436
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v9       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v9

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v0

    .end local v10           #rc2Param:Ljavax/crypto/spec/RC2ParameterSpec;
    iput-object v10, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    :goto_1e1
    move-object v8, v9

    .end local v9           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_8a

    .line 439
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_1e4
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/RC5ParameterSpec;

    move v12, v0

    if-eqz v12, :cond_2a2

    .line 441
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    move-object v11, v0

    .line 443
    .local v11, rc5Param:Ljavax/crypto/spec/RC5ParameterSpec;
    new-instance v8, Lorg/bouncycastle/crypto/params/RC5Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v13

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/crypto/params/RC5Parameters;-><init>([BI)V

    .line 444
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RC5"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27f

    .line 446
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RC5-32"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_246

    .line 448
    invoke-virtual {v11}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v12

    const/16 v13, 0x20

    if-eq v12, v13, :cond_287

    .line 450
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RC5 already set up for a word size of 32 not "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 453
    :cond_246
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RC5-64"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_287

    .line 455
    invoke-virtual {v11}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v12

    const/16 v13, 0x40

    if-eq v12, v13, :cond_287

    .line 457
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RC5 already set up for a word size of 64 not "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 463
    :cond_27f
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "RC5 parameters passed to a cipher that is not RC5."

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 465
    :cond_287
    invoke-virtual {v11}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v12

    if-eqz v12, :cond_8a

    iget v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v12, :cond_8a

    .line 467
    new-instance v9, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v11}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v9, v8, v12}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 468
    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v9       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v9

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v0

    iput-object v10, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_1e1

    .line 473
    .end local v9           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .end local v11           #rc5Param:Ljavax/crypto/spec/RC5ParameterSpec;
    .restart local p3
    :cond_2a2
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "unknown parameter type."

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 493
    .end local p3
    .restart local v5       #ivRandom:Ljava/security/SecureRandom;
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_2aa
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v12

    invoke-interface {v12}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PGPCFB"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_2d5

    .line 495
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "no IV set when one expected"

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 510
    .end local v5           #ivRandom:Ljava/security/SecureRandom;
    :pswitch_2c4
    :try_start_2c4
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v8}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 524
    :goto_2ca
    return-void

    .line 514
    :pswitch_2cb
    iget-object v12, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2d1} :catch_ed

    goto :goto_2ca

    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v9       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_2d2
    move-object v8, v9

    .end local v9           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_c8

    :cond_2d5
    move-object v9, v8

    .end local v8           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v9       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_b9

    .line 506
    :pswitch_data_2d8
    .packed-switch 0x1
        :pswitch_2c4
        :pswitch_2cb
        :pswitch_2c4
        :pswitch_2cb
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 7
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 168
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "ECB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 173
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 267
    :goto_1d
    return-void

    .line 175
    :cond_1e
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 177
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 178
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_1d

    .line 181
    :cond_3f
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 183
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 184
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_72

    .line 186
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, wordSize:I
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_1d

    .line 193
    .end local v0           #wordSize:I
    :cond_72
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_1d

    .line 197
    :cond_89
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 199
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 200
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_bd

    .line 202
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 204
    .restart local v0       #wordSize:I
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 209
    .end local v0           #wordSize:I
    :cond_bd
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 236
    :cond_d5
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "SIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 238
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 239
    iget v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_f5

    .line 241
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_f5
    new-instance v1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 246
    :cond_105
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 248
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 249
    new-instance v1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 252
    :cond_127
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GOFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 254
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 255
    new-instance v1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 258
    :cond_149
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 260
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 261
    new-instance v1, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_1d

    .line 265
    :cond_16b
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
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
    const/4 v2, 0x0

    .line 273
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, paddingName:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 277
    iput-boolean v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 279
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    instance-of v1, v1, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;

    if-nez v1, :cond_22

    .line 281
    new-instance v1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 317
    :cond_22
    :goto_22
    return-void

    .line 284
    :cond_23
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 286
    :cond_33
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_22

    .line 288
    :cond_41
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 290
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_22

    .line 292
    :cond_5c
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 294
    :cond_6c
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_22

    .line 296
    :cond_7f
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 298
    :cond_8f
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_22

    .line 300
    :cond_a2
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 302
    :cond_b2
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_22

    .line 304
    :cond_c6
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 306
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_22

    .line 308
    :cond_e2
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 310
    iput-boolean v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 311
    new-instance v1, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto/16 :goto_22

    .line 315
    :cond_fb
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

.method protected engineUpdate([BII[BI)I
    .registers 13
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 621
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I
    :try_end_a
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    return v0

    .line 623
    :catch_c
    move-exception v0

    move-object v6, v0

    .line 625
    .local v6, e:Lorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 20
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v14

    .line 584
    .local v14, length:I
    if-lez v14, :cond_32

    .line 586
    new-array v6, v14, [B

    .line 588
    .local v6, out:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v2, v0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v13

    .line 590
    .local v13, len:I
    if-nez v13, :cond_24

    .line 592
    const/4 v2, 0x0

    .line 608
    .end local v6           #out:[B
    .end local v13           #len:I
    :goto_23
    return-object v2

    .line 594
    .restart local v6       #out:[B
    .restart local v13       #len:I
    :cond_24
    array-length v2, v6

    if-eq v13, v2, :cond_30

    .line 596
    new-array v15, v13, [B

    .line 598
    .local v15, tmp:[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v15, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v15

    .line 600
    goto :goto_23

    .end local v15           #tmp:[B
    :cond_30
    move-object v2, v6

    .line 603
    goto :goto_23

    .line 606
    .end local v6           #out:[B
    .end local v13           #len:I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v7, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    .line 608
    const/4 v2, 0x0

    goto :goto_23
.end method
