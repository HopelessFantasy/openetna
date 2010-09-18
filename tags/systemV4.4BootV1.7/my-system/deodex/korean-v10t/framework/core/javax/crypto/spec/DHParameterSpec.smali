.class public Ljavax/crypto/spec/DHParameterSpec;
.super Ljava/lang/Object;
.source "DHParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final l:I

.field private final p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "p"
    .parameter "g"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 45
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 4
    .parameter "p"
    .parameter "g"
    .parameter "l"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 63
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 64
    iput p3, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 65
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method
