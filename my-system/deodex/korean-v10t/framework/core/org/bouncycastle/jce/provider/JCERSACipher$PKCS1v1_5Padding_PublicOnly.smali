.class public Lorg/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding_PublicOnly;
.super Lorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1v1_5Padding_PublicOnly"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 560
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JCERSACipher;-><init>(ZZLorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 561
    return-void
.end method
