.class public Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACTIGER;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA512;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA384;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA256;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA224;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA1;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD160HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD128HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$MD5HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$MD4HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$IDEA;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$CAST6;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$CAST5;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Camellia;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Serpent;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Rijndael;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$GOST28147;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$AES256;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$AES192;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$AES128;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$AES;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC6;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC564;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC5;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC4;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC2;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Twofish;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Blowfish;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Skipjack;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DES;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V
    .registers 5
    .parameter "algName"
    .parameter "defaultKeySize"
    .parameter "engine"

    .prologue
    .line 31
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    .line 33
    iput p2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->keySize:I

    .line 34
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 35
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_15

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 80
    :cond_15
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 6
    .parameter "keySize"
    .parameter "random"

    .prologue
    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 64
    :try_start_3
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v2, p2, p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_d} :catch_e

    .line 70
    return-void

    .line 66
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "random"

    .prologue
    .line 48
    if-eqz p1, :cond_11

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 54
    :cond_11
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
