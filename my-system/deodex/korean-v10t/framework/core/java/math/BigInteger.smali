.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final EQUALS:I = 0x0

.field static final GREATER:I = 0x1

.field static final LESS:I = -0x1

.field static final MINUS_ONE:Ljava/math/BigInteger; = null

.field public static final ONE:Ljava/math/BigInteger; = null

.field static final SMALL_VALUES:[Ljava/math/BigInteger; = null

.field public static final TEN:Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigInteger; = null

.field private static final serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field transient bigInt:Ljava/math/BigInt;

.field private transient bigIntIsValid:Z

.field transient digits:[I

.field private transient firstNonzeroDigit:I

.field private transient hashCode:I

.field private magnitude:[B

.field transient numberLength:I

.field private transient oldReprIsValid:Z

.field transient sign:I

.field private signum:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 157
    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 164
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 171
    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v1, 0xa

    invoke-direct {v0, v5, v1, v2}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 174
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 186
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v1, v0, v3

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    sput-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(IILjava/util/Random;)V
    .registers 6
    .parameter "bitLength"
    .parameter "certainty"
    .parameter "rnd"

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 306
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1c

    .line 308
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.1C"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1c
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Ljava/math/BigInt;->generatePrimeDefault(ILjava/util/Random;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 313
    return-void
.end method

.method constructor <init>(II[I)V
    .registers 6
    .parameter "sign"
    .parameter "numberLength"
    .parameter "digits"

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 235
    iput p1, p0, Ljava/math/BigInteger;->sign:I

    .line 236
    iput p2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 237
    iput-object p3, p0, Ljava/math/BigInteger;->digits:[I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 239
    const-string v0, "BigInteger(int sign, int numberLength, int[] digits)"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    .line 240
    return-void
.end method

.method constructor <init>(IJ)V
    .registers 7
    .parameter "sign"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 216
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 217
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    if-gez p1, :cond_1a

    move v1, v2

    :cond_1a
    invoke-virtual {v0, p2, p3, v1}, Ljava/math/BigInt;->putULongInt(JZ)V

    .line 218
    iput-boolean v2, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 220
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .registers 9
    .parameter "numBits"
    .parameter "rnd"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v2, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v2, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 259
    if-gez p1, :cond_1c

    .line 261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "math.1B"

    invoke-static {v2}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_1c
    if-nez p1, :cond_30

    .line 264
    iput v2, p0, Ljava/math/BigInteger;->sign:I

    .line 265
    iput v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 266
    new-array v1, v5, [I

    aput v2, v1, v2

    iput-object v1, p0, Ljava/math/BigInteger;->digits:[I

    .line 278
    :goto_28
    iput-boolean v5, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 279
    const-string v1, "BigInteger(int numBits, Random rnd)"

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    .line 280
    return-void

    .line 268
    :cond_30
    iput v5, p0, Ljava/math/BigInteger;->sign:I

    .line 269
    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    iput v1, p0, Ljava/math/BigInteger;->numberLength:I

    .line 270
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v1, v1, [I

    iput-object v1, p0, Ljava/math/BigInteger;->digits:[I

    .line 271
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v1, :cond_4e

    .line 272
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 275
    :cond_4e
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v2, v5

    aget v3, v1, v2

    neg-int v4, p1

    and-int/lit8 v4, v4, 0x1f

    ushr-int/2addr v3, v4

    aput v3, v1, v2

    .line 276
    invoke-virtual {p0}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    goto :goto_28
.end method

.method public constructor <init>(I[B)V
    .registers 10
    .parameter "signum"
    .parameter "magnitude"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 405
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v5, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v5, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v4, -0x2

    iput v4, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v5, p0, Ljava/math/BigInteger;->hashCode:I

    .line 406
    if-nez p2, :cond_16

    .line 407
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 409
    :cond_16
    const/4 v4, -0x1

    if-lt p1, v4, :cond_1b

    if-le p1, v6, :cond_27

    .line 411
    :cond_1b
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "math.13"

    invoke-static {v5}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 413
    :cond_27
    if-nez p1, :cond_41

    .line 414
    move-object v0, p2

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2c
    if-ge v2, v3, :cond_41

    aget-byte v1, v0, v2

    .line 415
    .local v1, element:B
    if-eqz v1, :cond_3e

    .line 417
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "math.14"

    invoke-static {v5}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 421
    .end local v0           #arr$:[B
    .end local v1           #element:B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_41
    new-instance v4, Ljava/math/BigInt;

    invoke-direct {v4}, Ljava/math/BigInt;-><init>()V

    iput-object v4, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 422
    iget-object v4, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    if-gez p1, :cond_4d

    move v5, v6

    :cond_4d
    invoke-virtual {v4, p2, v5}, Ljava/math/BigInt;->putBigEndian([BZ)V

    .line 423
    iput-boolean v6, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 424
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "val"

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 331
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 332
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter "val"
    .parameter "radix"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 358
    if-nez p1, :cond_16

    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 361
    :cond_16
    const/16 v0, 0xa

    if-ne p2, v0, :cond_29

    .line 362
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 363
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    .line 364
    iput-boolean v2, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 383
    :goto_28
    return-void

    .line 366
    :cond_29
    const/16 v0, 0x10

    if-ne p2, v0, :cond_3c

    .line 367
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 368
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putHexString(Ljava/lang/String;)V

    .line 369
    iput-boolean v2, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    goto :goto_28

    .line 372
    :cond_3c
    const/4 v0, 0x2

    if-lt p2, v0, :cond_43

    const/16 v0, 0x24

    if-le p2, v0, :cond_4f

    .line 374
    :cond_43
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "math.11"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_61

    .line 378
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "math.12"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_61
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->setFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V

    goto :goto_28
.end method

.method constructor <init>(Ljava/math/BigInt;)V
    .registers 4
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 209
    iput-object p1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 211
    const-string v0, "BigInteger(BigInt)"

    const-string v1, "this"

    invoke-virtual {p0, v0, v1}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "val"

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 77
    iput-boolean v1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 203
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 442
    array-length v0, p1

    if-nez v0, :cond_1c

    .line 444
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "math.12"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1c
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 447
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putBigEndianTwosComplement([B)V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 449
    return-void
.end method

.method static inplaceAdd([III)I
    .registers 10
    .parameter "a"
    .parameter "aSize"
    .parameter "addend"

    .prologue
    const-wide v5, 0xffffffffL

    .line 1493
    int-to-long v3, p2

    and-long v0, v3, v5

    .line 1495
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1f

    if-ge v2, p1, :cond_1f

    .line 1496
    aget v3, p0, v2

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1497
    long-to-int v3, v0

    aput v3, p0, v2

    .line 1498
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1495
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1500
    :cond_1f
    long-to-int v3, v0

    return v3
.end method

.method static multiplyByInt([I[III)I
    .registers 13
    .parameter "res"
    .parameter "a"
    .parameter "aSize"
    .parameter "factor"

    .prologue
    const-wide v7, 0xffffffffL

    .line 1482
    const-wide/16 v0, 0x0

    .line 1484
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, p2, :cond_1b

    .line 1485
    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v7

    int-to-long v5, p3

    and-long/2addr v5, v7

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1486
    long-to-int v3, v0

    aput v3, p0, v2

    .line 1487
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 1484
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1489
    :cond_1b
    long-to-int v3, v0

    return v3
.end method

.method public static probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .registers 4
    .parameter "bitLength"
    .parameter "rnd"

    .prologue
    .line 1403
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1610
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1611
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 1612
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v1, p0, Ljava/math/BigInteger;->magnitude:[B

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    if-gez v2, :cond_1a

    move v2, v3

    :goto_14
    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putBigEndian([BZ)V

    .line 1613
    iput-boolean v3, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 1615
    return-void

    .line 1612
    :cond_1a
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private static setFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V
    .registers 13
    .parameter "bi"
    .parameter "val"
    .parameter "radix"

    .prologue
    .line 1508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1510
    .local v2, stringLength:I
    move v5, v2

    .line 1512
    .local v5, endChar:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_52

    .line 1513
    const/4 v0, -0x1

    .line 1514
    .local v0, sign:I
    const/4 v1, 0x1

    .line 1515
    .local v1, startChar:I
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    .end local v1           #startChar:I
    .local v3, startChar:I
    move v7, v0

    .end local v0           #sign:I
    .local v7, sign:I
    move v1, v2

    .line 1528
    .end local v2           #stringLength:I
    .local v1, stringLength:I
    :goto_15
    sget-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    aget v2, v0, p2

    .line 1529
    .local v2, charsPerInt:I
    div-int v0, v1, v2

    .line 1530
    .local v0, bigRadixDigitsLength:I
    rem-int v6, v1, v2

    .line 1532
    .local v6, topChars:I
    if-eqz v6, :cond_21

    .line 1533
    add-int/lit8 v0, v0, 0x1

    .line 1535
    :cond_21
    new-array v4, v0, [I

    .line 1537
    .local v4, digits:[I
    sget-object v0, Ljava/math/Conversion;->bigRadices:[I

    .end local v0           #bigRadixDigitsLength:I
    const/4 v1, 0x2

    sub-int v1, p2, v1

    aget v0, v0, v1

    .line 1539
    .end local v1           #stringLength:I
    .local v0, bigRadix:I
    const/4 v1, 0x0

    .line 1540
    .local v1, digitIndex:I
    if-nez v6, :cond_2e

    move v6, v2

    .end local v6           #topChars:I
    :cond_2e
    add-int/2addr v6, v3

    .line 1543
    .local v6, substrEnd:I
    move v3, v3

    .local v3, substrStart:I
    move v8, v6

    .end local v6           #substrEnd:I
    .local v8, substrEnd:I
    move v9, v3

    .end local v3           #substrStart:I
    .local v9, substrStart:I
    move v3, v1

    .end local v1           #digitIndex:I
    .local v3, digitIndex:I
    move v1, v9

    .end local v9           #substrStart:I
    .local v1, substrStart:I
    :goto_34
    if-ge v1, v5, :cond_58

    .line 1545
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1           #substrStart:I
    invoke-static {v1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1547
    .local v1, bigRadixDigit:I
    invoke-static {v4, v4, v3, v0}, Ljava/math/BigInteger;->multiplyByInt([I[III)I

    move-result v6

    .line 1548
    .local v6, newDigit:I
    invoke-static {v4, v3, v1}, Ljava/math/BigInteger;->inplaceAdd([III)I

    move-result v1

    .end local v1           #bigRadixDigit:I
    add-int/2addr v6, v1

    .line 1549
    add-int/lit8 v1, v3, 0x1

    .end local v3           #digitIndex:I
    .local v1, digitIndex:I
    aput v6, v4, v3

    .line 1543
    move v6, v8

    .local v6, substrStart:I
    add-int v3, v6, v2

    .end local v8           #substrEnd:I
    .local v3, substrEnd:I
    move v8, v3

    .end local v3           #substrEnd:I
    .restart local v8       #substrEnd:I
    move v3, v1

    .end local v1           #digitIndex:I
    .local v3, digitIndex:I
    move v1, v6

    .end local v6           #substrStart:I
    .local v1, substrStart:I
    goto :goto_34

    .line 1517
    .end local v0           #bigRadix:I
    .end local v1           #substrStart:I
    .end local v3           #digitIndex:I
    .end local v4           #digits:[I
    .end local v7           #sign:I
    .end local v8           #substrEnd:I
    .local v2, stringLength:I
    :cond_52
    const/4 v0, 0x1

    .line 1518
    .local v0, sign:I
    const/4 v1, 0x0

    .local v1, startChar:I
    move v3, v1

    .end local v1           #startChar:I
    .local v3, startChar:I
    move v7, v0

    .end local v0           #sign:I
    .restart local v7       #sign:I
    move v1, v2

    .end local v2           #stringLength:I
    .local v1, stringLength:I
    goto :goto_15

    .line 1551
    .local v0, bigRadix:I
    .local v1, substrStart:I
    .local v2, charsPerInt:I
    .local v3, digitIndex:I
    .restart local v4       #digits:[I
    .restart local v8       #substrEnd:I
    :cond_58
    move p1, v3

    .line 1552
    .local p1, numberLength:I
    iput v7, p0, Ljava/math/BigInteger;->sign:I

    .line 1553
    iput p1, p0, Ljava/math/BigInteger;->numberLength:I

    .line 1554
    iput-object v4, p0, Ljava/math/BigInteger;->digits:[I

    .line 1555
    invoke-virtual {p0}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 1556
    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 1557
    .end local p1           #numberLength:I
    const-string p1, "Cordoba-BigInteger: private static setFromString"

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    .line 1558
    return-void
.end method

.method private twosComplement()[B
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1416
    const-string v12, "twosComplement()"

    invoke-virtual {p0, v12}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 1417
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-nez v12, :cond_10

    .line 1418
    new-array v12, v14, [B

    aput-byte v13, v12, v13

    .line 1477
    :goto_f
    return-object v12

    .line 1420
    :cond_10
    move-object v11, p0

    .line 1421
    .local v11, temp:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 1422
    .local v0, bitLen:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v10

    .line 1423
    .local v10, iThis:I
    shr-int/lit8 v12, v0, 0x3

    add-int/lit8 v3, v12, 0x1

    .line 1426
    .local v3, bytesLen:I
    new-array v1, v3, [B

    .line 1427
    .local v1, bytes:[B
    const/4 v6, 0x0

    .line 1429
    .local v6, firstByteNumber:I
    const/4 v5, 0x0

    .line 1430
    .local v5, digitIndex:I
    const/4 v2, 0x4

    .line 1434
    .local v2, bytesInInteger:I
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v12, v12, 0x2

    sub-int v12, v3, v12

    if-ne v12, v14, :cond_58

    .line 1435
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_56

    const/4 v12, -0x1

    :goto_2f
    int-to-byte v12, v12

    aput-byte v12, v1, v13

    .line 1436
    const/4 v8, 0x4

    .line 1437
    .local v8, highBytes:I
    add-int/lit8 v6, v6, 0x1

    .line 1443
    :goto_35
    move v5, v10

    .line 1444
    shl-int/lit8 v12, v10, 0x2

    sub-int/2addr v3, v12

    .line 1446
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_7d

    .line 1447
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    neg-int v4, v12

    .line 1448
    .local v4, digit:I
    add-int/lit8 v5, v5, 0x1

    .line 1449
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_49

    .line 1450
    move v2, v8

    .line 1452
    :cond_49
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4a
    if-ge v9, v2, :cond_61

    .line 1453
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1452
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_4a

    .end local v4           #digit:I
    .end local v8           #highBytes:I
    .end local v9           #i:I
    :cond_56
    move v12, v13

    .line 1435
    goto :goto_2f

    .line 1439
    :cond_58
    and-int/lit8 v7, v3, 0x3

    .line 1440
    .local v7, hB:I
    if-nez v7, :cond_5f

    const/4 v12, 0x4

    move v8, v12

    .restart local v8       #highBytes:I
    :goto_5e
    goto :goto_35

    .end local v8           #highBytes:I
    :cond_5f
    move v8, v7

    goto :goto_5e

    .line 1455
    .end local v7           #hB:I
    .restart local v4       #digit:I
    .restart local v8       #highBytes:I
    .restart local v9       #i:I
    :cond_61
    if-le v3, v6, :cond_97

    .line 1456
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    xor-int/lit8 v4, v12, -0x1

    .line 1457
    add-int/lit8 v5, v5, 0x1

    .line 1458
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_70

    .line 1459
    move v2, v8

    .line 1461
    :cond_70
    const/4 v9, 0x0

    :goto_71
    if-ge v9, v2, :cond_61

    .line 1462
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1461
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_71

    .line 1466
    .end local v4           #digit:I
    .end local v9           #i:I
    :cond_7d
    if-le v3, v6, :cond_97

    .line 1467
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v4, v12, v5

    .line 1468
    .restart local v4       #digit:I
    add-int/lit8 v5, v5, 0x1

    .line 1469
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_8a

    .line 1470
    move v2, v8

    .line 1472
    :cond_8a
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_8b
    if-ge v9, v2, :cond_7d

    .line 1473
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1472
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_8b

    .end local v4           #digit:I
    .end local v9           #i:I
    :cond_97
    move-object v12, v1

    .line 1477
    goto/16 :goto_f
.end method

.method static validate1(Ljava/lang/String;Ljava/math/BigInteger;)V
    .registers 3
    .parameter "caller"
    .parameter "a"

    .prologue
    .line 118
    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "caller"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 122
    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "2"

    invoke-virtual {p2, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method static validate3(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "caller"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 127
    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "2"

    invoke-virtual {p2, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "3"

    invoke-virtual {p3, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method static validate4(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .parameter "caller"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 133
    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "2"

    invoke-virtual {p2, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "3"

    invoke-virtual {p3, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "4"

    invoke-virtual {p4, p0, v0}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static valueOf(J)Ljava/math/BigInteger;
    .registers 6
    .parameter "val"

    .prologue
    .line 465
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    .line 466
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    .line 467
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    neg-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    .line 473
    :goto_13
    return-object v0

    .line 469
    :cond_14
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    goto :goto_13

    .line 470
    :cond_17
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gtz v0, :cond_23

    .line 471
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_13

    .line 473
    :cond_23
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/math/BigInteger;-><init>(IJ)V

    goto :goto_13
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1622
    const-string v0, "writeObject"

    const-string v1, "this"

    invoke-virtual {p0, v0, v1}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 1625
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->bigEndianMagnitude()[B

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->magnitude:[B

    .line 1626
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1627
    return-void
.end method


# virtual methods
.method public abs()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 498
    const-string v1, "abs()"

    invoke-static {v1, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 499
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v1

    if-ltz v1, :cond_f

    move-object v1, p0

    .line 503
    :goto_e
    return-object v1

    .line 501
    :cond_f
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 502
    .local v0, a:Ljava/math/BigInt;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->setSign(I)V

    .line 503
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_e
.end method

.method public add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "val"

    .prologue
    .line 537
    const-string v0, "add"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 538
    iget-object v0, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    if-nez v0, :cond_f

    move-object v0, p0

    .line 540
    :goto_e
    return-object v0

    .line 539
    :cond_f
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    if-nez v0, :cond_19

    move-object v0, p1

    goto :goto_e

    .line 540
    :cond_19
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-static {v1, v2}, Ljava/math/BigInt;->addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_e
.end method

.method public and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"

    .prologue
    .line 858
    const-string v0, "and1"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 859
    const-string v0, "and2"

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 860
    invoke-static {p0, p1}, Ljava/math/Logical;->and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"

    .prologue
    .line 920
    const-string v0, "andNot1"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 921
    const-string v0, "andNot2"

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 922
    invoke-static {p0, p1}, Ljava/math/Logical;->andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "andNot"

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bitCount()I
    .registers 2

    .prologue
    .line 823
    const-string v0, "bitCount"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 824
    invoke-static {p0}, Ljava/math/BitLevel;->bitCount(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public bitLength()I
    .registers 2

    .prologue
    .line 647
    iget-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Ljava/math/BitLevel;->bitLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 650
    :goto_c
    return v0

    .line 649
    :cond_d
    const-string v0, "bitLength"

    invoke-static {v0, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 650
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->bitLength()I

    move-result v0

    goto :goto_c
.end method

.method public clearBit(I)Ljava/math/BigInteger;
    .registers 3
    .parameter "n"

    .prologue
    .line 749
    const-string v0, "clearBit"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 751
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 753
    :goto_f
    return-object v0

    :cond_10
    move-object v0, p0

    goto :goto_f
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    check-cast p1, Ljava/math/BigInteger;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .parameter "val"

    .prologue
    .line 1017
    const-string v0, "compareTo"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1018
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v1, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-static {v0, v1}, Ljava/math/BigInt;->cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I

    move-result v0

    return v0
.end method

.method copy()Ljava/math/BigInteger;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1598
    const-string v1, "copy()"

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 1599
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v0, v1, [I

    .line 1600
    .local v0, copyDigits:[I
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1601
    new-instance v1, Ljava/math/BigInteger;

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v1
.end method

.method final cutOffLeadingZeroes()V
    .registers 4

    .prologue
    .line 1563
    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    if-lez v0, :cond_10

    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->numberLength:I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 1566
    :cond_10
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/math/BigInteger;->numberLength:I

    aget v0, v0, v1

    if-nez v0, :cond_1f

    .line 1567
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInteger;->sign:I

    .line 1569
    :cond_1f
    return-void
.end method

.method public divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "divisor"

    .prologue
    const/4 v3, 0x0

    .line 1230
    const-string v1, "divide"

    invoke-static {v1, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1231
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 1232
    .local v0, quotient:Ljava/math/BigInt;
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-static {v1, v2, v3, v0, v3}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 1233
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 11
    .parameter "divisor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "divideAndRemainder"

    .line 1204
    const-string v3, "divideAndRemainder"

    invoke-static {v6, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1205
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    .line 1206
    .local v1, quotient:Ljava/math/BigInt;
    new-instance v2, Ljava/math/BigInt;

    invoke-direct {v2}, Ljava/math/BigInt;-><init>()V

    .line 1207
    .local v2, remainder:Ljava/math/BigInt;
    iget-object v3, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v4, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 1208
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/math/BigInteger;

    .line 1209
    .local v0, a:[Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v3, v0, v7

    .line 1210
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v3, v0, v8

    .line 1211
    aget-object v3, v0, v7

    const-string v4, "divideAndRemainder"

    const-string v4, "quotient"

    invoke-virtual {v3, v6, v4}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    aget-object v3, v0, v8

    const-string v4, "divideAndRemainder"

    const-string v4, "remainder"

    invoke-virtual {v3, v6, v4}, Ljava/math/BigInteger;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-object v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 999
    const-string v0, "doubleValue()"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 1000
    invoke-static {p0}, Ljava/math/Conversion;->bigInteger2Double(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "x"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1085
    if-ne p0, p1, :cond_6

    move v0, v2

    .line 1091
    .end local p1
    :goto_5
    return v0

    .line 1088
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_16

    .line 1089
    check-cast p1, Ljava/math/BigInteger;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_5

    :cond_14
    move v0, v1

    goto :goto_5

    .restart local p1
    :cond_16
    move v0, v1

    .line 1091
    goto :goto_5
.end method

.method establishOldRepresentation(Ljava/lang/String;)V
    .registers 5
    .parameter "caller"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    iget-boolean v0, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    if-nez v0, :cond_21

    .line 81
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    iput v0, p0, Ljava/math/BigInteger;->sign:I

    .line 82
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->littleEndianIntsMagnitude()[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->digits:[I

    .line 84
    :goto_1a
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    array-length v0, v0

    iput v0, p0, Ljava/math/BigInteger;->numberLength:I

    .line 85
    iput-boolean v2, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    .line 87
    :cond_21
    return-void

    .line 83
    :cond_22
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Ljava/math/BigInteger;->digits:[I

    goto :goto_1a
.end method

.method public flipBit(I)Ljava/math/BigInteger;
    .registers 4
    .parameter "n"

    .prologue
    .line 774
    const-string v0, "flipBit"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 775
    if-gez p1, :cond_13

    .line 777
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.15"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_13
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 980
    const-string v0, "floatValue()"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "val"

    .prologue
    .line 1147
    const-string v0, "gcd"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1148
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/math/BigInt;->gcd(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method getFirstNonzeroDigit()I
    .registers 4

    .prologue
    .line 1580
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    .line 1582
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_f

    .line 1583
    const/4 v0, -0x1

    .line 1588
    .local v0, i:I
    :cond_a
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 1590
    .end local v0           #i:I
    :cond_c
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    return v1

    .line 1585
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_10
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    aget v1, v1, v0

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public getLowestSetBit()I
    .registers 4

    .prologue
    .line 795
    const-string v1, "getLowestSetBit"

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 796
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_b

    .line 797
    const/4 v1, -0x1

    .line 801
    :goto_a
    return v1

    .line 800
    :cond_b
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    .line 801
    .local v0, i:I
    shl-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const-string v2, "hashCode"

    .line 1060
    const-string v1, "hashCode"

    invoke-static {v2, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 1061
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    if-eqz v1, :cond_e

    .line 1062
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 1069
    :goto_d
    return v1

    .line 1064
    :cond_e
    const-string v1, "hashCode"

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 1065
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 1066
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    mul-int/lit8 v1, v1, 0x21

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1068
    :cond_29
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    mul-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 1069
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    goto :goto_d
.end method

.method public intValue()I
    .registers 4

    .prologue
    .line 935
    iget-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 936
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->longInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 940
    :goto_14
    return v0

    .line 939
    :cond_15
    const-string v0, "intValue()"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 940
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/2addr v0, v1

    goto :goto_14
.end method

.method isOne()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1574
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    move v0, v2

    goto :goto_d
.end method

.method public isProbablePrime(I)Z
    .registers 4
    .parameter "certainty"

    .prologue
    const/4 v1, 0x0

    .line 1362
    const-string v0, "isProbablePrime"

    invoke-static {v0, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 1363
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0, p1, v1, v1}, Ljava/math/BigInt;->isPrime(ILjava/util/Random;Ljava/math/BigInt$Context;)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 10

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v8, "longValue()"

    .line 954
    iget-boolean v2, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 955
    const-string v2, "longValue()"

    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->longInt()J

    move-result-wide v2

    .line 962
    :goto_22
    return-wide v2

    .line 959
    :cond_23
    const-string v2, "longValue()"

    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 960
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-le v2, v4, :cond_41

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v4

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v0, v2

    .line 962
    .local v0, value:J
    :goto_3c
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    goto :goto_22

    .line 960
    .end local v0           #value:J
    :cond_41
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v5

    int-to-long v2, v2

    and-long/2addr v2, v6

    move-wide v0, v2

    goto :goto_3c
.end method

.method public max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move-object v0, p0

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method public min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"

    .prologue
    .line 1033
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    move-object v0, p0

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method public mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "m"

    .prologue
    .line 1339
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_12

    .line 1341
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.18"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_12
    const-string v0, "mod"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1344
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/math/BigInt;->modulus(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "m"

    .prologue
    .line 1276
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_12

    .line 1278
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.18"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :cond_12
    const-string v0, "modInverse"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1281
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/math/BigInt;->modInverse(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .parameter "exponent"
    .parameter "m"

    .prologue
    .line 1306
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gtz v1, :cond_12

    .line 1308
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "math.18"

    invoke-static {v2}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1311
    :cond_12
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_32

    .line 1312
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1317
    .local v0, base:Ljava/math/BigInteger;
    :goto_1c
    const-string v1, "modPow"

    invoke-static {v1, v0, p1, p2}, Ljava/math/BigInteger;->validate3(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1318
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, v0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v3, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v4, p2, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/math/BigInt;->modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1

    .line 1315
    .end local v0           #base:Ljava/math/BigInteger;
    :cond_32
    move-object v0, p0

    .restart local v0       #base:Ljava/math/BigInteger;
    goto :goto_1c
.end method

.method public multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "val"

    .prologue
    .line 1163
    const-string v0, "multiply"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1164
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/math/BigInt;->product(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public negate()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 515
    const-string v2, "negate()"

    invoke-static {v2, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 516
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->sign()I

    move-result v1

    .line 517
    .local v1, sign:I
    if-nez v1, :cond_f

    move-object v2, p0

    .line 521
    :goto_e
    return-object v2

    .line 519
    :cond_f
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 520
    .local v0, a:Ljava/math/BigInt;
    neg-int v2, v1

    invoke-virtual {v0, v2}, Ljava/math/BigInt;->setSign(I)V

    .line 521
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_e
.end method

.method public nextProbablePrime()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 1378
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-gez v0, :cond_10

    .line 1380
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.1A"

    invoke-static {v1, p0}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :cond_10
    invoke-static {p0}, Ljava/math/Primality;->nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public not()Ljava/math/BigInteger;
    .registers 4

    .prologue
    const-string v2, "not"

    .line 839
    const-string v0, "not"

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 840
    invoke-static {p0}, Ljava/math/Logical;->not(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "not"

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"

    .prologue
    .line 878
    const-string v0, "or1"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 879
    const-string v0, "or2"

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 880
    invoke-static {p0, p1}, Ljava/math/Logical;->or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigInteger;
    .registers 5
    .parameter "exp"

    .prologue
    .line 1179
    if-gez p1, :cond_e

    .line 1181
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.16"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_e
    const-string v0, "pow"

    invoke-static {v0, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 1184
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Ljava/math/BigInt;->exp(Ljava/math/BigInt;ILjava/math/BigInt$Context;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "divisor"

    .prologue
    const/4 v3, 0x0

    .line 1252
    const-string v1, "remainder"

    invoke-static {v1, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1253
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 1254
    .local v0, remainder:Ljava/math/BigInt;
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-static {v1, v2, v3, v3, v0}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt$Context;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 1255
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public setBit(I)Ljava/math/BigInteger;
    .registers 3
    .parameter "n"

    .prologue
    .line 724
    const-string v0, "setBit"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 726
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 728
    :goto_f
    return-object v0

    :cond_10
    move-object v0, p0

    goto :goto_f
.end method

.method public shiftLeft(I)Ljava/math/BigInteger;
    .registers 5
    .parameter "n"

    .prologue
    .line 613
    if-nez p1, :cond_4

    move-object v1, p0

    .line 625
    :goto_3
    return-object v1

    .line 614
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 615
    .local v0, sign:I
    if-nez v0, :cond_c

    move-object v1, p0

    goto :goto_3

    .line 616
    :cond_c
    if-gtz v0, :cond_10

    if-ltz p1, :cond_21

    .line 617
    :cond_10
    const-string v1, "shiftLeft"

    invoke-static {v1, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 618
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-static {v2, p1}, Ljava/math/BigInt;->shift(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_3

    .line 625
    :cond_21
    neg-int v1, p1

    invoke-static {p0, v1}, Ljava/math/BitLevel;->shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3
.end method

.method public shiftRight(I)Ljava/math/BigInteger;
    .registers 3
    .parameter "n"

    .prologue
    .line 593
    neg-int v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public signum()I
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    .line 574
    :goto_6
    return v0

    .line 573
    :cond_7
    const-string v0, "signum"

    invoke-static {v0, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 574
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    goto :goto_6
.end method

.method public subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "val"

    .prologue
    .line 555
    const-string v0, "subtract"

    invoke-static {v0, p0, p1}, Ljava/math/BigInteger;->validate2(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 556
    iget-object v0, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    if-nez v0, :cond_f

    move-object v0, p0

    .line 557
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v2, p1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-static {v1, v2}, Ljava/math/BigInt;->subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_e
.end method

.method public testBit(I)Z
    .registers 10
    .parameter "n"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "testBit"

    .line 669
    if-gez p1, :cond_12

    .line 671
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "math.15"

    invoke-static {v5}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 673
    :cond_12
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    .line 674
    .local v3, sign:I
    if-lez v3, :cond_2c

    iget-boolean v4, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    if-eqz v4, :cond_2c

    iget-boolean v4, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    if-nez v4, :cond_2c

    .line 675
    const-string v4, "testBit"

    invoke-static {v7, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 676
    iget-object v4, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v4, p1}, Ljava/math/BigInt;->isBitSet(I)Z

    move-result v4

    .line 703
    :goto_2b
    return v4

    .line 683
    :cond_2c
    const-string v4, "testBit"

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 684
    if-nez p1, :cond_3f

    .line 685
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3d

    move v4, v6

    goto :goto_2b

    :cond_3d
    move v4, v5

    goto :goto_2b

    .line 687
    :cond_3f
    shr-int/lit8 v2, p1, 0x5

    .line 688
    .local v2, intCount:I
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v4, :cond_4b

    .line 689
    if-gez v3, :cond_49

    move v4, v6

    goto :goto_2b

    :cond_49
    move v4, v5

    goto :goto_2b

    .line 691
    :cond_4b
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v0, v4, v2

    .line 692
    .local v0, digit:I
    and-int/lit8 v4, p1, 0x1f

    shl-int p1, v6, v4

    .line 693
    if-gez v3, :cond_60

    .line 694
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 695
    .local v1, firstNonZeroDigit:I
    if-ge v2, v1, :cond_5d

    move v4, v5

    .line 696
    goto :goto_2b

    .line 697
    :cond_5d
    if-ne v1, v2, :cond_66

    .line 698
    neg-int v0, v0

    .line 703
    .end local v1           #firstNonZeroDigit:I
    :cond_60
    :goto_60
    and-int v4, v0, p1

    if-eqz v4, :cond_69

    move v4, v6

    goto :goto_2b

    .line 700
    .restart local v1       #firstNonZeroDigit:I
    :cond_66
    xor-int/lit8 v0, v0, -0x1

    goto :goto_60

    .end local v1           #firstNonZeroDigit:I
    :cond_69
    move v4, v5

    .line 703
    goto :goto_2b
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/math/BigInteger;->twosComplement()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1104
    const-string v0, "toString()"

    invoke-static {v0, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 1105
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4
    .parameter "radix"

    .prologue
    const-string v1, "toString(int radix)"

    .line 1122
    const-string v0, "toString(int radix)"

    invoke-static {v1, p0}, Ljava/math/BigInteger;->validate1(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 1123
    const/16 v0, 0xa

    if-ne p1, v0, :cond_12

    .line 1124
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    :goto_11
    return-object v0

    .line 1128
    :cond_12
    const-string v0, "toString(int radix)"

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 1129
    invoke-static {p0, p1}, Ljava/math/Conversion;->bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method unCache()V
    .registers 2

    .prologue
    .line 1631
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 1632
    return-void
.end method

.method validate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "caller"
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    if-eqz v0, :cond_21

    .line 100
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    if-nez v0, :cond_11

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Claiming bigIntIsValid BUT bigInt == null, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 115
    :cond_10
    :goto_10
    return-void

    .line 102
    :cond_11
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->getNativeBIGNUM()I

    move-result v0

    if-nez v0, :cond_10

    .line 103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Claiming bigIntIsValid BUT bigInt.bignum == 0, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_10

    .line 106
    :cond_21
    iget-boolean v0, p0, Ljava/math/BigInteger;->oldReprIsValid:Z

    if-eqz v0, :cond_41

    .line 107
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    if-nez v0, :cond_30

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iput-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 108
    :cond_30
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-gez v2, :cond_3f

    move v2, v3

    :goto_39
    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putLittleEndianInts([IZ)V

    .line 109
    iput-boolean v3, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    goto :goto_10

    .line 108
    :cond_3f
    const/4 v2, 0x0

    goto :goto_39

    .line 112
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3
    .parameter "caller"

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/math/BigInteger;->bigIntIsValid:Z

    .line 95
    return-object p0
.end method

.method public xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"

    .prologue
    .line 898
    const-string v0, "xor1"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 899
    const-string v0, "xor2"

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 900
    invoke-static {p0, p1}, Ljava/math/Logical;->xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "xor"

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->withNewRepresentation(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
