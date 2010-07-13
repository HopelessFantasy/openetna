.class public Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;
.super Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# static fields
.field static final defaultPublicExponent:Ljava/math/BigInteger; = null

.field static final defaultTests:I = 0x8


# instance fields
.field engine:Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

.field param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->defaultPublicExponent:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    .line 77
    const-string v0, "RSA"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    .line 80
    new-instance v0, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->defaultPublicExponent:Ljava/math/BigInteger;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x800

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 83
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 7

    .prologue
    .line 115
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 116
    .local v0, pair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 117
    .local v2, pub:Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 119
    .local v1, priv:Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;

    invoke-direct {v4, v2}, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)V

    new-instance v5, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v5, v1}, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 6
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 89
    new-instance v0, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->defaultPublicExponent:Ljava/math/BigInteger;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 93
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 9
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 100
    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v2, :cond_c

    .line 102
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object v1, v0

    .line 106
    .local v1, rsaParams:Ljava/security/spec/RSAKeyGenParameterSpec;
    new-instance v2, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v2, v3, p2, v4, v5}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 110
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 111
    return-void
.end method
