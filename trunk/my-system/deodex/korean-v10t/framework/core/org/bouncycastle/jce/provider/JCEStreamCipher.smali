.class public Lorg/bouncycastle/jce/provider/JCEStreamCipher;
.super Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEStreamCipher.java"

# interfaces
.implements Lorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JCEStreamCipher$DESede_OFB8;,
        Lorg/bouncycastle/jce/provider/JCEStreamCipher$DES_OFB8;,
        Lorg/bouncycastle/jce/provider/JCEStreamCipher$DESede_CFB8;,
        Lorg/bouncycastle/jce/provider/JCEStreamCipher$DES_CFB8;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/bouncycastle/crypto/StreamCipher;

.field private ivLength:I

.field private ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 8
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 57
    iput v3, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 59
    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 60
    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 72
    iput p2, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 74
    new-instance v0, Lorg/bouncycastle/crypto/StreamBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 75
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/StreamCipher;)V
    .registers 7
    .parameter "engine"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 57
    iput v3, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 59
    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 60
    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 66
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"

    .prologue
    .line 362
    if-eqz p3, :cond_c

    .line 364
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 367
    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/StreamCipher;->reset()V

    .line 369
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 341
    if-eqz p3, :cond_d

    .line 343
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineUpdate([BII)[B

    move-result-object v0

    .line 345
    .local v0, out:[B
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/StreamCipher;->reset()V

    move-object v1, v0

    .line 352
    .end local v0           #out:[B
    :goto_c
    return-object v1

    .line 350
    :cond_d
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/StreamCipher;->reset()V

    .line 352
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_c
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

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
    .line 90
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 2
    .parameter "inputLen"

    .prologue
    .line 96
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .prologue
    .line 101
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_1b

    .line 103
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_1b

    .line 107
    :try_start_8
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 108
    .local v1, engineParams:Ljava/security/AlgorithmParameters;
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_17

    move-object v2, v1

    .line 119
    .end local v1           #engineParams:Ljava/security/AlgorithmParameters;
    :goto_16
    return-object v2

    .line 112
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_16

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1b
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    goto :goto_16
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
    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_35

    .line 265
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_11

    .line 269
    :try_start_9
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v2

    .line 278
    :cond_11
    if-nez v2, :cond_35

    .line 280
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

    .line 272
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 265
    .local v0, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_35
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 285
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 286
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
    .line 296
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 302
    return-void

    .line 298
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 300
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 15
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
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 156
    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 157
    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 159
    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 164
    instance-of v6, p2, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_2f

    .line 166
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key for algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not suitable for symmetric enryption."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_2f
    instance-of v6, p2, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v6, :cond_c1

    .line 171
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v3, v0

    .line 173
    .local v3, k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    if-eqz v6, :cond_9f

    .line 175
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 182
    :goto_47
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    if-eqz v6, :cond_a6

    .line 184
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 185
    .local v4, param:Lorg/bouncycastle/crypto/CipherParameters;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 197
    .end local p3
    :goto_60
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_6c

    .line 199
    move-object v0, v4

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 216
    .end local v3           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_6c
    :goto_6c
    iget v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    if-eqz v6, :cond_94

    instance-of v6, v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v6, :cond_94

    .line 218
    move-object v2, p4

    .line 220
    .local v2, ivRandom:Ljava/security/SecureRandom;
    if-nez v2, :cond_7c

    .line 222
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 225
    .restart local v2       #ivRandom:Ljava/security/SecureRandom;
    :cond_7c
    if-eq p1, v9, :cond_81

    const/4 v6, 0x3

    if-ne p1, v6, :cond_f4

    .line 227
    :cond_81
    iget v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    new-array v1, v6, [B

    .line 229
    .local v1, iv:[B
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 230
    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v5, v4, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 231
    .end local v4           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .local v5, param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v5

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v4, v5

    .line 239
    .end local v1           #iv:[B
    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    .end local v5           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v4       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_94
    packed-switch p1, :pswitch_data_10a

    .line 250
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "eeek!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    :goto_9e
    return-void

    .line 179
    .end local v4           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v3       #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p3
    :cond_9f
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_47

    .line 187
    :cond_a6
    instance-of v6, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v6, :cond_b9

    .line 189
    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p3, v6}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 190
    .restart local v4       #param:Lorg/bouncycastle/crypto/CipherParameters;
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    .end local p3
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_60

    .line 194
    .end local v4           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_b9
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "PBE requires PBE parameters to be set."

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 202
    .end local v3           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_c1
    if-nez p3, :cond_cd

    .line 204
    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v4       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_6c

    .line 206
    .end local v4           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_cd
    instance-of v6, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_ec

    .line 208
    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .end local p3
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 209
    .restart local v4       #param:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v4

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    iput-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_6c

    .line 213
    .end local v4           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_ec
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "unknown parameter type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 235
    .end local p3
    .restart local v2       #ivRandom:Ljava/security/SecureRandom;
    .restart local v4       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_f4
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "no IV set when one expected"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 243
    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    :pswitch_fc
    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v6, v9, v4}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_9e

    .line 247
    :pswitch_102
    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_9e

    .line 239
    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_102
        :pswitch_fc
        :pswitch_102
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 128
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_21
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 143
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_27
    return-void
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
    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V
    :try_end_a
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_a} :catch_b

    .line 328
    return p3

    .line 330
    :catch_b
    move-exception v0

    move-object v6, v0

    .line 332
    .local v6, e:Lorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 10
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 309
    new-array v4, p3, [B

    .line 311
    .local v4, out:[B
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 313
    return-object v4
.end method
