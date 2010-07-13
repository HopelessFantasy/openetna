.class public Lorg/bouncycastle/jce/provider/WrapCipherSpi$DESEDEWrap;
.super Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "WrapCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/WrapCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESEDEWrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 436
    new-instance v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    .line 437
    return-void
.end method
