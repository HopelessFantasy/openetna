.class public Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lorg/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .registers 3

    .prologue
    .line 11
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 15
    .local v0, newKey:[B
    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 17
    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 19
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_4

    .line 21
    return-object v0
.end method
