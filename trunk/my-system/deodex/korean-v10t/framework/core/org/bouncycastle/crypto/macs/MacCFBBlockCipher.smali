.class Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .parameter "cipher"
    .parameter "bitBlockSize"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 34
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    .line 36
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    .line 37
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    .line 38
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbOutV:[B

    .line 39
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    return v0
.end method

.method getMacBlock([B)V
    .registers 5
    .parameter "mac"

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    invoke-interface {v0, v1, v2, p1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 165
    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    instance-of v3, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_35

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v2, v0

    .line 57
    .local v2, ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 59
    .local v1, iv:[B
    array-length v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2c

    .line 61
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :goto_1f
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 70
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 78
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_2b
    return-void

    .line 65
    .restart local v1       #iv:[B
    .restart local v2       #ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_2c
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 74
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_35
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 76
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2b
.end method

.method public processBlock([BI[BI)I
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    iget v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_f

    .line 123
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_f
    iget v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1d

    .line 128
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1d
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    iget v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3c

    .line 138
    add-int v1, p4, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 144
    :cond_3c
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 159
    return-void
.end method
