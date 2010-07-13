.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .parameter "value"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 110
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 111
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .parameter "value"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 99
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    .line 125
    return-void
.end method

.method public static compare(FF)I
    .registers 9
    .parameter "float1"
    .parameter "float2"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 390
    const/high16 v3, 0x7fc0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 391
    .local v0, NaNbits:I
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .local v1, f1:I
    if-ne v1, v0, :cond_19

    .line 392
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v3, v0, :cond_17

    move v3, v6

    .line 407
    :goto_16
    return v3

    :cond_17
    move v3, v5

    .line 395
    goto :goto_16

    .line 397
    :cond_19
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .local v2, f2:I
    if-ne v2, v0, :cond_21

    move v3, v4

    .line 398
    goto :goto_16

    .line 400
    :cond_21
    cmpl-float v3, p0, p1

    if-nez v3, :cond_2f

    .line 401
    if-ne v1, v2, :cond_29

    move v3, v6

    .line 402
    goto :goto_16

    .line 405
    :cond_29
    if-le v1, v2, :cond_2d

    move v3, v5

    goto :goto_16

    :cond_2d
    move v3, v4

    goto :goto_16

    .line 407
    :cond_2f
    cmpl-float v3, p0, p1

    if-lez v3, :cond_35

    move v3, v5

    goto :goto_16

    :cond_35
    move v3, v4

    goto :goto_16
.end method

.method public static native floatToIntBits(F)I
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isInfinite(F)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 282
    const/high16 v0, 0x7f80

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_c

    const/high16 v0, -0x80

    cmpl-float v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(F)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 307
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {p0}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .registers 13
    .parameter "f"

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x1

    .line 434
    cmpl-float v9, p0, p0

    if-eqz v9, :cond_a

    .line 435
    const-string v9, "NaN"

    .line 511
    :goto_9
    return-object v9

    .line 437
    :cond_a
    const/high16 v9, 0x7f80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_13

    .line 438
    const-string v9, "Infinity"

    goto :goto_9

    .line 440
    :cond_13
    const/high16 v9, -0x80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_1c

    .line 441
    const-string v9, "-Infinity"

    goto :goto_9

    .line 444
    :cond_1c
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 446
    .local v0, bitValue:I
    const/high16 v9, -0x8000

    and-int/2addr v9, v0

    if-eqz v9, :cond_3a

    move v7, v10

    .line 448
    .local v7, negative:Z
    :goto_26
    const/high16 v9, 0x7f80

    and-int/2addr v9, v0

    ushr-int/lit8 v3, v9, 0x17

    .line 451
    .local v3, exponent:I
    const v9, 0x7fffff

    and-int/2addr v9, v0

    shl-int/lit8 v8, v9, 0x1

    .line 453
    .local v8, significand:I
    if-nez v3, :cond_40

    if-nez v8, :cond_40

    .line 454
    if-eqz v7, :cond_3d

    const-string v9, "-0x0.0p0"

    goto :goto_9

    .line 446
    .end local v3           #exponent:I
    .end local v7           #negative:Z
    .end local v8           #significand:I
    :cond_3a
    const/4 v9, 0x0

    move v7, v9

    goto :goto_26

    .line 454
    .restart local v3       #exponent:I
    .restart local v7       #negative:Z
    .restart local v8       #significand:I
    :cond_3d
    const-string v9, "0x0.0p0"

    goto :goto_9

    .line 457
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 458
    .local v6, hexString:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_61

    .line 459
    const-string v9, "-0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :goto_4e
    if-nez v3, :cond_91

    .line 465
    const-string v9, "0."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const/4 v4, 0x6

    .line 470
    .local v4, fractionDigits:I
    :goto_56
    if-eqz v8, :cond_67

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_67

    .line 471
    ushr-int/lit8 v8, v8, 0x4

    .line 472
    add-int/lit8 v4, v4, -0x1

    goto :goto_56

    .line 461
    .end local v4           #fractionDigits:I
    :cond_61
    const-string v9, "0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 475
    .restart local v4       #fractionDigits:I
    :cond_67
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, hexSignificand:Ljava/lang/String;
    if-eqz v8, :cond_83

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_83

    .line 479
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    .local v1, digitDiff:I
    move v2, v1

    .line 480
    .end local v1           #digitDiff:I
    .local v2, digitDiff:I
    :goto_7a
    sub-int v1, v2, v10

    .end local v2           #digitDiff:I
    .restart local v1       #digitDiff:I
    if-eqz v2, :cond_83

    .line 481
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    goto :goto_7a

    .line 484
    .end local v2           #digitDiff:I
    :cond_83
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v9, "p-126"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :goto_8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_9

    .line 487
    .end local v4           #fractionDigits:I
    .end local v5           #hexSignificand:Ljava/lang/String;
    :cond_91
    const-string v9, "1."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const/4 v4, 0x6

    .line 492
    .restart local v4       #fractionDigits:I
    :goto_97
    if-eqz v8, :cond_a2

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_a2

    .line 493
    ushr-int/lit8 v8, v8, 0x4

    .line 494
    add-int/lit8 v4, v4, -0x1

    goto :goto_97

    .line 497
    :cond_a2
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 500
    .restart local v5       #hexSignificand:Ljava/lang/String;
    if-eqz v8, :cond_be

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_be

    .line 501
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    .restart local v1       #digitDiff:I
    move v2, v1

    .line 502
    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    :goto_b5
    sub-int v1, v2, v10

    .end local v2           #digitDiff:I
    .restart local v1       #digitDiff:I
    if-eqz v2, :cond_be

    .line 503
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    goto :goto_b5

    .line 506
    .end local v2           #digitDiff:I
    :cond_be
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const/16 v9, 0x70

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    const/16 v9, 0x7f

    sub-int v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b
.end method

.method public static toString(F)Ljava/lang/String;
    .registers 2
    .parameter "f"

    .prologue
    .line 351
    invoke-static {p0}, Lorg/apache/harmony/luni/util/NumberConverter;->convert(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .registers 2
    .parameter "f"

    .prologue
    .line 419
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .registers 10
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 147
    const/high16 v3, 0x7fc0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 148
    .local v0, NaNbits:I
    iget v3, p0, Ljava/lang/Float;->value:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .local v1, f1:I
    if-ne v1, v0, :cond_1d

    .line 149
    iget v3, p1, Ljava/lang/Float;->value:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v3, v0, :cond_1b

    move v3, v7

    .line 164
    :goto_1a
    return v3

    :cond_1b
    move v3, v6

    .line 152
    goto :goto_1a

    .line 154
    :cond_1d
    iget v3, p1, Ljava/lang/Float;->value:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .local v2, f2:I
    if-ne v2, v0, :cond_27

    move v3, v5

    .line 155
    goto :goto_1a

    .line 157
    :cond_27
    iget v3, p0, Ljava/lang/Float;->value:F

    iget v4, p1, Ljava/lang/Float;->value:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_39

    .line 158
    if-ne v1, v2, :cond_33

    move v3, v7

    .line 159
    goto :goto_1a

    .line 162
    :cond_33
    if-le v1, v2, :cond_37

    move v3, v6

    goto :goto_1a

    :cond_37
    move v3, v5

    goto :goto_1a

    .line 164
    :cond_39
    iget v3, p0, Ljava/lang/Float;->value:F

    iget v4, p1, Ljava/lang/Float;->value:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_43

    move v3, v6

    goto :goto_1a

    :cond_43
    move v3, v5

    goto :goto_1a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 174
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 190
    if-eq p1, p0, :cond_16

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_18

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    check-cast p1, Ljava/lang/Float;

    .end local p1
    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 312
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
