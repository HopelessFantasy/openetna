.class public Lorg/bouncycastle/crypto/agreement/DHAgreement;
.super Ljava/lang/Object;
.source "DHAgreement.java"


# instance fields
.field private dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

.field private key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private privateValue:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .parameter "pub"
    .parameter "message"

    .prologue
    .line 79
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public calculateMessage()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 64
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "param"

    .prologue
    .line 36
    instance-of v3, p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_20

    .line 38
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 40
    .local v2, rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    .line 41
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 50
    .end local v2           #rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_14
    instance-of v3, v1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v3, :cond_2c

    .line 52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_20
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_14

    .line 55
    :cond_2c
    check-cast v1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 56
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    .line 57
    return-void
.end method
