.class public Lorg/bouncycastle/crypto/InvalidCipherTextException;
.super Lorg/bouncycastle/crypto/CryptoException;
.source "InvalidCipherTextException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/crypto/CryptoException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
