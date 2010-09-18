.class public Lorg/bouncycastle/crypto/params/MGFParameters;
.super Ljava/lang/Object;
.source "MGFParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field seed:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter "seed"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    .line 17
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "seed"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-void
.end method


# virtual methods
.method public getSeed()[B
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    return-object v0
.end method
