.class public Lorg/bouncycastle/crypto/digests/ShortenedDigest;
.super Ljava/lang/Object;
.source "ShortenedDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

.field private length:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;I)V
    .registers 5
    .parameter "baseDigest"
    .parameter "length"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_d

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseDigest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_d
    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v0

    if-le p2, v0, :cond_1b

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseDigest output not large enough to support length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1b
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    .line 37
    iput p2, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    .line 38
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 6
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 64
    .local v0, tmp:[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/ExtendedDigest;->doFinal([BI)I

    .line 66
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->reset()V

    .line 74
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "in"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->update(B)V

    .line 53
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/ExtendedDigest;->update([BII)V

    .line 58
    return-void
.end method
