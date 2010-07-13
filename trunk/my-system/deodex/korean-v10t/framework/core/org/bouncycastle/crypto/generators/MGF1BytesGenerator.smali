.class public Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
.super Ljava/lang/Object;
.source "MGF1BytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private hLen:I

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "digest"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 26
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    .line 27
    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 5
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 57
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 58
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 59
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 60
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 61
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 11
    .parameter "out"
    .parameter "outOff"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 75
    array-length v3, p1

    sub-int/2addr v3, p3

    if-ge v3, p2, :cond_d

    .line 77
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "output buffer too small"

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_d
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    new-array v2, v3, [B

    .line 81
    .local v2, hashBuf:[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 82
    .local v0, C:[B
    const/4 v1, 0x0

    .line 84
    .local v1, counter:I
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 86
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    if-le p3, v3, :cond_47

    .line 90
    :cond_1e
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    .line 92
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 93
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v6, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 94
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 96
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    iget v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    div-int v3, p3, v3

    if-lt v1, v3, :cond_1e

    .line 101
    :cond_47
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    if-ge v3, p3, :cond_70

    .line 103
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    .line 105
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 106
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v6, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 107
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 109
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    iget v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v4, v1

    sub-int v4, p3, v4

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_70
    return p3
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .registers 6
    .parameter "param"

    .prologue
    .line 32
    instance-of v2, p1, Lorg/bouncycastle/crypto/params/MGFParameters;

    if-nez v2, :cond_c

    .line 34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MGF parameters required for MGF1Generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_c
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/MGFParameters;

    move-object v1, v0

    .line 39
    .local v1, p:Lorg/bouncycastle/crypto/params/MGFParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/MGFParameters;->getSeed()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    .line 40
    return-void
.end method
