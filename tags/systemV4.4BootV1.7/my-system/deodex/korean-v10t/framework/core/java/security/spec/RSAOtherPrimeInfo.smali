.class public Ljava/security/spec/RSAOtherPrimeInfo;
.super Ljava/lang/Object;
.source "RSAOtherPrimeInfo.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final prime:Ljava/math/BigInteger;

.field private final primeExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 7
    .parameter "prime"
    .parameter "primeExponent"
    .parameter "crtCoefficient"

    .prologue
    const-string v2, "security.83"

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_15

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "prime"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_15
    if-nez p2, :cond_25

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "primeExponent"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_25
    if-nez p3, :cond_35

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "crtCoefficient"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_35
    iput-object p1, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    .line 67
    iput-object p2, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    .line 68
    iput-object p3, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    .line 69
    return-void
.end method


# virtual methods
.method public final getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPrime()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    return-object v0
.end method
