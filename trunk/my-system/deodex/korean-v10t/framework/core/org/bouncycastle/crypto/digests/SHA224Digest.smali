.class public Lorg/bouncycastle/crypto/digests/SHA224Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA224Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x1c

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 279
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    return-void

    :array_a
    .array-data 0x4
        0x98t 0x2ft 0x8at 0x42t
        0x91t 0x44t 0x37t 0x71t
        0xcft 0xfbt 0xc0t 0xb5t
        0xa5t 0xdbt 0xb5t 0xe9t
        0x5bt 0xc2t 0x56t 0x39t
        0xf1t 0x11t 0xf1t 0x59t
        0xa4t 0x82t 0x3ft 0x92t
        0xd5t 0x5et 0x1ct 0xabt
        0x98t 0xaat 0x7t 0xd8t
        0x1t 0x5bt 0x83t 0x12t
        0xbet 0x85t 0x31t 0x24t
        0xc3t 0x7dt 0xct 0x55t
        0x74t 0x5dt 0xbet 0x72t
        0xfet 0xb1t 0xdet 0x80t
        0xa7t 0x6t 0xdct 0x9bt
        0x74t 0xf1t 0x9bt 0xc1t
        0xc1t 0x69t 0x9bt 0xe4t
        0x86t 0x47t 0xbet 0xeft
        0xc6t 0x9dt 0xc1t 0xft
        0xcct 0xa1t 0xct 0x24t
        0x6ft 0x2ct 0xe9t 0x2dt
        0xaat 0x84t 0x74t 0x4at
        0xdct 0xa9t 0xb0t 0x5ct
        0xdat 0x88t 0xf9t 0x76t
        0x52t 0x51t 0x3et 0x98t
        0x6dt 0xc6t 0x31t 0xa8t
        0xc8t 0x27t 0x3t 0xb0t
        0xc7t 0x7ft 0x59t 0xbft
        0xf3t 0xbt 0xe0t 0xc6t
        0x47t 0x91t 0xa7t 0xd5t
        0x51t 0x63t 0xcat 0x6t
        0x67t 0x29t 0x29t 0x14t
        0x85t 0xat 0xb7t 0x27t
        0x38t 0x21t 0x1bt 0x2et
        0xfct 0x6dt 0x2ct 0x4dt
        0x13t 0xdt 0x38t 0x53t
        0x54t 0x73t 0xat 0x65t
        0xbbt 0xat 0x6at 0x76t
        0x2et 0xc9t 0xc2t 0x81t
        0x85t 0x2ct 0x72t 0x92t
        0xa1t 0xe8t 0xbft 0xa2t
        0x4bt 0x66t 0x1at 0xa8t
        0x70t 0x8bt 0x4bt 0xc2t
        0xa3t 0x51t 0x6ct 0xc7t
        0x19t 0xe8t 0x92t 0xd1t
        0x24t 0x6t 0x99t 0xd6t
        0x85t 0x35t 0xet 0xf4t
        0x70t 0xa0t 0x6at 0x10t
        0x16t 0xc1t 0xa4t 0x19t
        0x8t 0x6ct 0x37t 0x1et
        0x4ct 0x77t 0x48t 0x27t
        0xb5t 0xbct 0xb0t 0x34t
        0xb3t 0xct 0x1ct 0x39t
        0x4at 0xaat 0xd8t 0x4et
        0x4ft 0xcat 0x9ct 0x5bt
        0xf3t 0x6ft 0x2et 0x68t
        0xeet 0x82t 0x8ft 0x74t
        0x6ft 0x63t 0xa5t 0x78t
        0x14t 0x78t 0xc8t 0x84t
        0x8t 0x2t 0xc7t 0x8ct
        0xfat 0xfft 0xbet 0x90t
        0xebt 0x6ct 0x50t 0xa4t
        0xf7t 0xa3t 0xf9t 0xbet
        0xf2t 0x78t 0x71t 0xc6t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 25
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 33
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA224Digest;)V
    .registers 6
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 25
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 44
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 45
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 46
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 47
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 48
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 49
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 50
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 51
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 53
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 55
    return-void
.end method

