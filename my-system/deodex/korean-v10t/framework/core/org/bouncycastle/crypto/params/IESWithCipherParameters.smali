.class public Lorg/bouncycastle/crypto/params/IESWithCipherParameters;
.super Lorg/bouncycastle/crypto/params/IESParameters;
.source "IESWithCipherParameters.java"


# instance fields
.field private cipherKeySize:I


# direct methods
.method public constructor <init>([B[BII)V
    .registers 5
    .parameter "derivation"
    .parameter "encoding"
    .parameter "macKeySize"
    .parameter "cipherKeySize"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/IESParameters;-><init>([B[BI)V

    .line 23
    iput p4, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCipherKeySize()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return v0
.end method
