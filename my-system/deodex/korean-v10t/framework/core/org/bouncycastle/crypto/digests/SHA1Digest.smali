.class public Lorg/bouncycastle/crypto/digests/SHA1Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 16
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 24
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 6
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 16
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 35
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 36
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 37
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 38
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 39
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 41
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 43
    return-void
.end method

.method private f(III)I
    .registers 6
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 141
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .registers 6
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 157
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .registers 5
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 149
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private unpackWord(I[BI)V
    .registers 6
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 73
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, outOff:I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 74
    add-int/lit8 p3, v0, 0x1

    .end local v0           #outOff:I
    .restart local p3
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 75
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #outOff:I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 76
    add-int/lit8 p3, v0, 0x1

    .end local v0           #outOff:I
    .restart local p3
    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 77
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    .line 97
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    .line 98
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    .line 99
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    .line 100
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    .line 101
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    .line 103
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    .line 105
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .registers 14

    .prologue
    .line 165
    const/16 v5, 0x10

    .local v5, i:I
    :goto_2
    const/16 v10, 0x50

    if-ge v5, v10, :cond_35

    .line 167
    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/4 v11, 0x3

    sub-int v11, v5, v11

    aget v10, v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v12, 0x8

    sub-int v12, v5, v12

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v12, 0xe

    sub-int v12, v5, v12

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v12, 0x10

    sub-int v12, v5, v12

    aget v11, v11, v12

    xor-int v9, v10, v11

    .line 168
    .local v9, t:I
    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    aput v11, v10, v5

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 174
    .end local v9           #t:I
    :cond_35
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 175
    .local v0, A:I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 176
    .local v1, B:I
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 177
    .local v2, C:I
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 178
    .local v3, D:I
    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 183
    .local v4, E:I
    const/4 v6, 0x0

    .line 185
    .local v6, idx:I
    const/4 v8, 0x0

    .local v8, j:I
    move v7, v6

    .end local v6           #idx:I
    .local v7, idx:I
    :goto_42
    const/4 v10, 0x4

    if-ge v8, v10, :cond_d6

    .line 189
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 190
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 192
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 193
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 195
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 196
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 198
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 199
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 201
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 202
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 185
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_42

    .line 208
    :cond_d6
    const/4 v8, 0x0

    :goto_d7
    const/4 v10, 0x4

    if-ge v8, v10, :cond_16b

    .line 212
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 213
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 215
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 216
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 218
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 219
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 221
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 222
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 224
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 225
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 208
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_d7

    .line 231
    :cond_16b
    const/4 v8, 0x0

    :goto_16c
    const/4 v10, 0x4

    if-ge v8, v10, :cond_200

    .line 235
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 236
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 238
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 239
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 241
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 242
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 244
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 245
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 247
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 248
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 231
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_16c

    .line 254
    :cond_200
    const/4 v8, 0x0

    :goto_201
    const/4 v10, 0x3

    if-gt v8, v10, :cond_295

    .line 258
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 259
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 261
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 262
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 264
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 265
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 267
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 268
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 270
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 271
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 254
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_201

    .line 275
    :cond_295
    iget v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 276
    iget v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 277
    iget v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 278
    iget v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 279
    iget v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 284
    const/4 v10, 0x0

    iput v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 285
    const/4 v5, 0x0

    :goto_2b2
    const/16 v10, 0x10

    if-ge v5, v10, :cond_2be

    .line 287
    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/4 v11, 0x0

    aput v11, v10, v5

    .line 285
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b2

    .line 289
    :cond_2be
    return-void
.end method

.method protected processLength(J)V
    .registers 7
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 82
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-le v0, v3, :cond_9

    .line 84
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 87
    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 89
    return-void
.end method

.method protected processWord([BI)V
    .registers 7
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 62
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_32

    .line 64
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 66
    :cond_32
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 115
    const v1, 0x67452301

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 116
    const v1, -0x10325477

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 117
    const v1, -0x67452302

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 118
    const v1, 0x10325476

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 119
    const v1, -0x3c2d1e10

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 121
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_2c

    .line 124
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 126
    :cond_2c
    return-void
.end method