.method private Ch(III)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 240
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Maj(III)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 248
    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum0(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 254
    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum1(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 260
    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta0(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 266
    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta1(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 272
    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .registers 6
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 85
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 86
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 87
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 88
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 89
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->finish()V

    .line 109
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 110
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 111
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 112
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 113
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 114
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 115
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->unpackWord(I[BI)V

    .line 117
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    .line 119
    const/16 v0, 0x1c

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string v0, "SHA-224"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0x1c

    return v0
.end method

.method protected processBlock()V
    .registers 16

    .prologue
    .line 153
    const/16 v9, 0x10

    .local v9, t:I
    :goto_2
    const/16 v11, 0x3f

    if-gt v9, v11, :cond_36

    .line 155
    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/4 v13, 0x2

    sub-int v13, v9, v13

    aget v12, v12, v13

    invoke-direct {p0, v12}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Theta1(I)I

    move-result v12

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/4 v14, 0x7

    sub-int v14, v9, v14

    aget v13, v13, v14

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v14, 0xf

    sub-int v14, v9, v14

    aget v13, v13, v14

    invoke-direct {p0, v13}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Theta0(I)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v14, 0x10

    sub-int v14, v9, v14

    aget v13, v13, v14

    add-int/2addr v12, v13

    aput v12, v11, v9

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 161
    :cond_36
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 162
    .local v0, a:I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 163
    .local v1, b:I
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 164
    .local v2, c:I
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 165
    .local v3, d:I
    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 166
    .local v4, e:I
    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 167
    .local v5, f:I
    iget v6, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 168
    .local v6, g:I
    iget v7, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 171
    .local v7, h:I
    const/4 v9, 0x0

    .line 172
    const/4 v8, 0x0

    .local v8, i:I
    move v10, v9

    .end local v9           #t:I
    .local v10, t:I
    :goto_49
    const/16 v11, 0x8

    if-ge v8, v11, :cond_159

    .line 175
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #t:I
    .restart local v9       #t:I
    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 176
    add-int/2addr v3, v7

    .line 177
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 180
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v9

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .restart local v10       #t:I
    aget v12, v12, v9

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    .line 181
    add-int/2addr v2, v6

    .line 182
    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v7, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    .line 185
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #t:I
    .restart local v9       #t:I
    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 186
    add-int/2addr v1, v5

    .line 187
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v6, v7, v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 190
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v9

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .restart local v10       #t:I
    aget v12, v12, v9

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 191
    add-int/2addr v0, v4

    .line 192
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 195
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #t:I
    .restart local v9       #t:I
    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 196
    add-int/2addr v7, v3

    .line 197
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 200
    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v7, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v9

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .restart local v10       #t:I
    aget v12, v12, v9

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    .line 201
    add-int/2addr v6, v2

    .line 202
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    .line 205
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v6, v7, v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #t:I
    .restart local v9       #t:I
    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v1, v11

    .line 206
    add-int/2addr v5, v1

    .line 207
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v1, v11

    .line 210
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v11

    invoke-direct {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v12, v9

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .restart local v10       #t:I
    aget v12, v12, v9

    add-int/2addr v11, v12

    add-int/2addr v0, v11

    .line 211
    add-int/2addr v4, v0

    .line 212
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v0, v11

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_49

    .line 215
    :cond_159
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    add-int/2addr v11, v0

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 216
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    add-int/2addr v11, v1

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 217
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    add-int/2addr v11, v2

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 218
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    add-int/2addr v11, v3

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 219
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    add-int/2addr v11, v4

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 220
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    add-int/2addr v11, v5

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 221
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    add-int/2addr v11, v6

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 222
    iget v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    add-int/2addr v11, v7

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 227
    const/4 v11, 0x0

    iput v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 228
    const/4 v8, 0x0

    :goto_185
    const/16 v11, 0x10

    if-ge v8, v11, :cond_191

    .line 230
    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/4 v12, 0x0

    aput v12, v11, v8

    .line 228
    add-int/lit8 v8, v8, 0x1

    goto :goto_185

    .line 232
    :cond_191
    return-void
.end method

.method protected processLength(J)V
    .registers 7
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 94
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-le v0, v3, :cond_9

    .line 96
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    .line 99
    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 101
    return-void
.end method

.method protected processWord([BI)V
    .registers 7
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

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

    .line 74
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_32

    .line 76
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    .line 78
    :cond_32
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 132
    const v1, -0x3efa6128

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 133
    const v1, 0x367cd507

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 134
    const v1, 0x3070dd17

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 135
    const v1, -0x8f1a6c7

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 136
    const v1, -0x3ff4cf

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 137
    const v1, 0x68581511

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 138
    const v1, 0x64f98fa7

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 139
    const v1, -0x4105b05c

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 141
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_3b

    .line 144
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aput v2, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 146
    :cond_3b
    return-void
.end method
