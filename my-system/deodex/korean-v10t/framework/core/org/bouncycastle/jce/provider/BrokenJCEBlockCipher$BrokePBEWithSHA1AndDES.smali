.class public Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;
.super Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.source "BrokenJCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrokePBEWithSHA1AndDES"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v4, 0x40

    .line 571
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IIII)V

    .line 572
    return-void
.end method
