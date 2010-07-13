.class public Lorg/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding;
.super Lorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1v1_5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 542
    new-instance v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCERSACipher;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 543
    return-void
.end method
