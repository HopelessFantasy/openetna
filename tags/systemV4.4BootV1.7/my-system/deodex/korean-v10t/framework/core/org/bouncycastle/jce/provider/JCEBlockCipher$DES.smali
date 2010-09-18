.class public Lorg/bouncycastle/jce/provider/JCEBlockCipher$DES;
.super Lorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 715
    new-instance v0, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 716
    return-void
.end method
