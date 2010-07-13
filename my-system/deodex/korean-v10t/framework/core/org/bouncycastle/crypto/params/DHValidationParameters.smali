.class public Lorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


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
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    .line 13
    iput p2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 19
    instance-of v3, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    if-nez v3, :cond_7

    move v3, v5

    .line 44
    :goto_6
    return v3

    .line 24
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    move-object v2, v0

    .line 26
    .local v2, other:Lorg/bouncycastle/crypto/params/DHValidationParameters;
    iget v3, v2, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v4, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-eq v3, v4, :cond_13

    move v3, v5

    .line 28
    goto :goto_6

    .line 31
    :cond_13
    iget-object v3, v2, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v4, v4

    if-eq v3, v4, :cond_1d

    move v3, v5

    .line 33
    goto :goto_6

    .line 36
    :cond_1d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    iget-object v3, v2, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v3, v3

    if-eq v1, v3, :cond_32

    .line 38
    iget-object v3, v2, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_2f

    move v3, v5

    .line 40
    goto :goto_6

    .line 36
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 44
    :cond_32
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 49
    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    .line 51
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v2, v2

    if-eq v1, v2, :cond_15

    .line 53
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v1, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 56
    :cond_15
    return v0
.end method
