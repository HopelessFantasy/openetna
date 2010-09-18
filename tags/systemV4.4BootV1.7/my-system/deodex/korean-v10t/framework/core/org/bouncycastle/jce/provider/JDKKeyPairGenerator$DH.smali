.class public Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;
.super Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# instance fields
.field certainty:I

.field engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 136
    const-string v0, "DH"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 129
    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 130
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    .line 131
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 137
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 8

    .prologue
    .line 166
    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    if-nez v4, :cond_29

    .line 168
    new-instance v0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 170
    .local v0, pGen:Lorg/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    iget v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 171
    new-instance v4, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 172
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 173
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 176
    .end local v0           #pGen:Lorg/bouncycastle/crypto/generators/DHParametersGenerator;
    :cond_29
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 177
    .local v1, pair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 178
    .local v3, pub:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 180
    .local v2, priv:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v4, Ljava/security/KeyPair;

    new-instance v5, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v5, v3}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v6, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v6, v2}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 143
    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 144
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 145
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
    .line 152
    instance-of v2, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v2, :cond_c

    .line 154
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "parameter object not a DHParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v1, v0

    .line 158
    .local v1, dhParams:Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 160
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 162
    return-void
.end method
