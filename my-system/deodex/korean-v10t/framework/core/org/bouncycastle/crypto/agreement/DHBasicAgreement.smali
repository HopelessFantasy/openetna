.class public Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

.field private key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 7
    .parameter "pubKey"

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-object v1, v0

    .line 65
    .local v1, pub:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_18
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "param"

    .prologue
    .line 33
    instance-of v3, p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_20

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 37
    .local v2, rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->random:Ljava/security/SecureRandom;

    .line 38
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 47
    .end local v2           #rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_14
    instance-of v3, v1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v3, :cond_2c

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_20
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->random:Ljava/security/SecureRandom;

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_14

    .line 52
    :cond_2c
    check-cast v1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 53
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    .line 54
    return-void
.end method
