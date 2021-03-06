.class public Lorg/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DSA;


# instance fields
.field key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .registers 12
    .parameter "message"

    .prologue
    const/4 v9, 0x1

    .line 60
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v9, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 61
    .local v1, m:Ljava/math/BigInteger;
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 63
    .local v2, params:Lorg/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 67
    .local v3, qBitLength:I
    :cond_14
    new-instance v0, Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v3, v7}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 69
    .local v0, k:Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_14

    .line 71
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 73
    .local v4, r:Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    .end local p0
    check-cast p0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 76
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 78
    .local v6, s:Ljava/math/BigInteger;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/math/BigInteger;

    .line 80
    .local v5, res:[Ljava/math/BigInteger;
    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 81
    aput-object v6, v5, v9

    .line 83
    return-object v5
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 29
    if-eqz p1, :cond_25

    .line 31
    instance-of v2, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_19

    .line 33
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 35
    .local v1, rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 36
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    .line 48
    .end local v1           #rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_18
    return-void

    .line 40
    .restart local p2
    :cond_19
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 41
    check-cast p2, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_18

    .line 46
    .restart local p2
    :cond_25
    check-cast p2, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_18
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 14
    .parameter "message"
    .parameter "r"
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    .line 96
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v0, v7, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 97
    .local v0, m:Ljava/math/BigInteger;
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 98
    .local v1, params:Lorg/bouncycastle/crypto/params/DSAParameters;
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 100
    .local v6, zero:Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_23

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gtz v7, :cond_25

    :cond_23
    move v7, v9

    .line 120
    .end local p0
    :goto_24
    return v7

    .line 105
    .restart local p0
    :cond_25
    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_35

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gtz v7, :cond_37

    :cond_35
    move v7, v9

    .line 107
    goto :goto_24

    .line 110
    :cond_37
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 112
    .local v5, w:Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 113
    .local v2, u1:Ljava/math/BigInteger;
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 115
    .local v3, u2:Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 116
    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    .end local p0
    check-cast p0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 120
    .local v4, v:Ljava/math/BigInteger;
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_24
.end method
