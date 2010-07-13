.class public Lorg/bouncycastle/crypto/macs/BlockCipherMac;
.super Ljava/lang/Object;
.source "BlockCipherMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 29
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/macs/BlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 5
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_f
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 54
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    .line 56
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    .line 58
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 60
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 141
    .local v0, blockSize:I
    :goto_7
    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_18

    .line 143
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 144
    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    goto :goto_7

    .line 147
    :cond_18
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 153
    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 73
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_e
    iput v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 174
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 175
    return-void
.end method

.method public update(B)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, resultLen:I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 88
    iput v4, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 91
    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte p1, v1, v2

    .line 92
    return-void
.end method

.method public update([BII)V
    .registers 11
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 99
    if-gez p3, :cond_b

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_b
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 105
    .local v0, blockSize:I
    const/4 v2, 0x0

    .line 106
    .local v2, resultLen:I
    iget v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    .line 108
    .local v1, gapLen:I
    if-le p3, v1, :cond_3c

    .line 110
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    iput v6, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 115
    sub-int/2addr p3, v1

    .line 116
    add-int/2addr p2, v1

    .line 118
    :goto_2e
    if-le p3, v0, :cond_3c

    .line 120
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 122
    sub-int/2addr p3, v0

    .line 123
    add-int/2addr p2, v0

    goto :goto_2e

    .line 127
    :cond_3c
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 130
    return-void
.end method
