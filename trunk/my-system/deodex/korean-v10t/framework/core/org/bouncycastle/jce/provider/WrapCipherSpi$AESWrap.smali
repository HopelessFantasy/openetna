.class public Lorg/bouncycastle/jce/provider/WrapCipherSpi$AESWrap;
.super Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "WrapCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AESWrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 427
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    .line 428
    return-void
.end method
