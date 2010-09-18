.class public Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;
.super Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 113
    const-string v0, "DESede"

    const/16 v1, 0xc0

    new-instance v2, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->keySizeSet:Z

    .line 114
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 6

    .prologue
    .line 126
    iget-boolean v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->uninitialised:Z

    if-eqz v1, :cond_15

    .line 128
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget v4, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->defaultKeySize:I

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 136
    :cond_15
    iget-boolean v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->keySizeSet:Z

    if-nez v1, :cond_2f

    .line 138
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    .line 140
    .local v0, k:[B
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->algName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    .end local v0           #k:[B
    :goto_2e
    return-object v1

    :cond_2f
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->algName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_2e
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 4
    .parameter "keySize"
    .parameter "random"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->keySizeSet:Z

    .line 122
    return-void
.end method
