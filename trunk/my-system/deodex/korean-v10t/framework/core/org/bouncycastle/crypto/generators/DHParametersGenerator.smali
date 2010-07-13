.class public Lorg/bouncycastle/crypto/generators/DHParametersGenerator;
.super Ljava/lang/Object;
.source "DHParametersGenerator.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DHParameters;
    .registers 7

    .prologue
    .line 43
    iget v4, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 50
    .local v3, qLength:I
    :cond_5
    new-instance v2, Ljava/math/BigInteger;

    iget v4, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4, v5}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 51
    .local v2, q:Ljava/math/BigInteger;
    sget-object v4, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 52
    .local v1, p:Ljava/math/BigInteger;
    iget v4, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 64
    :cond_22
    new-instance v0, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 66
    .local v0, g:Ljava/math/BigInteger;
    sget-object v4, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 71
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 79
    new-instance v4, Lorg/bouncycastle/crypto/params/DHParameters;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v0, v2, v5}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-object v4
.end method

.method public init(IILjava/security/SecureRandom;)V
    .registers 4
    .parameter "size"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 29
    iput p1, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    .line 30
    iput p2, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    .line 31
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 32
    return-void
.end method
