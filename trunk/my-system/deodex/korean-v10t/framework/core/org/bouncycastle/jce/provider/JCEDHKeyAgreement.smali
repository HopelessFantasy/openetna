.class public Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "JCEDHKeyAgreement.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;

.field private result:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .registers 7
    .parameter "r"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 38
    .local v1, tmp:[B
    aget-byte v2, v1, v3

    if-nez v2, :cond_14

    .line 40
    array-length v2, v1

    sub-int/2addr v2, v4

    new-array v0, v2, [B

    .line 42
    .local v0, ntmp:[B
    array-length v2, v0

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 46
    .end local v0           #ntmp:[B
    :goto_13
    return-object v2

    :cond_14
    move-object v2, v1

    goto :goto_13
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 8
    .parameter "key"
    .parameter "lastPhase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v2, :cond_c

    .line 56
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Diffie-Hellman not initialised."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_c
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v2, :cond_18

    .line 61
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_18
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v1, v0

    .line 65
    .local v1, pubKey:Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 67
    :cond_3c
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_44
    if-eqz p2, :cond_58

    .line 72
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    .line 73
    const/4 v2, 0x0

    .line 80
    :goto_57
    return-object v2

    .line 77
    .restart local p1
    :cond_58
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    .line 80
    new-instance v2, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    goto :goto_57
.end method

.method protected engineGenerateSecret([BI)I
    .registers 6
    .parameter "sharedSecret"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v1, :cond_c

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Diffie-Hellman not initialised."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 106
    .local v0, secret:[B
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 108
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "DHKeyAgreement - buffer too short"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1f
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .parameter "algorithm"

    .prologue
    .line 119
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 166
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v2, :cond_c

    .line 168
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v1, v0

    .line 173
    .local v1, privKey:Ljavax/crypto/interfaces/DHPrivateKey;
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->random:Ljava/security/SecureRandom;

    .line 174
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 175
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    .line 176
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    .line 177
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 9
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
    .line 133
    instance-of v3, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v3, :cond_c

    .line 135
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v2, v0

    .line 139
    .local v2, privKey:Ljavax/crypto/interfaces/DHPrivateKey;
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->random:Ljava/security/SecureRandom;

    .line 141
    if-eqz p2, :cond_39

    .line 143
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_20

    .line 145
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_20
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v1, v0

    .line 149
    .local v1, p:Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 150
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    .line 158
    .end local v1           #p:Ljavax/crypto/spec/DHParameterSpec;
    :goto_30
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    .line 159
    return-void

    .line 154
    :cond_39
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 155
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    goto :goto_30
.end method
