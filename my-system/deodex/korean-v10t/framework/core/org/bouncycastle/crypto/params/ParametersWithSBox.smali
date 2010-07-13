.class public Lorg/bouncycastle/crypto/params/ParametersWithSBox;
.super Ljava/lang/Object;
.source "ParametersWithSBox.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/bouncycastle/crypto/CipherParameters;

.field private sBox:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V
    .registers 3
    .parameter "parameters"
    .parameter "sBox"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->sBox:[B

    .line 17
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSBox()[B
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->sBox:[B

    return-object v0
.end method
