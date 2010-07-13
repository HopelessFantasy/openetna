.class public Lorg/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 3
    .parameter "seed"
    .parameter "counter"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    .line 13
    iput p2, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 29
    instance-of v3, p1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    if-nez v3, :cond_7

    move v3, v5

    .line 54
    :goto_6
    return v3

    .line 34
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    move-object v2, v0

    .line 36
    .local v2, other:Lorg/bouncycastle/crypto/params/DSAValidationParameters;
    iget v3, v2, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v4, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-eq v3, v4, :cond_13

    move v3, v5

    .line 38
    goto :goto_6

    .line 41
    :cond_13
    iget-object v3, v2, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    array-length v4, v4

    if-eq v3, v4, :cond_1d

    move v3, v5

    .line 43
    goto :goto_6

    .line 46
    :cond_1d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    iget-object v3, v2, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    array-length v3, v3

    if-eq v1, v3, :cond_32

    .line 48
    iget-object v3, v2, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_2f

    move v3, v5

    .line 50
    goto :goto_6

    .line 46
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 54
    :cond_32
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public getCounter()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    return-object v0
.end method
