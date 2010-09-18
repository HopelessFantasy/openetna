.class Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final INSTANCE:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper; = null

.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static TWO:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ZERO:Ljava/math/BigInteger;

    .line 13
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private createInRange(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 8
    .parameter "max"
    .parameter "random"

    .prologue
    const/16 v4, 0x3e8

    .line 46
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 47
    .local v1, maxLength:I
    const/4 v0, 0x0

    .line 51
    .local v0, count:I
    :cond_7
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 52
    .local v2, x:Ljava/math/BigInteger;
    add-int/lit8 v0, v0, 0x1

    .line 54
    sget-object v3, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_1e

    :cond_1c
    if-ne v0, v4, :cond_7

    .line 56
    :cond_1e
    if-ne v0, v4, :cond_2e

    .line 58
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 61
    :goto_2d
    return-object v3

    :cond_2e
    move-object v3, v2

    goto :goto_2d
.end method


# virtual methods
.method calculatePrivate(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Ljava/math/BigInteger;
    .registers 7
    .parameter "p"
    .parameter "random"
    .parameter "limit"

    .prologue
    .line 24
    sget-object v2, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 27
    .local v0, pSub2:Ljava/math/BigInteger;
    if-nez p3, :cond_d

    .line 29
    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->createInRange(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 40
    .local v1, x:Ljava/math/BigInteger;
    :goto_c
    return-object v1

    .line 35
    .end local v1           #x:Ljava/math/BigInteger;
    :cond_d
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 37
    .restart local v1       #x:Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_c
.end method

.method calculatePublic(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "p"
    .parameter "g"
    .parameter "x"

    .prologue
    .line 66
    invoke-virtual {p2, p3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
