.class public Lorg/bouncycastle/jce/provider/JDKISOSignature$SHA1WithRSAEncryption;
.super Lorg/bouncycastle/jce/provider/JDKISOSignature;
.source "JDKISOSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKISOSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA1WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 126
    const-string v0, "SHA1withRSA/ISO9796-2"

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKISOSignature;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 127
    return-void
.end method
