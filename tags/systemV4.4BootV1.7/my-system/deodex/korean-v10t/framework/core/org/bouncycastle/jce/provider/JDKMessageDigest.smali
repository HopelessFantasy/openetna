.class public Lorg/bouncycastle/jce/provider/JDKMessageDigest;
.super Ljava/security/MessageDigest;
.source "JDKMessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKMessageDigest$MD5;,
        Lorg/bouncycastle/jce/provider/JDKMessageDigest$SHA512;,
        Lorg/bouncycastle/jce/provider/JDKMessageDigest$SHA384;,
        Lorg/bouncycastle/jce/provider/JDKMessageDigest$SHA256;,
        Lorg/bouncycastle/jce/provider/JDKMessageDigest$SHA224;,
        Lorg/bouncycastle/jce/provider/JDKMessageDigest$SHA1;
    }
.end annotation


# instance fields
.field digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "digest"

    .prologue
    .line 16
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 19
    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .registers 4

    .prologue
    .line 42
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 44
    .local v0, digestBytes:[B
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 46
    return-object v0
.end method

.method public engineReset()V
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 24
    return-void
.end method

.method public engineUpdate(B)V
    .registers 3
    .parameter "input"

    .prologue
    .line 29
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 30
    return-void
.end method

.method public engineUpdate([BII)V
    .registers 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 37
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 38
    return-void
.end method
