.class public Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPrivateKeyParameters.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V
    .registers 4
    .parameter "x"
    .parameter "params"

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/DHParameters;)V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 27
    instance-of v2, p1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_7

    move v2, v4

    .line 39
    :goto_6
    return v2

    .line 32
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-object v1, v0

    .line 34
    .local v1, pKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v2, v4

    .line 36
    goto :goto_6

    .line 39
    :cond_19
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method
