.class public Lorg/bouncycastle/jce/provider/JCEIESCipher;
.super Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEIESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JCEIESCipher$IES;,
        Lorg/bouncycastle/jce/provider/JCEIESCipher$BrokenIES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/bouncycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/IESEngine;)V
    .registers 5
    .parameter "engine"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 40
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 41
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    .line 54
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lorg/bouncycastle/crypto/engines/IESEngine;

    .line 55
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 11
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
    .line 331
    if-eqz p3, :cond_7

    .line 333
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 338
    :cond_7
    :try_start_7
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 340
    .local v0, buf:[B
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 342
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lorg/bouncycastle/crypto/engines/IESEngine;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v0

    .line 344
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    array-length v2, v0
    :try_end_20
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_7 .. :try_end_20} :catch_21

    return v2

    .line 348
    .end local v0           #buf:[B
    :catch_21
    move-exception v2

    move-object v1, v2

    .line 350
    .local v1, e:Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineDoFinal([BII)[B
    .registers 9
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
    .line 304
    if-eqz p3, :cond_7

    .line 306
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 311
    :cond_7
    :try_start_7
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 313
    .local v0, buf:[B
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 315
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lorg/bouncycastle/crypto/engines/IESEngine;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_19
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_7 .. :try_end_19} :catch_1b

    move-result-object v2

    return-object v2

    .line 317
    .end local v0           #buf:[B
    :catch_1b
    move-exception v2

    move-object v1, v2

    .line 319
    .local v1, e:Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 7
    .parameter "key"

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/interfaces/IESKey;

    move-object v1, v0

    .line 72
    .local v1, ieKey:Lorg/bouncycastle/jce/interfaces/IESKey;
    invoke-interface {v1}, Lorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    instance-of v3, v3, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v3, :cond_1b

    .line 74
    invoke-interface {v1}, Lorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 76
    .local v2, k:Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    return v3

    .line 87
    .end local v2           #k:Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_1b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "not an IE key!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineGetOutputSize(I)I
    .registers 4
    .parameter "inputLen"

    .prologue
    .line 93
    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 95
    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x14

    .line 99
    :goto_13
    return v0

    .line 97
    :cond_14
    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    .line 99
    :cond_1e
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    goto :goto_13

    .line 103
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .prologue
    .line 109
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_19

    .line 111
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-eqz v2, :cond_19

    .line 113
    const-string v1, "IES"

    .line 117
    .local v1, name:Ljava/lang/String;
    :try_start_a
    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 118
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1c

    .line 127
    .end local v1           #name:Ljava/lang/String;
    :cond_19
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v2

    .line 120
    .restart local v1       #name:Ljava/lang/String;
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 122
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
    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_35

    .line 233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_11

    .line 237
    :try_start_9
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v2

    .line 246
    :cond_11
    if-nez v2, :cond_35

    .line 248
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

    .line 240
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 233
    .local v0, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 252
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_35
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 253
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 254
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 266
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_c} :catch_d

    .line 267
    return-void

    .line 269
    :catch_d
    move-exception v0

    .line 275
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handle null parameter spec in IES"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 16
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
    const/16 v8, 0x10

    const/4 v10, 0x1

    .line 150
    instance-of v7, p2, Lorg/bouncycastle/jce/interfaces/IESKey;

    if-nez v7, :cond_f

    .line 152
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "must be passed IE key"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    :cond_f
    if-nez p3, :cond_6f

    if-eq p1, v10, :cond_16

    const/4 v7, 0x3

    if-ne p1, v7, :cond_6f

    .line 161
    :cond_16
    new-array v1, v8, [B

    .line 162
    .local v1, d:[B
    new-array v2, v8, [B

    .line 164
    .local v2, e:[B
    if-nez p4, :cond_21

    .line 166
    new-instance p4, Ljava/security/SecureRandom;

    .end local p4
    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 169
    .restart local p4
    :cond_21
    invoke-virtual {p4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 170
    invoke-virtual {p4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 172
    new-instance p3, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .end local p3
    const/16 v7, 0x80

    invoke-direct {p3, v1, v2, v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    .line 179
    .end local v1           #d:[B
    .end local v2           #e:[B
    .restart local p3
    :cond_2e
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/jce/interfaces/IESKey;

    move-object v3, v0

    .line 193
    .local v3, ieKey:Lorg/bouncycastle/jce/interfaces/IESKey;
    invoke-interface {v3}, Lorg/bouncycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jce/provider/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    .line 194
    .local v6, pubKey:Lorg/bouncycastle/crypto/CipherParameters;
    invoke-interface {v3}, Lorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jce/provider/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    .line 199
    .local v5, privKey:Lorg/bouncycastle/crypto/CipherParameters;
    check-cast p3, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .end local p3
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 201
    new-instance v4, Lorg/bouncycastle/crypto/params/IESParameters;

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v8}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v9}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v9

    invoke-direct {v4, v7, v8, v9}, Lorg/bouncycastle/crypto/params/IESParameters;-><init>([B[BI)V

    .line 203
    .local v4, p:Lorg/bouncycastle/crypto/params/IESParameters;
    iput p1, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    .line 205
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 207
    packed-switch p1, :pswitch_data_88

    .line 218
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "eeek!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    :goto_6e
    return-void

    .line 174
    .end local v3           #ieKey:Lorg/bouncycastle/jce/interfaces/IESKey;
    .end local v4           #p:Lorg/bouncycastle/crypto/params/IESParameters;
    .end local v5           #privKey:Lorg/bouncycastle/crypto/CipherParameters;
    .end local v6           #pubKey:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_6f
    instance-of v7, p3, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-nez v7, :cond_2e

    .line 176
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "must be passed IES parameters"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 211
    .end local p3
    .restart local v3       #ieKey:Lorg/bouncycastle/jce/interfaces/IESKey;
    .restart local v4       #p:Lorg/bouncycastle/crypto/params/IESParameters;
    .restart local v5       #privKey:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v6       #pubKey:Lorg/bouncycastle/crypto/CipherParameters;
    :pswitch_7b
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v7, v10, v5, v6, v4}, Lorg/bouncycastle/crypto/engines/IESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_6e

    .line 215
    :pswitch_81
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lorg/bouncycastle/crypto/engines/IESEngine;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5, v6, v4}, Lorg/bouncycastle/crypto/engines/IESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_6e

    .line 207
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_81
        :pswitch_7b
        :pswitch_81
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 133
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
    .line 140
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unavailable with RSA."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .registers 7
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"

    .prologue
    .line 294
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 5
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method
