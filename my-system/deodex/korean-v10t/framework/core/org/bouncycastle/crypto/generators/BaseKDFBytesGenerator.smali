.class public Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "BaseKDFBytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "counterStart"
    .parameter "digest"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 35
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 16
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
    const/4 v11, 0x0

    .line 81
    array-length v7, p1

    sub-int/2addr v7, p3

    if-ge v7, p2, :cond_d

    .line 83
    new-instance v7, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v8, "output buffer too small"

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_d
    int-to-long v4, p3

    .line 87
    .local v4, oBytes:J
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 95
    .local v6, outLen:I
    const-wide v7, 0x1ffffffffL

    cmp-long v7, v4, v7

    if-lez v7, :cond_25

    .line 97
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Output length too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_25
    int-to-long v7, v6

    add-long/2addr v7, v4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, v6

    div-long/2addr v7, v9

    long-to-int v0, v7

    .line 102
    .local v0, cThreshold:I
    const/4 v2, 0x0

    .line 104
    .local v2, dig:[B
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v2, v7, [B

    .line 106
    iget v1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 108
    .local v1, counter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_39
    if-ge v3, v0, :cond_86

    .line 110
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v9, v9

    invoke-interface {v7, v8, v11, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 112
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 113
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 114
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 115
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    int-to-byte v8, v1

    invoke-interface {v7, v8}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 117
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v7, :cond_71

    .line 119
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v9, v9

    invoke-interface {v7, v8, v11, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 122
    :cond_71
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v2, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 124
    if-le p3, v6, :cond_82

    .line 126
    invoke-static {v2, v11, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/2addr p2, v6

    .line 128
    sub-int/2addr p3, v6

    .line 135
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 132
    :cond_82
    invoke-static {v2, v11, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7d

    .line 138
    :cond_86
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 140
    return p3
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .registers 6
    .parameter "param"

    .prologue
    .line 40
    instance-of v2, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v2, :cond_15

    .line 42
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KDFParameters;

    move-object v1, v0

    .line 44
    .local v1, p:Lorg/bouncycastle/crypto/params/KDFParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 45
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 58
    .end local v1           #p:Lorg/bouncycastle/crypto/params/KDFParameters;
    :goto_14
    return-void

    .line 47
    :cond_15
    instance-of v2, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v2, :cond_27

    .line 49
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    move-object v1, v0

    .line 51
    .local v1, p:Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_14

    .line 56
    .end local v1           #p:Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "KDF parameters required for KDF2Generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
