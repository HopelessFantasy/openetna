.class public Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;
.super Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.source "KDF2BytesGenerator.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "digest"

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    .line 23
    return-void
.end method
