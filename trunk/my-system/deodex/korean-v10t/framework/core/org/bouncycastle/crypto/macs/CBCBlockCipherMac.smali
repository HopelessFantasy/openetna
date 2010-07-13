.class public Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    .line 34
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 6
    .parameter "cipher"
    .parameter "macSizeInBits"
    .parameter "padding"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_f
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 96
    iput-object p3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 97
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    .line 99
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    .line 101
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 48
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 49
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 181
    .local v0, blockSize:I
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_1c

    .line 186
    :goto_b
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_34

    .line 188
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 189
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_b

    .line 194
    :cond_1c
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_2b

    .line 196
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 197
    iput v4, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 200
    :cond_2b
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 203
    :cond_34
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 205
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 209
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 116
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 222
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 225
    :cond_e
    iput v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 230
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 231
    return-void
.end method

.method public update(B)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, resultLen:I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 131
    iput v4, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 134
    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v1, v2

    .line 135
    return-void
.end method

.method public update([BII)V
    .registers 11
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 142
    if-gez p3, :cond_b

    .line 144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_b
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 148
    .local v0, blockSize:I
    const/4 v2, 0x0

    .line 149
    .local v2, resultLen:I
    iget v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    .line 151
    .local v1, gapLen:I
    if-le p3, v1, :cond_3c

    .line 153
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 157
    iput v6, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 158
    sub-int/2addr p3, v1

    .line 159
    add-int/2addr p2, v1

    .line 161
    :goto_2e
    if-le p3, v0, :cond_3c

    .line 163
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 165
    sub-int/2addr p3, v0

    .line 166
    add-int/2addr p2, v0

    goto :goto_2e

    .line 170
    :cond_3c
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 173
    return-void
.end method
