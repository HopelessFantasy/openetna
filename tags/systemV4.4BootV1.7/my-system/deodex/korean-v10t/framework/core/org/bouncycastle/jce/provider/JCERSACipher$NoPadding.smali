.class public Lorg/bouncycastle/jce/provider/JCERSACipher$NoPadding;
.super Lorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 533
    new-instance v0, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCERSACipher;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 534
    return-void
.end method
