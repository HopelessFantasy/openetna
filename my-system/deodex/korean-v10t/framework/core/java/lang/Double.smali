.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [D

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3
    .parameter "value"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 103
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 118
    return-void
.end method

.method public static compare(DD)I
    .registers 15
    .parameter "double1"
    .parameter "double2"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 386
    const-wide/high16 v6, 0x7ff8

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 387
    .local v0, NaNbits:J
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .local v2, d1:J
    cmp-long v6, v2, v0

    if-nez v6, :cond_1d

    .line 388
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_1b

    move v6, v10

    .line 403
    :goto_1a
    return v6

    :cond_1b
    move v6, v9

    .line 391
    goto :goto_1a

    .line 393
    :cond_1d
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .local v4, d2:J
    cmp-long v6, v4, v0

    if-nez v6, :cond_27

    move v6, v8

    .line 394
    goto :goto_1a

    .line 396
    :cond_27
    cmpl-double v6, p0, p2

    if-nez v6, :cond_39

    .line 397
    cmp-long v6, v2, v4

    if-nez v6, :cond_31

    move v6, v10

    .line 398
    goto :goto_1a

    .line 401
    :cond_31
    cmp-long v6, v2, v4

    if-lez v6, :cond_37

    move v6, v9

    goto :goto_1a

    :cond_37
    move v6, v8

    goto :goto_1a

    .line 403
    :cond_39
    cmpl-double v6, p0, p2

    if-lez v6, :cond_3f

    move v6, v9

    goto :goto_1a

    :cond_3f
    move v6, v8

    goto :goto_1a
.end method

.method public static native doubleToLongBits(D)J
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static isInfinite(D)Z
    .registers 4
    .parameter "d"

    .prologue
    .line 263
    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(D)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 288
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {p0}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .registers 13
    .parameter "d"

    .prologue
    .line 430
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 431
    const-string p0, "NaN"

    .line 507
    .end local p0
    :goto_6
    return-object p0

    .line 433
    .restart local p0
    :cond_7
    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_10

    .line 434
    const-string p0, "Infinity"

    goto :goto_6

    .line 436
    :cond_10
    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_19

    .line 437
    const-string p0, "-Infinity"

    goto :goto_6

    .line 440
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 442
    .local p0, bitValue:J
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    move v2, v0

    .line 444
    .local v2, negative:Z
    :goto_28
    const-wide/high16 v0, 0x7ff0

    and-long/2addr v0, p0

    const/16 v3, 0x34

    ushr-long/2addr v0, v3

    .line 446
    .local v0, exponent:J
    const-wide v3, 0xfffffffffffffL

    and-long v5, p0, v3

    .line 448
    .local v5, significand:J
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_4c

    .end local p0           #bitValue:J
    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-nez p0, :cond_4c

    .line 449
    if-eqz v2, :cond_49

    const-string p0, "-0x0.0p0"

    goto :goto_6

    .line 442
    .end local v0           #exponent:J
    .end local v2           #negative:Z
    .end local v5           #significand:J
    .restart local p0       #bitValue:J
    :cond_46
    const/4 v0, 0x0

    move v2, v0

    goto :goto_28

    .line 449
    .end local p0           #bitValue:J
    .restart local v0       #exponent:J
    .restart local v2       #negative:Z
    .restart local v5       #significand:J
    :cond_49
    const-string p0, "0x0.0p0"

    goto :goto_6

    .line 452
    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 453
    .local v4, hexString:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_81

    .line 454
    const-string p0, "-0x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :goto_5a
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_bb

    .line 460
    const-string p0, "0."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/16 p0, 0xd

    .local p0, fractionDigits:I
    move v0, p0

    .end local p0           #fractionDigits:I
    .local v0, fractionDigits:I
    move-wide v2, v5

    .line 465
    .end local v5           #significand:J
    .local v2, significand:J
    :goto_69
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_87

    const-wide/16 p0, 0xf

    and-long/2addr p0, v2

    const-wide/16 v5, 0x0

    cmp-long p0, p0, v5

    if-nez p0, :cond_87

    .line 466
    const/4 p0, 0x4

    ushr-long v1, v2, p0

    .line 467
    .end local v2           #significand:J
    .local v1, significand:J
    add-int/lit8 p0, v0, -0x1

    .end local v0           #fractionDigits:I
    .restart local p0       #fractionDigits:I
    move v0, p0

    .end local p0           #fractionDigits:I
    .restart local v0       #fractionDigits:I
    move-wide v9, v1

    .end local v1           #significand:J
    .local v9, significand:J
    move-wide v2, v9

    .end local v9           #significand:J
    .restart local v2       #significand:J
    goto :goto_69

    .line 456
    .local v0, exponent:J
    .local v2, negative:Z
    .restart local v5       #significand:J
    :cond_81
    const-string p0, "0x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 470
    .end local v5           #significand:J
    .local v0, fractionDigits:I
    .local v2, significand:J
    :cond_87
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, hexSignificand:Ljava/lang/String;
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_aa

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-le v0, p0, :cond_aa

    .line 474
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p0, v0, p0

    .local p0, digitDiff:I
    move p1, p0

    .line 475
    .end local p0           #digitDiff:I
    .local p1, digitDiff:I
    :goto_9e
    const/4 p0, 0x1

    sub-int p0, p1, p0

    .end local p1           #digitDiff:I
    .restart local p0       #digitDiff:I
    if-eqz p1, :cond_aa

    .line 476
    const/16 p1, 0x30

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p0

    .end local p0           #digitDiff:I
    .restart local p1       #digitDiff:I
    goto :goto_9e

    .line 479
    .end local p1           #digitDiff:I
    :cond_aa
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string p0, "p-1022"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, v1

    .end local v1           #hexSignificand:Ljava/lang/String;
    .local p1, hexSignificand:Ljava/lang/String;
    move p0, v0

    .end local v0           #fractionDigits:I
    .local p0, fractionDigits:I
    move-wide v0, v2

    .line 507
    .end local v2           #significand:J
    .local v0, significand:J
    :goto_b5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    .line 482
    .end local p0           #fractionDigits:I
    .end local p1           #hexSignificand:Ljava/lang/String;
    .local v0, exponent:J
    .local v2, negative:Z
    .restart local v5       #significand:J
    :cond_bb
    const-string p0, "1."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/16 p0, 0xd

    .restart local p0       #fractionDigits:I
    move v2, p0

    .line 487
    .end local p0           #fractionDigits:I
    .local v2, fractionDigits:I
    :goto_c3
    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_d8

    const-wide/16 p0, 0xf

    and-long/2addr p0, v5

    const-wide/16 v7, 0x0

    cmp-long p0, p0, v7

    if-nez p0, :cond_d8

    .line 488
    const/4 p0, 0x4

    ushr-long/2addr v5, p0

    .line 489
    add-int/lit8 p0, v2, -0x1

    .end local v2           #fractionDigits:I
    .restart local p0       #fractionDigits:I
    move v2, p0

    .end local p0           #fractionDigits:I
    .restart local v2       #fractionDigits:I
    goto :goto_c3

    .line 492
    :cond_d8
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, hexSignificand:Ljava/lang/String;
    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_fb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-le v2, p0, :cond_fb

    .line 496
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p0, v2, p0

    .local p0, digitDiff:I
    move p1, p0

    .line 497
    .end local p0           #digitDiff:I
    .local p1, digitDiff:I
    :goto_ef
    const/4 p0, 0x1

    sub-int p0, p1, p0

    .end local p1           #digitDiff:I
    .restart local p0       #digitDiff:I
    if-eqz p1, :cond_fb

    .line 498
    const/16 p1, 0x30

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p0

    .end local p0           #digitDiff:I
    .restart local p1       #digitDiff:I
    goto :goto_ef

    .line 502
    .end local p1           #digitDiff:I
    :cond_fb
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const/16 p0, 0x70

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    const-wide/16 p0, 0x3ff

    sub-long p0, v0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, v3

    .end local v3           #hexSignificand:Ljava/lang/String;
    .local p1, hexSignificand:Ljava/lang/String;
    move p0, v2

    .end local v2           #fractionDigits:I
    .local p0, fractionDigits:I
    move-wide v0, v5

    .end local v5           #significand:J
    .local v0, significand:J
    goto :goto_b5
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 3
    .parameter "d"

    .prologue
    .line 347
    invoke-static {p0, p1}, Lorg/apache/harmony/luni/util/NumberConverter;->convert(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .registers 3
    .parameter "d"

    .prologue
    .line 415
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/lang/Double;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 162
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .registers 15
    .parameter "object"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 140
    const-wide/high16 v6, 0x7ff8

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 141
    .local v0, NaNbits:J
    iget-wide v6, p0, Ljava/lang/Double;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .local v2, d1:J
    cmp-long v6, v2, v0

    if-nez v6, :cond_21

    .line 142
    iget-wide v6, p1, Ljava/lang/Double;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_1f

    move v6, v12

    .line 157
    :goto_1e
    return v6

    :cond_1f
    move v6, v11

    .line 145
    goto :goto_1e

    .line 147
    :cond_21
    iget-wide v6, p1, Ljava/lang/Double;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .local v4, d2:J
    cmp-long v6, v4, v0

    if-nez v6, :cond_2d

    move v6, v10

    .line 148
    goto :goto_1e

    .line 150
    :cond_2d
    iget-wide v6, p0, Ljava/lang/Double;->value:D

    iget-wide v8, p1, Ljava/lang/Double;->value:D

    cmpl-double v6, v6, v8

    if-nez v6, :cond_43

    .line 151
    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    move v6, v12

    .line 152
    goto :goto_1e

    .line 155
    :cond_3b
    cmp-long v6, v2, v4

    if-lez v6, :cond_41

    move v6, v11

    goto :goto_1e

    :cond_41
    move v6, v10

    goto :goto_1e

    .line 157
    :cond_43
    iget-wide v6, p0, Ljava/lang/Double;->value:D

    iget-wide v8, p1, Ljava/lang/Double;->value:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4d

    move v6, v11

    goto :goto_1e

    :cond_4d
    move v6, v10

    goto :goto_1e
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 221
    if-eq p1, p0, :cond_18

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    .end local p1
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 228
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 233
    iget-wide v2, p0, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 234
    .local v0, v:J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 239
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 3

    .prologue
    .line 250
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 307
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 329
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 334
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
