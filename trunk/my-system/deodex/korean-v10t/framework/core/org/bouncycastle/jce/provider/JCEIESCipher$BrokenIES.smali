.class public Lorg/bouncycastle/jce/provider/JCEIESCipher$BrokenIES;
.super Lorg/bouncycastle/jce/provider/JCEIESCipher;
.source "JCEIESCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEIESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrokenIES"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 376
    new-instance v0, Lorg/bouncycastle/crypto/engines/IESEngine;

    new-instance v1, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    new-instance v2, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/IESEngine;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEIESCipher;-><init>(Lorg/bouncycastle/crypto/engines/IESEngine;)V

    .line 380
    return-void
.end method
