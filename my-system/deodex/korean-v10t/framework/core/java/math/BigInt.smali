.class Ljava/math/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigInt$Context;
    }
.end annotation


# static fields
.field static defaultContext:Ljava/math/BigInt$Context; = null

.field static dummy:Ljava/math/BigInt; = null

.field private static final serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field transient bignum:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    sput-object v0, Ljava/math/BigInt;->dummy:Ljava/math/BigInt;

    .line 47
    new-instance v0, Ljava/math/BigInt$Context;

    sget-object v1, Ljava/math/BigInt;->dummy:Ljava/math/BigInt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/math/BigInt$Context;-><init>(Ljava/math/BigInt;)V

    sput-object v0, Ljava/math/BigInt;->defaultContext:Ljava/math/BigInt$Context;

    .line 48
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    return-void
.end method

.method private static Check(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 109
    if-nez p0, :cond_19

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(openssl)ERR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {v1}, Ljava/math/BigInt;->consumeErrors(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 112
    .local v0, cnt:I
    if-lez v0, :cond_19

    .line 113
    new-instance v2, Ljava/lang/ArithmeticException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v0           #cnt:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_19
    return-void
.end method

.method public static addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 298
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 299
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Lorg/openssl/NativeBN;->BN_add(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 300
    return-object v0
.end method

.method public static bigExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 8
    .parameter "a"
    .parameter "p"
    .parameter "t"

    .prologue
    .line 332
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 333
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/openssl/NativeBN;->BN_exp(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 334
    return-object v0
.end method

.method public static cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 134
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1}, Lorg/openssl/NativeBN;->BN_cmp(II)I

    move-result v0

    return v0
.end method

.method public static consumeErrors(Ljava/lang/StringBuilder;)I
    .registers 8
    .parameter "sb"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, cnt:I
    const/4 v2, 0x1

    .line 86
    .local v2, first:Z
    :goto_2
    invoke-static {}, Lorg/openssl/NativeBN;->ERR_get_error()I

    move-result v1

    .local v1, e:I
    if-eqz v1, :cond_4f

    .line 87
    and-int/lit16 v3, v1, 0xff

    .line 88
    .local v3, reason:I
    const/16 v5, 0x67

    if-ne v3, v5, :cond_1a

    .line 90
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "math.17"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_1a
    const/16 v5, 0x6c

    if-ne v3, v5, :cond_2a

    .line 94
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "math.19"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_2a
    const/16 v5, 0x41

    if-ne v3, v5, :cond_34

    .line 97
    new-instance v5, Ljava/lang/OutOfMemoryError;

    invoke-direct {v5}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v5

    .line 99
    :cond_34
    if-nez v2, :cond_3c

    const-string v5, " *** "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 100
    :cond_3c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v1}, Lorg/openssl/NativeBN;->ERR_error_string(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, s:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_2

    .line 105
    .end local v3           #reason:I
    .end local v4           #s:Ljava/lang/String;
    :cond_4f
    return v0
.end method

.method public static division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;Ljava/math/BigInt;Ljava/math/BigInt;)V
    .registers 10
    .parameter "dividend"
    .parameter "divisor"
    .parameter "t"
    .parameter "quotient"
    .parameter "remainder"

    .prologue
    .line 350
    if-eqz p3, :cond_1e

    .line 351
    invoke-direct {p3}, Ljava/math/BigInt;->makeValid()V

    .line 352
    iget v0, p3, Ljava/math/BigInt;->bignum:I

    .line 355
    .local v0, quot:I
    :goto_7
    if-eqz p4, :cond_20

    .line 356
    invoke-direct {p4}, Ljava/math/BigInt;->makeValid()V

    .line 357
    iget v1, p4, Ljava/math/BigInt;->bignum:I

    .line 360
    .local v1, rem:I
    :goto_e
    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/openssl/NativeBN;->BN_div(IIIII)Z

    move-result v2

    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    .line 361
    return-void

    .line 354
    .end local v0           #quot:I
    .end local v1           #rem:I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0       #quot:I
    goto :goto_7

    .line 359
    :cond_20
    const/4 v1, 0x0

    .restart local v1       #rem:I
    goto :goto_e
.end method

.method public static exp(Ljava/math/BigInt;ILjava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "p"
    .parameter "t"

    .prologue
    .line 339
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 340
    .local v0, power:Ljava/math/BigInt;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putLongInt(J)V

    .line 341
    invoke-static {p0, v0, p2}, Ljava/math/BigInt;->bigExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v1

    return-object v1
.end method

.method public static gcd(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 8
    .parameter "a"
    .parameter "b"
    .parameter "t"

    .prologue
    .line 315
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 316
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/openssl/NativeBN;->BN_gcd(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 317
    return-object v0
.end method

.method public static generatePrimeDefault(ILjava/util/Random;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 10
    .parameter "bitLength"
    .parameter "rnd"
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 390
    .local v6, r:Ljava/math/BigInt;
    iget v0, v6, Ljava/math/BigInt;->bignum:I

    move v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/openssl/NativeBN;->BN_generate_prime_ex(IIZIII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 391
    return-object v6
.end method

.method public static generatePrimeSafe(ILjava/util/Random;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 10
    .parameter "bitLength"
    .parameter "rnd"
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 395
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 396
    .local v6, r:Ljava/math/BigInt;
    iget v0, v6, Ljava/math/BigInt;->bignum:I

    const/4 v2, 0x1

    move v1, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/openssl/NativeBN;->BN_generate_prime_ex(IIZIII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 397
    return-object v6
.end method

.method static getCtx(Ljava/math/BigInt$Context;)I
    .registers 2
    .parameter "t"

    .prologue
    .line 51
    if-eqz p0, :cond_5

    iget v0, p0, Ljava/math/BigInt$Context;->bnctx:I

    :goto_4
    return v0

    :cond_5
    sget-object v0, Ljava/math/BigInt;->defaultContext:Ljava/math/BigInt$Context;

    iget v0, v0, Ljava/math/BigInt$Context;->bnctx:I

    goto :goto_4
.end method

.method private makeValid()V
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-nez v0, :cond_12

    .line 120
    invoke-static {}, Lorg/openssl/NativeBN;->BN_new()I

    move-result v0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    .line 121
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 123
    :cond_12
    return-void

    .line 121
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 10
    .parameter "a"
    .parameter "p"
    .parameter "m"
    .parameter "t"

    .prologue
    .line 372
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 373
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    iget v4, p2, Ljava/math/BigInt;->bignum:I

    invoke-static {p3}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lorg/openssl/NativeBN;->BN_mod_exp(IIIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 377
    return-object v0
.end method

.method public static modInverse(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 8
    .parameter "a"
    .parameter "m"
    .parameter "t"

    .prologue
    .line 382
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 383
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/openssl/NativeBN;->BN_mod_inverse(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 384
    return-object v0
.end method

.method public static modulus(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 8
    .parameter "a"
    .parameter "m"
    .parameter "t"

    .prologue
    .line 365
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 366
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/openssl/NativeBN;->BN_nnmod(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 367
    return-object v0
.end method

.method private static newBigInt()Ljava/math/BigInt;
    .registers 2

    .prologue
    .line 126
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 127
    .local v0, bi:Ljava/math/BigInt;
    invoke-static {}, Lorg/openssl/NativeBN;->BN_new()I

    move-result v1

    iput v1, v0, Ljava/math/BigInt;->bignum:I

    .line 128
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 129
    return-object v0

    .line 128
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static product(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;
    .registers 8
    .parameter "a"
    .parameter "b"
    .parameter "t"

    .prologue
    .line 321
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 322
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/openssl/NativeBN;->BN_mul(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 323
    return-object v0
.end method

.method public static remainderByPositiveInt(Ljava/math/BigInt;I)I
    .registers 4
    .parameter "a"
    .parameter "w"

    .prologue
    .line 292
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, p1}, Lorg/openssl/NativeBN;->BN_mod_word(II)I

    move-result v0

    .line 293
    .local v0, rem:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_a
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 294
    return v0

    .line 293
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static shift(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .registers 5
    .parameter "a"
    .parameter "n"

    .prologue
    .line 264
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 265
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, p1}, Lorg/openssl/NativeBN;->BN_lshift(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 266
    return-object v0
.end method

.method public static subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 308
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 309
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Lorg/openssl/NativeBN;->BN_sub(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 310
    return-object v0
.end method


# virtual methods
.method public add(Ljava/math/BigInt;)V
    .registers 5
    .parameter "a"

    .prologue
    .line 304
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    iget v2, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, v2}, Lorg/openssl/NativeBN;->BN_add(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 305
    return-void
.end method

.method public addPositiveInt(I)V
    .registers 3
    .parameter "w"

    .prologue
    .line 274
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Lorg/openssl/NativeBN;->BN_add_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 275
    return-void
.end method

.method public bigEndianMagnitude()[B
    .registers 4

    .prologue
    .line 219
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/openssl/NativeBN;->BN_bn2bin(I[B)[B

    move-result-object v0

    .line 220
    .local v0, a:[B
    return-object v0
.end method

.method public bigEndianTwosComplement()[B
    .registers 4

    .prologue
    .line 229
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/openssl/NativeBN;->bn2twosComp(I[B)[B

    move-result-object v0

    .line 230
    .local v0, a:[B
    return-object v0
.end method

.method public bitLength()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Lorg/openssl/NativeBN;->bitLength(I)I

    move-result v0

    return v0
.end method

.method public copy()Ljava/math/BigInt;
    .registers 2

    .prologue
    .line 144
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 145
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, p0}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    .line 146
    return-object v0
.end method

.method public decString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 209
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1}, Lorg/openssl/NativeBN;->BN_bn2dec(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-eqz v0, :cond_c

    .line 63
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Lorg/openssl/NativeBN;->BN_free(I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    .line 66
    :cond_c
    return-void
.end method

.method public divideByPositiveInt(I)I
    .registers 4
    .parameter "w"

    .prologue
    .line 286
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, p1}, Lorg/openssl/NativeBN;->BN_div_word(II)I

    move-result v0

    .line 287
    .local v0, rem:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_a
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 288
    return v0

    .line 287
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/math/BigInt;->dispose()V

    .line 71
    return-void
.end method

.method public getNativeBIGNUM()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    return v0
.end method

.method public hexString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1}, Lorg/openssl/NativeBN;->BN_bn2hex(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public isBitSet(I)Z
    .registers 3
    .parameter "n"

    .prologue
    .line 253
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Lorg/openssl/NativeBN;->BN_is_bit_set(II)Z

    move-result v0

    return v0
.end method

.method public isPrime(ILjava/util/Random;Ljava/math/BigInt$Context;)Z
    .registers 7
    .parameter "certainty"
    .parameter "rnd"
    .parameter "t"

    .prologue
    .line 401
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p3}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/openssl/NativeBN;->BN_is_prime_ex(IIII)Z

    move-result v0

    return v0
.end method

.method public littleEndianIntsMagnitude()[I
    .registers 4

    .prologue
    .line 224
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/openssl/NativeBN;->bn2litEndInts(I[I)[I

    move-result-object v0

    .line 225
    .local v0, a:[I
    return-object v0
.end method

.method public longInt()J
    .registers 3

    .prologue
    .line 205
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Lorg/openssl/NativeBN;->longInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public modifyBit(II)V
    .registers 4
    .parameter "n"
    .parameter "op"

    .prologue
    .line 258
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2}, Lorg/openssl/NativeBN;->modifyBit(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 259
    return-void
.end method

.method public multiplyBy(Ljava/math/BigInt;Ljava/math/BigInt$Context;)V
    .registers 7
    .parameter "a"
    .parameter "t"

    .prologue
    .line 327
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    iget v2, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {p2}, Ljava/math/BigInt;->getCtx(Ljava/math/BigInt$Context;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/openssl/NativeBN;->BN_mul(IIII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 328
    return-void
.end method

.method public multiplyByPositiveInt(I)V
    .registers 3
    .parameter "w"

    .prologue
    .line 282
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Lorg/openssl/NativeBN;->BN_mul_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 283
    return-void
.end method

.method public putBigEndian([BZ)V
    .registers 5
    .parameter "a"
    .parameter "neg"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 190
    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, p2, v1}, Lorg/openssl/NativeBN;->BN_bin2bn([BIZI)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 191
    return-void
.end method

.method public putBigEndianTwosComplement([B)V
    .registers 4
    .parameter "a"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 200
    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, v1}, Lorg/openssl/NativeBN;->twosComp2bn([BII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 201
    return-void
.end method

.method public putCopy(Ljava/math/BigInt;)V
    .registers 4
    .parameter "from"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 140
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1}, Lorg/openssl/NativeBN;->BN_copy(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 141
    return-void
.end method

.method public putDecString(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 161
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 162
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 164
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "math.12"

    invoke-static {v2}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1a
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 167
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, p1}, Lorg/openssl/NativeBN;->BN_dec2bn(ILjava/lang/String;)I

    move-result v0

    .line 168
    .local v0, usedLen:I
    if-lez v0, :cond_35

    const/4 v1, 0x1

    :goto_26
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 170
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_35
    const/4 v1, 0x0

    goto :goto_26

    .line 172
    :cond_37
    return-void
.end method

.method public putHexString(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 175
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 176
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 178
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "math.12"

    invoke-static {v2}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1a
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 181
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, p1}, Lorg/openssl/NativeBN;->BN_hex2bn(ILjava/lang/String;)I

    move-result v0

    .line 182
    .local v0, usedLen:I
    if-lez v0, :cond_35

    const/4 v1, 0x1

    :goto_26
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 184
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_35
    const/4 v1, 0x0

    goto :goto_26

    .line 186
    :cond_37
    return-void
.end method

.method public putLittleEndianInts([IZ)V
    .registers 5
    .parameter "a"
    .parameter "neg"

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 195
    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, p2, v1}, Lorg/openssl/NativeBN;->litEndInts2bn([IIZI)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 196
    return-void
.end method

.method public putLongInt(J)V
    .registers 4
    .parameter "val"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 152
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2}, Lorg/openssl/NativeBN;->putLongInt(IJ)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 153
    return-void
.end method

.method public putULongInt(JZ)V
    .registers 5
    .parameter "val"
    .parameter "neg"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 157
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2, p3}, Lorg/openssl/NativeBN;->putULongInt(IJZ)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 158
    return-void
.end method

.method public setSign(I)V
    .registers 4
    .parameter "val"

    .prologue
    .line 239
    if-lez p1, :cond_9

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openssl/NativeBN;->BN_set_negative(II)V

    .line 241
    :cond_8
    :goto_8
    return-void

    .line 240
    :cond_9
    if-gez p1, :cond_8

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openssl/NativeBN;->BN_set_negative(II)V

    goto :goto_8
.end method

.method public shift(I)V
    .registers 4
    .parameter "n"

    .prologue
    .line 270
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, p1}, Lorg/openssl/NativeBN;->BN_lshift(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 271
    return-void
.end method

.method public sign()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Lorg/openssl/NativeBN;->sign(I)I

    move-result v0

    return v0
.end method

.method public subtractPositiveInt(I)V
    .registers 3
    .parameter "w"

    .prologue
    .line 278
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Lorg/openssl/NativeBN;->BN_sub_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public twosCompFitsIntoBytes(I)Z
    .registers 3
    .parameter "byteCnt"

    .prologue
    .line 245
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Lorg/openssl/NativeBN;->twosCompFitsIntoBytes(II)Z

    move-result v0

    return v0
.end method
