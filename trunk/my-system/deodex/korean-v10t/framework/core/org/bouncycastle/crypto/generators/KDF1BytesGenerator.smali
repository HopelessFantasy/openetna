.class public Lorg/bouncycastle/crypto/generators/KDF1BytesGenerator;
.super Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.source "KDF1BytesGenerator.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "digest"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    .line 22
    return-void
.end method
