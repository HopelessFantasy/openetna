.class public Lorg/bouncycastle/jce/provider/JDKDSASigner$noneDSA;
.super Lorg/bouncycastle/jce/provider/JDKDSASigner;
.source "JDKDSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "noneDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 290
    const-string v0, "NONEwithDSA"

    new-instance v1, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;-><init>(Lorg/bouncycastle/jce/provider/JDKDSASigner$1;)V

    new-instance v2, Lorg/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKDSASigner;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSA;)V

    .line 291
    return-void
.end method
