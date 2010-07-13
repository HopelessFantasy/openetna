.class public Ljava/security/spec/RSAPrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAPrivateCrtKeySpec.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final primeExponentP:Ljava/math/BigInteger;

.field private final primeExponentQ:Ljava/math/BigInteger;

.field private final primeP:Ljava/math/BigInteger;

.field private final primeQ:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 9
    .parameter "modulus"
    .parameter "publicExponent"
    .parameter "privateExponent"
    .parameter "primeP"
    .parameter "primeQ"
    .parameter "primeExponentP"
    .parameter "primeExponentQ"
    .parameter "crtCoefficient"

    .prologue
    .line 79
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 81
    iput-object p2, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 82
    iput-object p4, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    .line 83
    iput-object p5, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    .line 84
    iput-object p6, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    .line 85
    iput-object p7, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    .line 86
    iput-object p8, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    .line 87
    return-void
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
