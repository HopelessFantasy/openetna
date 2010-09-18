.class public Lorg/bouncycastle/jce/provider/JCEMac$OldSHA512;
.super Lorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldSHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 459
    new-instance v0, Lorg/bouncycastle/crypto/macs/OldHMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/OldHMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 460
    return-void
.end method
