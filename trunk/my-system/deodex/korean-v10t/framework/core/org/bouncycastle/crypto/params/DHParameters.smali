.class public Lorg/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lorg/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3
    .parameter "p"
    .parameter "g"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 5
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "j"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 32
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 33
    iput p4, p0, Lorg/bouncycastle/crypto/params/DHParameters;->j:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILorg/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 6
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 45
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 46
    iput p4, p0, Lorg/bouncycastle/crypto/params/DHParameters;->j:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 82
    instance-of v2, p1, Lorg/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_7

    move v2, v4

    .line 119
    :goto_6
    return v2

    .line 87
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHParameters;

    move-object v1, v0

    .line 89
    .local v1, pm:Lorg/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lorg/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 91
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lorg/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lorg/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/params/DHValidationParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    move v2, v4

    .line 93
    goto :goto_6

    .line 98
    :cond_21
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lorg/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v2

    if-eqz v2, :cond_29

    move v2, v4

    .line 100
    goto :goto_6

    .line 104
    :cond_29
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 106
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    move v2, v4

    .line 108
    goto :goto_6

    .line 113
    :cond_3f
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_47

    move v2, v4

    .line 115
    goto :goto_6

    .line 119
    :cond_47
    iget v2, p0, Lorg/bouncycastle/crypto/params/DHParameters;->j:I

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getJ()I

    move-result v3

    if-ne v2, v3, :cond_69

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    goto :goto_6

    :cond_69
    move v2, v4

    goto :goto_6
.end method

.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getJ()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lorg/bouncycastle/crypto/params/DHParameters;->j:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidationParameters()Lorg/bouncycastle/crypto/params/DHValidationParameters;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHParameters;->validation:Lorg/bouncycastle/crypto/params/DHValidationParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getJ()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
