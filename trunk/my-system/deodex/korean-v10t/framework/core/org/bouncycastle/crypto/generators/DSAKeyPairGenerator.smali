.class public Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 11

    .prologue
    .line 36
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 37
    .local v0, dsaParams:Lorg/bouncycastle/crypto/params/DSAParameters;
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 39
    .local v4, random:Ljava/security/SecureRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 40
    .local v3, q:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 41
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 45
    .local v1, g:Ljava/math/BigInteger;
    :cond_18
    new-instance v5, Ljava/math/BigInteger;

    const/16 v7, 0xa0

    invoke-direct {v5, v7, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 47
    .local v5, x:Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_18

    .line 52
    invoke-virtual {v1, v5, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 54
    .local v6, y:Ljava/math/BigInteger;
    new-instance v7, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v8, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v8, v6, v0}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    new-instance v9, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v9, v5, v0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object v7
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 2
    .parameter "param"

    .prologue
    .line 30
    check-cast p1, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 31
    return-void
.end method
