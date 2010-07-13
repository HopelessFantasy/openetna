.class public Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;
.super Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede3"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 161
    const-string v0, "DESede3"

    const/16 v1, 0xc0

    new-instance v2, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->keySizeSet:Z

    .line 162
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->uninitialised:Z

    if-eqz v0, :cond_15

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 180
    :cond_15
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 4
    .parameter "keySize"
    .parameter "random"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;->keySizeSet:Z

    .line 170
    return-void
.end method
