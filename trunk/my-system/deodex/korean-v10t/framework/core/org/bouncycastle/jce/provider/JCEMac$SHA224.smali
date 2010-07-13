.class public Lorg/bouncycastle/jce/provider/JCEMac$SHA224;
.super Lorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA224"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 402
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 403
    return-void
.end method
