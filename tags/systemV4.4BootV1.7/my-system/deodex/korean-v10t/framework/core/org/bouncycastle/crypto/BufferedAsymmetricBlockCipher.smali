.class public Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "BufferedAsymmetricBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field private final cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 2
    .parameter "cipher"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 23
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 144
    .local v0, out:[B
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 146
    return-object v0
.end method

.method public getBufferPosition()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return v0
.end method

.method public getInputBlockSize()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    .line 62
    return-void
.end method

.method public processByte(B)V
    .registers 5
    .parameter "in"

    .prologue
    .line 92
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_f

    .line 94
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "attempt to process message to long for cipher"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 98
    return-void
.end method

.method public processBytes([BII)V
    .registers 6
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 112
    if-nez p3, :cond_3

    .line 129
    :goto_2
    return-void

    .line 117
    :cond_3
    if-gez p3, :cond_d

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_d
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1d

    .line 124
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "attempt to process message to long for cipher"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1d
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    goto :goto_2
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    if-eqz v1, :cond_12

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 161
    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    aput-byte v2, v1, v2

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 165
    .end local v0           #i:I
    :cond_12
    iput v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    .line 166
    return-void
.end method
