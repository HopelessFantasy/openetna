.class public Lorg/bouncycastle/crypto/digests/SHA512Digest;
.super Lorg/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 34
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 6
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 52
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 53
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 54
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 55
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 56
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 57
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 58
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 59
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    .line 61
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 63
    const/16 v0, 0x40

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 43
    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 71
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 77
    const-wide v0, 0x6a09e667f3bcc908L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    .line 78
    const-wide v0, -0x4498517a7b3558c5L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    .line 79
    const-wide v0, 0x3c6ef372fe94f82bL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    .line 80
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    .line 81
    const-wide v0, 0x510e527fade682d1L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    .line 82
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    .line 83
    const-wide v0, 0x1f83d9abfb41bd6bL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    .line 84
    const-wide v0, 0x5be0cd19137e2179L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    .line 85
    return-void
.end method
