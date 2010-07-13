.class public Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 8

    .prologue
    .line 34
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 36
    .local v0, dhParams:Lorg/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 37
    .local v1, p:Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getJ()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 38
    .local v2, x:Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v2}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 40
    .local v3, y:Ljava/math/BigInteger;
    new-instance v4, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v5, v3, v0}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    new-instance v6, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v6, v2, v0}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object v4
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 2
    .parameter "param"

    .prologue
    .line 28
    check-cast p1, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 29
    return-void
.end method
