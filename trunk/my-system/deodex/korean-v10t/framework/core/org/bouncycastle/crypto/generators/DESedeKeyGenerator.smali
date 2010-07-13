.class public Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .registers 4

    .prologue
    .line 43
    iget v1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v0, v1, [B

    .line 47
    .local v0, newKey:[B
    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 49
    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    .line 51
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 53
    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 6
    .parameter "param"

    .prologue
    const/16 v3, 0x18

    const/16 v2, 0x10

    .line 21
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 23
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_14

    .line 25
    :cond_11
    iput v3, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 39
    :cond_13
    :goto_13
    return-void

    .line 27
    :cond_14
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1d

    .line 29
    iput v2, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_13

    .line 31
    :cond_1d
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v3, :cond_13

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v2, :cond_13

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
