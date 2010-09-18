.class public Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;
.source "ISO9797Alg3Mac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    .line 42
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 6
    .parameter "cipher"
    .parameter "macSizeInBits"
    .parameter "padding"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_f
    instance-of v0, p1, Lorg/bouncycastle/crypto/engines/DESEngine;

    if-nez v0, :cond_1b

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher must be instance of DESEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1b
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 110
    iput-object p3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 111
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    .line 113
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    .line 115
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 56
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 57
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 9
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 227
    .local v0, blockSize:I
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v2, :cond_1c

    .line 232
    :goto_b
    iget v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ge v2, v0, :cond_34

    .line 234
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte v5, v2, v3

    .line 235
    iget v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    goto :goto_b

    .line 240
    :cond_1c
    iget v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ne v2, v0, :cond_2b

    .line 242
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 243
    iput v5, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 246
    :cond_2b
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 249
    :cond_34
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 252
    new-instance v1, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 254
    .local v1, deseng:Lorg/bouncycastle/crypto/engines/DESEngine;
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1, v5, v2}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 255
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v1, v2, v5, v3, v5}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 257
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 258
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v1, v2, v5, v3, v5}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 261
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 265
    iget v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string v0, "ISO9797Alg3"

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .parameter "params"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 126
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 128
    instance-of v4, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v4, :cond_14

    .line 130
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "params must be an instance of KeyParameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :cond_14
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 140
    .local v3, kp:Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    .line 142
    .local v2, keyvalue:[B
    array-length v4, v2

    if-ne v4, v8, :cond_34

    .line 144
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v2, v7, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 145
    .local v1, key1:Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v2, v6, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 146
    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 160
    :goto_2d
    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 161
    return-void

    .line 148
    .end local v1           #key1:Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_34
    array-length v4, v2

    const/16 v5, 0x18

    if-ne v4, v5, :cond_4d

    .line 150
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v2, v7, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 151
    .restart local v1       #key1:Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v2, v6, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 152
    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v2, v8, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_2d

    .line 156
    .end local v1           #key1:Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_4d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Key must be either 112 or 168 bit long"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 279
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    aput-byte v2, v1, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 282
    :cond_e
    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 287
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 288
    return-void
.end method

.method public update(B)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, resultLen:I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 175
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 176
    iput v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 179
    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte p1, v1, v2

    .line 180
    return-void
.end method

.method public update([BII)V
    .registers 11
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 188
    if-gez p3, :cond_b

    .line 190
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_b
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 194
    .local v0, blockSize:I
    const/4 v2, 0x0

    .line 195
    .local v2, resultLen:I
    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int v1, v0, v3

    .line 197
    .local v1, gapLen:I
    if-le p3, v1, :cond_3c

    .line 199
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 203
    iput v6, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 204
    sub-int/2addr p3, v1

    .line 205
    add-int/2addr p2, v1

    .line 207
    :goto_2e
    if-le p3, v0, :cond_3c

    .line 209
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 211
    sub-int/2addr p3, v0

    .line 212
    add-int/2addr p2, v0

    goto :goto_2e

    .line 216
    :cond_3c
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 219
    return-void
.end method
