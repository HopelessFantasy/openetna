.class public Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAMultiPrimePrivateCrtKeySpec.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

.field private final primeExponentP:Ljava/math/BigInteger;

.field private final primeExponentQ:Ljava/math/BigInteger;

.field private final primeP:Ljava/math/BigInteger;

.field private final primeQ:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;)V
    .registers 14
    .parameter "modulus"
    .parameter "publicExponent"
    .parameter "privateExponent"
    .parameter "primeP"
    .parameter "primeQ"
    .parameter "primeExponentP"
    .parameter "primeExponentQ"
    .parameter "crtCoefficient"
    .parameter "otherPrimeInfo"

    .prologue
    const/4 v3, 0x0

    const-string v2, "security.83"

    .line 90
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 93
    if-nez p1, :cond_16

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "modulus"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_16
    if-nez p3, :cond_26

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "privateExponent"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_26
    if-nez p2, :cond_36

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "publicExponent"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_36
    if-nez p4, :cond_46

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "primeP"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_46
    if-nez p5, :cond_56

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "primeQ"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_56
    if-nez p6, :cond_66

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "primeExponentP"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_66
    if-nez p7, :cond_76

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "primeExponentQ"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_76
    if-nez p8, :cond_86

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "crtCoefficient"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_86
    if-eqz p9, :cond_b1

    .line 119
    array-length v0, p9

    if-nez v0, :cond_97

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.85"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_97
    array-length v0, p9

    new-array v0, v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    .line 125
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    array-length v1, v1

    invoke-static {p9, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_a4
    iput-object p2, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 131
    iput-object p4, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    .line 132
    iput-object p5, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    .line 133
    iput-object p6, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    .line 134
    iput-object p7, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    .line 135
    iput-object p8, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    .line 136
    return-void

    .line 128
    :cond_b1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    goto :goto_a4
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    if-nez v1, :cond_7

    .line 158
    const/4 v1, 0x0

    .line 163
    :goto_6
    return-object v1

    .line 160
    :cond_7
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/spec/RSAOtherPrimeInfo;

    .line 162
    .local v0, ret:[Ljava/security/spec/RSAOtherPrimeInfo;
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 163
    goto :goto_6
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
