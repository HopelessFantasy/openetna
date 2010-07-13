.class public abstract Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "WrapCipherSpi.java"

# interfaces
.implements Lorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/WrapCipherSpi$DESEDEWrap;,
        Lorg/bouncycastle/jce/provider/WrapCipherSpi$AESWrap;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field protected pbeHash:I

.field protected pbeIvSize:I

.field protected pbeKeySize:I

.field protected pbeType:I

.field protected wrapEngine:Lorg/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 61
    iput v4, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    .line 62
    iput v3, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    .line 66
    iput-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 68
    iput-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    .line 72
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/Wrapper;)V
    .registers 8
    .parameter "wrapEngine"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 61
    iput v4, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    .line 62
    iput v3, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    .line 66
    iput-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 68
    iput-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    .line 77
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    .line 78
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 7
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
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .registers 5
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
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 93
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .parameter "inputLen"

    .prologue
    .line 99
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
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
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_35

    .line 186
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_11

    .line 190
    :try_start_9
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v2

    .line 199
    :cond_11
    if-nez v2, :cond_35

    .line 201
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

    .line 193
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_35
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 206
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 207
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
    .line 217
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 223
    return-void

    .line 219
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 221
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 12
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
    .line 130
    instance-of v5, p2, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v5, :cond_46

    .line 132
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v2, v0

    .line 134
    .local v2, k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    instance-of v5, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v5, :cond_33

    .line 136
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3, v5}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 152
    .end local v2           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    .local v3, param:Lorg/bouncycastle/crypto/CipherParameters;
    :goto_16
    instance-of v5, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_28

    .line 154
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v1, v0

    .line 155
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 156
    .local v4, paramPlusIV:Lorg/bouncycastle/crypto/CipherParameters;
    move-object v3, v4

    .line 159
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v4           #paramPlusIV:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_28
    packed-switch p1, :pswitch_data_66

    .line 171
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "eeek!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :goto_32
    return-void

    .line 138
    .end local v3           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v2       #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_33
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 140
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_16

    .line 144
    .end local v3           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_3e
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "PBE requires PBE parameters to be set."

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    .end local v2           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_46
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v3       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_16

    .line 162
    :pswitch_50
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_32

    .line 165
    :pswitch_57
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_32

    .line 169
    :pswitch_5e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "engine only valid for wrapping"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5e
        :pswitch_50
        :pswitch_57
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

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
    .line 118
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
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 16
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 303
    const/4 v3, 0x0

    .line 306
    .local v3, encoded:[B
    :try_start_1
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    if-nez v9, :cond_14

    .line 308
    const/4 v9, 0x0

    array-length v10, p1

    invoke-virtual {p0, p1, v9, v10}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B
    :try_end_a
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_a} :catch_1d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_a} :catch_29
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_a} :catch_35

    move-result-object v3

    .line 328
    :goto_b
    const/4 v9, 0x3

    if-ne p3, v9, :cond_41

    .line 330
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v9, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 397
    :goto_13
    return-object v9

    .line 312
    :cond_14
    :try_start_14
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1b
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_14 .. :try_end_1b} :catch_1d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14 .. :try_end_1b} :catch_29
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_1b} :catch_35

    move-result-object v3

    goto :goto_b

    .line 315
    :catch_1d
    move-exception v9

    move-object v1, v9

    .line 317
    .local v1, e:Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 319
    .end local v1           #e:Lorg/bouncycastle/crypto/InvalidCipherTextException;
    :catch_29
    move-exception v9

    move-object v1, v9

    .line 321
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 323
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_35
    move-exception v9

    move-object v2, v9

    .line 325
    .local v2, e2:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 332
    .end local v2           #e2:Ljavax/crypto/IllegalBlockSizeException;
    :cond_41
    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a0

    const/4 v9, 0x2

    if-ne p3, v9, :cond_a0

    .line 338
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 339
    .local v0, bIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v7, 0x0

    .line 343
    .local v7, privKey:Ljava/security/PrivateKey;
    :try_start_52
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 344
    .local v8, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 346
    .local v4, in:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    .line 360
    .local v6, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v9, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 363
    new-instance v7, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    .end local v7           #privKey:Ljava/security/PrivateKey;
    invoke-direct {v7, v4}, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    :goto_72
    move-object v9, v7

    .line 383
    goto :goto_13

    .line 365
    :cond_74
    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 367
    new-instance v7, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    .end local v7           #privKey:Ljava/security/PrivateKey;
    invoke-direct {v7, v4}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_72

    .line 369
    :cond_82
    sget-object v9, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 371
    new-instance v7, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    .end local v7           #privKey:Ljava/security/PrivateKey;
    invoke-direct {v7, v4}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_72

    .line 375
    :cond_90
    new-instance v7, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    .end local v7           #privKey:Ljava/security/PrivateKey;
    invoke-direct {v7, v4}, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_95} :catch_96

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_72

    .line 378
    .end local v4           #in:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v6           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v7           #privKey:Ljava/security/PrivateKey;
    .end local v8           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_96
    move-exception v9

    move-object v1, v9

    .line 380
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "Invalid key encoding."

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 389
    .end local v0           #bIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a0
    :try_start_a0
    const-string v9, "BC"

    invoke-static {p2, v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 391
    .local v5, kf:Ljava/security/KeyFactory;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_b4

    .line 393
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    goto/16 :goto_13

    .line 395
    :cond_b4
    const/4 v9, 0x2

    if-ne p3, v9, :cond_100

    .line 397
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_bf
    .catch Ljava/security/NoSuchProviderException; {:try_start_a0 .. :try_end_bf} :catch_c2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a0 .. :try_end_bf} :catch_e1

    move-result-object v9

    goto/16 :goto_13

    .line 400
    .end local v5           #kf:Ljava/security/KeyFactory;
    :catch_c2
    move-exception v9

    move-object v1, v9

    .line 402
    .local v1, e:Ljava/security/NoSuchProviderException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 410
    .end local v1           #e:Ljava/security/NoSuchProviderException;
    :catch_e1
    move-exception v9

    move-object v2, v9

    .line 412
    .local v2, e2:Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 415
    .end local v2           #e2:Ljava/security/spec/InvalidKeySpecException;
    .restart local v5       #kf:Ljava/security/KeyFactory;
    :cond_100
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineUpdate([BII[BI)I
    .registers 8
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
    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 272
    .local v1, encoded:[B
    if-nez v1, :cond_e

    .line 274
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_e
    :try_start_e
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    if-nez v2, :cond_19

    .line 281
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B

    move-result-object v2

    .line 285
    :goto_18
    return-object v2

    :cond_19
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_20
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_20} :catch_22

    move-result-object v2

    goto :goto_18

    .line 288
    :catch_22
    move-exception v2

    move-object v0, v2

    .line 290
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
