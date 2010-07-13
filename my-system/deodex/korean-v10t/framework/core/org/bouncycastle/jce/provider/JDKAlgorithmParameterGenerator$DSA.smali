.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .prologue
    const/16 v6, 0x14

    .line 109
    new-instance v2, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 111
    .local v2, pGen:Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_33

    .line 113
    iget v4, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;->strength:I

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 120
    :goto_12
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 126
    .local v1, p:Lorg/bouncycastle/crypto/params/DSAParameters;
    :try_start_16
    const-string v4, "DSA"

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 127
    .local v3, params:Ljava/security/AlgorithmParameters;
    new-instance v4, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_3e

    .line 134
    return-object v3

    .line 117
    .end local v1           #p:Lorg/bouncycastle/crypto/params/DSAParameters;
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :cond_33
    iget v4, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_12

    .line 129
    .restart local v1       #p:Lorg/bouncycastle/crypto/params/DSAParameters;
    :catch_3e
    move-exception v4

    move-object v0, v4

    .line 131
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "genParamSpec"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
