.class Ljava/math/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final bigRadices:[I

.field static final digitFitInInt:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    .line 46
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Ljava/math/Conversion;->bigRadices:[I

    return-void

    .line 36
    nop

    :array_14
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1ft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_62
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0xdbt 0xb3t 0x46t 0x45t
        0x0t 0x0t 0x0t 0x40t
        0x95t 0x73t 0xc2t 0x48t
        0x0t 0xd8t 0x9ft 0x15t
        0x97t 0x9ct 0xdbt 0x75t
        0x0t 0x0t 0x0t 0x40t
        0x49t 0x91t 0x17t 0x17t
        0x0t 0xcat 0x9at 0x3bt
        0x61t 0xdbt 0xc6t 0xct
        0x0t 0x0t 0xa1t 0x19t
        0x21t 0x10t 0x9ft 0x30t
        0x0t 0xc1t 0xf6t 0x57t
        0x6ft 0x1bt 0x2ft 0xat
        0x0t 0x0t 0x0t 0x10t
        0x71t 0x45t 0x75t 0x18t
        0x80t 0xbct 0x7dt 0x24t
        0x7bt 0x66t 0x47t 0x35t
        0x0t 0x40t 0x4bt 0x4ct
        0x1dt 0x6et 0x5at 0x6bt
        0x40t 0xat 0xc2t 0x6t
        0x31t 0xd9t 0xd2t 0x8t
        0x0t 0x0t 0x64t 0xbt
        0x51t 0x4at 0x8dt 0xet
        0x40t 0xaet 0x69t 0x12t
        0x49t 0x91t 0x17t 0x17t
        0x0t 0x10t 0xb9t 0x1ct
        0x99t 0x48t 0x74t 0x23t
        0x40t 0xa8t 0x73t 0x2bt
        0x41t 0x3bt 0xe6t 0x34t
        0x0t 0x0t 0x0t 0x40t
        0xc1t 0x3ct 0xfat 0x4ct
        0x40t 0xd8t 0x13t 0x5ct
        0x19t 0xb5t 0x91t 0x6dt
        0x0t 0xa4t 0x9at 0x3t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigInteger2Double(Ljava/math/BigInteger;)D
    .registers 10
    .parameter "val"

    .prologue
    .line 427
    const-string v0, "Conversion.bigInteger2Double"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 430
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_16

    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_1c

    .line 432
    :cond_16
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 468
    .end local p0
    :goto_1b
    return-wide v0

    .line 435
    .restart local p0
    :cond_1c
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_2c

    .line 436
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-lez p0, :cond_29

    const-wide/high16 v0, 0x7ff0

    goto :goto_1b

    :cond_29
    const-wide/high16 v0, -0x10

    goto :goto_1b

    .line 439
    .restart local p0
    :cond_2c
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 440
    .local v0, bitLen:I
    const/4 v1, 0x1

    sub-int v1, v0, v1

    int-to-long v1, v1

    .line 441
    .local v1, exponent:J
    const/16 v3, 0x36

    sub-int/2addr v0, v3

    .line 443
    .local v0, delta:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    .line 448
    .local v3, lVal:J
    const-wide v5, 0x1fffffffffffffL

    and-long/2addr v3, v5

    .line 449
    .local v3, mantissa:J
    const-wide/16 v5, 0x3ff

    cmp-long v5, v1, v5

    if-nez v5, :cond_7f

    .line 450
    const-wide v5, 0x1fffffffffffffL

    cmp-long v5, v3, v5

    if-nez v5, :cond_66

    .line 451
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-lez p0, :cond_63

    const-wide/high16 v0, 0x7ff0

    goto :goto_1b

    :cond_63
    const-wide/high16 v0, -0x10

    goto :goto_1b

    .line 454
    .restart local p0
    :cond_66
    const-wide v5, 0x1ffffffffffffeL

    cmp-long v5, v3, v5

    if-nez v5, :cond_7f

    .line 455
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-lez p0, :cond_79

    const-wide v0, 0x7fefffffffffffffL

    goto :goto_1b

    :cond_79
    const-wide v0, -0x10000000000001L

    goto :goto_1b

    .line 459
    .restart local p0
    :cond_7f
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_9c

    const-wide/16 v5, 0x2

    and-long/2addr v5, v3

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-eqz v5, :cond_99

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v0, v5}, Ljava/math/BitLevel;->nonZeroDroppedBits(I[I)Z

    move-result v0

    .end local v0           #delta:I
    if-eqz v0, :cond_9c

    .line 462
    :cond_99
    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 464
    :cond_9c
    const/4 v0, 0x1

    shr-long/2addr v3, v0

    .line 465
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-gez p0, :cond_b6

    const-wide/high16 v5, -0x8000

    .line 466
    .local v5, resSign:J
    :goto_a4
    const-wide/16 v7, 0x3ff

    add-long v0, v7, v1

    const/16 p0, 0x34

    shl-long/2addr v0, p0

    const-wide/high16 v7, 0x7ff0

    and-long/2addr v0, v7

    .line 467
    .end local v1           #exponent:J
    .local v0, exponent:J
    or-long/2addr v0, v5

    or-long/2addr v0, v3

    .line 468
    .local v0, result:J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto/16 :goto_1b

    .line 465
    .end local v0           #result:J
    .end local v5           #resSign:J
    .restart local v1       #exponent:J
    :cond_b6
    const-wide/16 v5, 0x0

    goto :goto_a4
.end method

.method static bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;
    .registers 12
    .parameter "val"
    .parameter "radix"

    .prologue
    .line 58
    const-string v0, "Conversion.bigInteger2String"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 60
    iget v6, p0, Ljava/math/BigInteger;->sign:I

    .line 61
    .local v6, sign:I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    .line 62
    .local v3, numberLength:I
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    .line 64
    .local v2, digits:[I
    if-nez v6, :cond_10

    .line 65
    const-string p0, "0"

    .line 132
    .end local v2           #digits:[I
    .end local v3           #numberLength:I
    .end local p0
    .end local p1
    :goto_f
    return-object p0

    .line 67
    .restart local v2       #digits:[I
    .restart local v3       #numberLength:I
    .restart local p0
    .restart local p1
    :cond_10
    const/4 v0, 0x1

    if-ne v3, v0, :cond_27

    .line 68
    const/4 p0, 0x1

    sub-int p0, v3, p0

    aget p0, v2, p0

    .line 69
    .local p0, highDigit:I
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 70
    .local v0, v:J
    if-gez v6, :cond_22

    .line 71
    .end local v2           #digits:[I
    neg-long v0, v0

    .line 73
    :cond_22
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 75
    .end local v0           #v:J
    .restart local v2       #digits:[I
    .local p0, val:Ljava/math/BigInteger;
    :cond_27
    const/16 v0, 0xa

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-lt p1, v0, :cond_32

    const/16 v0, 0x24

    if-le p1, v0, :cond_37

    .line 77
    :cond_32
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 80
    :cond_37
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 81
    .local v0, bitsForRadixDigit:D
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #val:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    int-to-double v4, p0

    div-double v0, v4, v0

    if-gez v6, :cond_96

    .end local v0           #bitsForRadixDigit:D
    const/4 p0, 0x1

    :goto_51
    int-to-double v4, p0

    add-double/2addr v0, v4

    double-to-int p0, v0

    add-int/lit8 v4, p0, 0x1

    .line 84
    .local v4, resLengthInChars:I
    new-array v5, v4, [C

    .line 85
    .local v5, result:[C
    move v1, v4

    .line 87
    .local v1, currentChar:I
    const/16 p0, 0x10

    if-eq p1, p0, :cond_ba

    .line 88
    new-array v7, v3, [I

    .line 89
    .local v7, temp:[I
    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {v2, p0, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    move v2, v3

    .line 91
    .local v2, tempLen:I
    sget-object p0, Ljava/math/Conversion;->digitFitInInt:[I

    aget v0, p0, p1

    .line 94
    .local v0, charsPerInt:I
    sget-object p0, Ljava/math/Conversion;->bigRadices:[I

    const/4 v3, 0x2

    sub-int v3, p1, v3

    aget p0, p0, v3

    .end local v3           #numberLength:I
    .local p0, bigRadix:I
    move v8, v2

    .line 98
    .end local v2           #tempLen:I
    .local v8, tempLen:I
    :goto_71
    invoke-static {v7, v7, v8, p0}, Ljava/math/Division;->divideArrayByInt([I[III)I

    move-result v3

    .line 100
    .local v3, resDigit:I
    move v2, v1

    .line 102
    .local v2, previous:I
    :cond_76
    add-int/lit8 v1, v1, -0x1

    rem-int v9, v3, p1

    invoke-static {v9, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    aput-char v9, v5, v1

    .line 104
    div-int/2addr v3, p1

    if-eqz v3, :cond_85

    if-nez v1, :cond_76

    .line 105
    :cond_85
    sub-int v2, v0, v2

    add-int/2addr v2, v1

    .line 106
    .local v2, delta:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_89
    if-ge v3, v2, :cond_98

    if-lez v1, :cond_98

    .line 107
    add-int/lit8 v1, v1, -0x1

    const/16 v9, 0x30

    aput-char v9, v5, v1

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 81
    .end local v0           #charsPerInt:I
    .end local v1           #currentChar:I
    .end local v4           #resLengthInChars:I
    .end local v5           #result:[C
    .end local v7           #temp:[I
    .end local v8           #tempLen:I
    .end local p0           #bigRadix:I
    .local v2, digits:[I
    .local v3, numberLength:I
    :cond_96
    const/4 p0, 0x0

    goto :goto_51

    .line 109
    .restart local v0       #charsPerInt:I
    .restart local v1       #currentChar:I
    .local v2, delta:I
    .local v3, i:I
    .restart local v4       #resLengthInChars:I
    .restart local v5       #result:[C
    .restart local v7       #temp:[I
    .restart local v8       #tempLen:I
    .restart local p0       #bigRadix:I
    :cond_98
    const/4 v2, 0x1

    sub-int v2, v8, v2

    .end local v3           #i:I
    .local v2, i:I
    :goto_9b
    if-lez v2, :cond_a4

    aget v3, v7, v2

    if-nez v3, :cond_a4

    add-int/lit8 v2, v2, -0x1

    goto :goto_9b

    .line 112
    :cond_a4
    add-int/lit8 v2, v2, 0x1

    .line 113
    .end local v8           #tempLen:I
    .local v2, tempLen:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_b8

    const/4 v3, 0x0

    aget v3, v7, v3

    if-nez v3, :cond_b8

    move p0, v1

    .line 126
    .end local v0           #charsPerInt:I
    .end local v1           #currentChar:I
    .end local v2           #tempLen:I
    .end local v7           #temp:[I
    .end local p1
    .local p0, currentChar:I
    :cond_af
    :goto_af
    aget-char p1, v5, p0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_dd

    .line 127
    add-int/lit8 p0, p0, 0x1

    goto :goto_af

    .restart local v0       #charsPerInt:I
    .restart local v1       #currentChar:I
    .restart local v2       #tempLen:I
    .restart local v7       #temp:[I
    .local p0, bigRadix:I
    .restart local p1
    :cond_b8
    move v8, v2

    .line 116
    .end local v2           #tempLen:I
    .restart local v8       #tempLen:I
    goto :goto_71

    .line 119
    .end local v0           #charsPerInt:I
    .end local v7           #temp:[I
    .end local v8           #tempLen:I
    .end local p0           #bigRadix:I
    .local v2, digits:[I
    .local v3, numberLength:I
    :cond_ba
    const/4 p0, 0x0

    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    move p0, v1

    .end local v1           #currentChar:I
    .local p0, currentChar:I
    :goto_bd
    if-ge p1, v3, :cond_af

    .line 120
    const/4 v0, 0x0

    .local v0, j:I
    :goto_c0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_da

    if-lez p0, :cond_da

    .line 121
    aget v1, v2, p1

    shl-int/lit8 v7, v0, 0x2

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    .line 122
    .local v1, resDigit:I
    add-int/lit8 p0, p0, -0x1

    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .end local v1           #resDigit:I
    aput-char v1, v5, p0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 119
    :cond_da
    add-int/lit8 p1, p1, 0x1

    goto :goto_bd

    .line 129
    .end local v0           #j:I
    .end local v2           #digits:[I
    .end local v3           #numberLength:I
    .end local p1           #i:I
    :cond_dd
    const/4 p1, -0x1

    if-ne v6, p1, :cond_e6

    .line 130
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v5, p0

    .line 132
    :cond_e6
    new-instance p1, Ljava/lang/String;

    sub-int v0, v4, p0

    invoke-direct {p1, v5, p0, v0}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_f
.end method

.method static divideLongByBillion(J)J
    .registers 16
    .parameter "a"

    .prologue
    const/4 v12, 0x1

    .line 405
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-ltz v10, :cond_1a

    .line 406
    const-wide/32 v2, 0x3b9aca00

    .line 407
    .local v2, bLong:J
    div-long v6, p0, v2

    .line 408
    .local v6, quot:J
    rem-long v8, p0, v2

    .line 421
    .end local v2           #bLong:J
    .local v8, rem:J
    :goto_e
    const/16 v10, 0x20

    shl-long v10, v8, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    return-wide v10

    .line 414
    .end local v6           #quot:J
    .end local v8           #rem:J
    :cond_1a
    ushr-long v0, p0, v12

    .line 415
    .local v0, aPos:J
    const-wide/32 v4, 0x1dcd6500

    .line 416
    .local v4, bPos:J
    div-long v6, v0, v4

    .line 417
    .restart local v6       #quot:J
    rem-long v8, v0, v4

    .line 419
    .restart local v8       #rem:J
    shl-long v10, v8, v12

    const-wide/16 v12, 0x1

    and-long/2addr v12, p0

    add-long v8, v10, v12

    goto :goto_e
.end method

.method static toDecimalScaledString(JI)Ljava/lang/String;
    .registers 14
    .parameter "value"
    .parameter "scale"

    .prologue
    .line 308
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2e

    const/4 v0, 0x1

    move v2, v0

    .line 309
    .local v2, negNumber:Z
    :goto_8
    if-eqz v2, :cond_b

    .line 310
    neg-long p0, p0

    .line 312
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_52

    .line 313
    packed-switch p2, :pswitch_data_146

    .line 322
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local p0, result1:Ljava/lang/StringBuffer;
    if-gez p2, :cond_46

    .line 324
    const-string p1, "0E+"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :goto_20
    const/high16 p1, -0x8000

    if-ne p2, p1, :cond_4c

    const-string p1, "2147483648"

    :goto_26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 398
    .end local v2           #negNumber:Z
    .end local p0           #result1:Ljava/lang/StringBuffer;
    .end local p2
    :goto_2d
    return-object p0

    .line 308
    .local p0, value:J
    .restart local p2
    :cond_2e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_8

    .line 314
    .restart local v2       #negNumber:Z
    :pswitch_31
    const-string p0, "0"

    goto :goto_2d

    .line 315
    :pswitch_34
    const-string p0, "0.0"

    goto :goto_2d

    .line 316
    :pswitch_37
    const-string p0, "0.00"

    goto :goto_2d

    .line 317
    :pswitch_3a
    const-string p0, "0.000"

    goto :goto_2d

    .line 318
    :pswitch_3d
    const-string p0, "0.0000"

    goto :goto_2d

    .line 319
    :pswitch_40
    const-string p0, "0.00000"

    goto :goto_2d

    .line 320
    :pswitch_43
    const-string p0, "0.000000"

    goto :goto_2d

    .line 326
    .local p0, result1:Ljava/lang/StringBuffer;
    :cond_46
    const-string p1, "0E"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 328
    :cond_4c
    neg-int p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 333
    .local p0, value:J
    :cond_52
    const/16 v3, 0x12

    .line 338
    .local v3, resLengthInChars:I
    add-int/lit8 v0, v3, 0x1

    new-array v4, v0, [C

    .line 341
    .local v4, result:[C
    move v0, v3

    .line 342
    .local v0, currentChar:I
    move-wide p0, p0

    .local p0, v:J
    move-wide v5, p0

    .end local p0           #v:J
    .local v5, v:J
    move p0, v0

    .line 344
    .end local v0           #currentChar:I
    .local p0, currentChar:I
    :cond_5c
    move-wide v0, v5

    .line 345
    .local v0, prev:J
    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    .line 346
    add-int/lit8 p0, p0, -0x1

    const-wide/16 v7, 0x30

    const-wide/16 v9, 0xa

    mul-long/2addr v9, v5

    sub-long/2addr v0, v9

    add-long/2addr v0, v7

    long-to-int p1, v0

    int-to-char p1, p1

    aput-char p1, v4, p0

    .line 347
    .end local v0           #prev:J
    const-wide/16 v0, 0x0

    cmp-long p1, v5, v0

    if-nez p1, :cond_5c

    .line 349
    int-to-long v0, v3

    int-to-long v5, p0

    sub-long/2addr v0, v5

    int-to-long v5, p2

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    .line 350
    .local v0, exponent:J
    if-nez p2, :cond_8e

    .line 351
    .end local v5           #v:J
    if-eqz v2, :cond_85

    .line 352
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 354
    :cond_85
    new-instance p1, Ljava/lang/String;

    sub-int p2, v3, p0

    invoke-direct {p1, v4, p0, p2}, Ljava/lang/String;-><init>([CII)V

    .end local p2
    move-object p0, p1

    goto :goto_2d

    .line 356
    .restart local p2
    :cond_8e
    if-lez p2, :cond_f7

    const-wide/16 p1, -0x6

    cmp-long p1, v0, p1

    if-ltz p1, :cond_f7

    .line 357
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_c6

    .line 359
    long-to-int p1, v0

    add-int/2addr p1, p0

    .line 360
    .local p1, insertPoint:I
    const/4 p2, 0x1

    sub-int p2, v3, p2

    .end local v0           #exponent:J
    .local p2, j:I
    :goto_a1
    if-lt p2, p1, :cond_ac

    .line 361
    add-int/lit8 v0, p2, 0x1

    aget-char v1, v4, p2

    aput-char v1, v4, v0

    .line 360
    add-int/lit8 p2, p2, -0x1

    goto :goto_a1

    .line 363
    :cond_ac
    add-int/lit8 p1, p1, 0x1

    const/16 p2, 0x2e

    aput-char p2, v4, p1

    .line 364
    .end local p2           #j:I
    if-eqz v2, :cond_ba

    .line 365
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 367
    .end local p1           #insertPoint:I
    :cond_ba
    new-instance p1, Ljava/lang/String;

    sub-int p2, v3, p0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, v4, p0, p2}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_2d

    .line 370
    .restart local v0       #exponent:J
    .local p2, scale:I
    :cond_c6
    const/4 p1, 0x2

    .end local p2           #scale:I
    .local p1, j:I
    :goto_c7
    int-to-long v5, p1

    neg-long v7, v0

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long p2, v5, v7

    if-gez p2, :cond_d9

    .line 371
    add-int/lit8 p0, p0, -0x1

    const/16 p2, 0x30

    aput-char p2, v4, p0

    .line 370
    add-int/lit8 p1, p1, 0x1

    goto :goto_c7

    .line 373
    :cond_d9
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2e

    aput-char p1, v4, p0

    .line 374
    .end local p1           #j:I
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x30

    aput-char p1, v4, p0

    .line 375
    if-eqz v2, :cond_ed

    .line 376
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 378
    :cond_ed
    new-instance p1, Ljava/lang/String;

    sub-int p2, v3, p0

    invoke-direct {p1, v4, p0, p2}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_2d

    .line 380
    .restart local p2       #scale:I
    :cond_f7
    add-int/lit8 v5, p0, 0x1

    .line 381
    .local v5, startPoint:I
    move p1, v3

    .line 382
    .local p1, endPoint:I
    new-instance p2, Ljava/lang/StringBuffer;

    .end local p2           #scale:I
    const/16 v6, 0x10

    add-int/lit8 v6, v6, 0x12

    sub-int/2addr v6, v5

    invoke-direct {p2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 383
    .local p2, result1:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_10b

    .line 384
    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    .end local v2           #negNumber:Z
    :cond_10b
    sub-int/2addr p1, v5

    const/4 v2, 0x1

    if-lt p1, v2, :cond_13f

    .line 387
    .end local p1           #endPoint:I
    aget-char p1, v4, p0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 389
    add-int/lit8 p1, p0, 0x1

    sub-int p0, v3, p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    invoke-virtual {p2, v4, p1, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 393
    .end local p0           #currentChar:I
    :goto_122
    const/16 p0, 0x45

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_132

    .line 395
    const/16 p0, 0x2b

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    :cond_132
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2d

    .line 391
    .restart local p0       #currentChar:I
    :cond_13f
    sub-int p1, v3, p0

    invoke-virtual {p2, v4, p0, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_122

    .line 313
    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method static toDecimalScaledString(Ljava/math/BigInteger;I)Ljava/lang/String;
    .registers 14
    .parameter "val"
    .parameter "scale"

    .prologue
    .line 144
    const-string v0, "Conversion.toDecimalScaledString"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 146
    iget v5, p0, Ljava/math/BigInteger;->sign:I

    .line 147
    .local v5, sign:I
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    .line 148
    .local v1, numberLength:I
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    .line 153
    .local v0, digits:[I
    if-nez v5, :cond_40

    .line 154
    packed-switch p1, :pswitch_data_1b2

    .line 170
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local p0, result1:Ljava/lang/StringBuffer;
    if-gez p1, :cond_3a

    .line 172
    const-string v0, "0E+"

    .end local v0           #digits:[I
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :goto_1c
    neg-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    .end local p1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 300
    .end local v1           #numberLength:I
    .end local v5           #sign:I
    .end local p0           #result1:Ljava/lang/StringBuffer;
    :goto_24
    return-object p0

    .line 156
    .restart local v0       #digits:[I
    .restart local v1       #numberLength:I
    .restart local v5       #sign:I
    .local p0, val:Ljava/math/BigInteger;
    .restart local p1
    :pswitch_25
    const-string p0, "0"

    goto :goto_24

    .line 158
    :pswitch_28
    const-string p0, "0.0"

    goto :goto_24

    .line 160
    :pswitch_2b
    const-string p0, "0.00"

    goto :goto_24

    .line 162
    :pswitch_2e
    const-string p0, "0.000"

    goto :goto_24

    .line 164
    :pswitch_31
    const-string p0, "0.0000"

    goto :goto_24

    .line 166
    :pswitch_34
    const-string p0, "0.00000"

    goto :goto_24

    .line 168
    :pswitch_37
    const-string p0, "0.000000"

    goto :goto_24

    .line 174
    .local p0, result1:Ljava/lang/StringBuffer;
    :cond_3a
    const-string v0, "0E"

    .end local v0           #digits:[I
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 181
    .restart local v0       #digits:[I
    .local p0, val:Ljava/math/BigInteger;
    :cond_40
    mul-int/lit8 p0, v1, 0xa

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v3, p0, 0x7

    .line 186
    .local v3, resLengthInChars:I
    add-int/lit8 p0, v3, 0x1

    new-array v4, p0, [C

    .line 190
    .end local p0           #val:Ljava/math/BigInteger;
    .local v4, result:[C
    move p0, v3

    .line 191
    .local p0, currentChar:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9f

    .line 192
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 193
    .end local v1           #numberLength:I
    .local v0, highDigit:I
    if-gez v0, :cond_8d

    .line 194
    int-to-long v0, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    .local v0, v:J
    move-wide v6, v0

    .line 196
    .end local v0           #v:J
    .local v6, v:J
    :cond_5b
    move-wide v0, v6

    .line 197
    .local v0, prev:J
    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    .line 198
    add-int/lit8 p0, p0, -0x1

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    sub-long/2addr v0, v8

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, v4, p0

    .line 199
    .end local v0           #prev:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_5b

    .line 245
    .end local v6           #v:J
    :cond_71
    :goto_71
    if-gez v5, :cond_108

    const/4 v0, 0x1

    move v1, v0

    .line 246
    .local v1, negNumber:Z
    :goto_75
    sub-int v0, v3, p0

    sub-int/2addr v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 247
    .local v0, exponent:I
    if-nez p1, :cond_10c

    .line 248
    if-eqz v1, :cond_84

    .line 249
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 251
    .end local p1
    :cond_84
    new-instance p1, Ljava/lang/String;

    sub-int v0, v3, p0

    invoke-direct {p1, v4, p0, v0}, Ljava/lang/String;-><init>([CII)V

    .end local v0           #exponent:I
    move-object p0, p1

    goto :goto_24

    .line 201
    .end local v1           #negNumber:Z
    .local v0, highDigit:I
    .restart local p1
    :cond_8d
    move v0, v0

    .local v0, v:I
    move v1, v0

    .line 203
    .end local v0           #v:I
    .local v1, v:I
    :cond_8f
    move v0, v1

    .line 204
    .local v0, prev:I
    div-int/lit8 v1, v1, 0xa

    .line 205
    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, v4, p0

    .line 206
    .end local v0           #prev:I
    if-nez v1, :cond_8f

    goto :goto_71

    .line 209
    .local v0, digits:[I
    .local v1, numberLength:I
    :cond_9f
    new-array v6, v1, [I

    .line 210
    .local v6, temp:[I
    move v1, v1

    .line 211
    .local v1, tempLen:I
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v2, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v1

    .line 216
    .end local v0           #digits:[I
    .end local v1           #tempLen:I
    .local v7, tempLen:I
    :goto_a8
    const-wide/16 v1, 0x0

    .line 217
    .local v1, result11:J
    const/4 v0, 0x1

    sub-int v0, v7, v0

    .local v0, i1:I
    :goto_ad
    if-ltz v0, :cond_cb

    .line 218
    const/16 v8, 0x20

    shl-long/2addr v1, v8

    aget v8, v6, v0

    .end local v1           #result11:J
    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v1, v8

    .line 220
    .local v1, temp1:J
    invoke-static {v1, v2}, Ljava/math/Conversion;->divideLongByBillion(J)J

    move-result-wide v1

    .line 221
    .local v1, res:J
    long-to-int v8, v1

    aput v8, v6, v0

    .line 222
    const/16 v8, 0x20

    shr-long/2addr v1, v8

    long-to-int v1, v1

    int-to-long v1, v1

    .line 217
    .local v1, result11:J
    add-int/lit8 v0, v0, -0x1

    goto :goto_ad

    .line 224
    :cond_cb
    long-to-int v1, v1

    .line 225
    .local v1, resDigit:I
    move v0, p0

    .line 227
    .local v0, previous:I
    :cond_cd
    add-int/lit8 p0, p0, -0x1

    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v4, p0

    .line 228
    div-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_dc

    if-nez p0, :cond_cd

    .line 229
    :cond_dc
    const/16 v1, 0x9

    sub-int v0, v1, v0

    add-int/2addr v0, p0

    .line 230
    .local v0, delta:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e2
    if-ge v1, v0, :cond_ef

    if-lez p0, :cond_ef

    .line 231
    add-int/lit8 p0, p0, -0x1

    const/16 v2, 0x30

    aput-char v2, v4, p0

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 233
    :cond_ef
    const/4 v0, 0x1

    sub-int v0, v7, v0

    .line 234
    .end local v1           #i:I
    .local v0, j:I
    :goto_f2
    aget v1, v6, v0

    if-nez v1, :cond_104

    .line 235
    if-nez v0, :cond_101

    .line 241
    .end local v0           #j:I
    :goto_f8
    aget-char v0, v4, p0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_71

    .line 242
    add-int/lit8 p0, p0, 0x1

    goto :goto_f8

    .line 234
    .restart local v0       #j:I
    :cond_101
    add-int/lit8 v0, v0, -0x1

    goto :goto_f2

    .line 239
    :cond_104
    add-int/lit8 v0, v0, 0x1

    .end local v7           #tempLen:I
    .local v0, tempLen:I
    move v7, v0

    .line 240
    .end local v0           #tempLen:I
    .restart local v7       #tempLen:I
    goto :goto_a8

    .line 245
    .end local v6           #temp:[I
    .end local v7           #tempLen:I
    :cond_108
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_75

    .line 254
    .local v0, exponent:I
    .local v1, negNumber:Z
    :cond_10c
    if-lez p1, :cond_16a

    const/4 p1, -0x6

    if-lt v0, p1, :cond_16a

    .line 255
    .end local p1
    if-ltz v0, :cond_13d

    .line 257
    add-int p1, p0, v0

    .line 258
    .local p1, insertPoint:I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .end local v5           #sign:I
    .local v0, j:I
    :goto_118
    if-lt v0, p1, :cond_123

    .line 259
    add-int/lit8 v2, v0, 0x1

    aget-char v5, v4, v0

    aput-char v5, v4, v2

    .line 258
    add-int/lit8 v0, v0, -0x1

    goto :goto_118

    .line 261
    :cond_123
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2e

    aput-char v0, v4, p1

    .line 262
    .end local v0           #j:I
    if-eqz v1, :cond_131

    .line 263
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 265
    .end local p1           #insertPoint:I
    :cond_131
    new-instance p1, Ljava/lang/String;

    sub-int v0, v3, p0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p1, v4, p0, v0}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_24

    .line 269
    .local v0, exponent:I
    .restart local v5       #sign:I
    :cond_13d
    const/4 p1, 0x2

    .local p1, j:I
    :goto_13e
    neg-int v2, v0

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_14c

    .line 270
    add-int/lit8 p0, p0, -0x1

    const/16 v2, 0x30

    aput-char v2, v4, p0

    .line 269
    add-int/lit8 p1, p1, 0x1

    goto :goto_13e

    .line 272
    :cond_14c
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2e

    aput-char p1, v4, p0

    .line 273
    .end local p1           #j:I
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x30

    aput-char p1, v4, p0

    .line 274
    if-eqz v1, :cond_160

    .line 275
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 277
    :cond_160
    new-instance p1, Ljava/lang/String;

    sub-int v0, v3, p0

    invoke-direct {p1, v4, p0, v0}, Ljava/lang/String;-><init>([CII)V

    .end local v0           #exponent:I
    move-object p0, p1

    goto/16 :goto_24

    .line 280
    .restart local v0       #exponent:I
    :cond_16a
    add-int/lit8 v5, p0, 0x1

    .line 281
    .local v5, startPoint:I
    move p1, v3

    .line 282
    .local p1, endPoint:I
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v6, p1, 0x10

    sub-int/2addr v6, v5

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 283
    .local v2, result1:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_17c

    .line 284
    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    .end local v1           #negNumber:Z
    :cond_17c
    sub-int/2addr p1, v5

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1ac

    .line 287
    .end local p1           #endPoint:I
    aget-char p1, v4, p0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    add-int/lit8 p1, p0, 0x1

    sub-int p0, v3, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v2, v4, p1, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 295
    .end local p0           #currentChar:I
    :goto_193
    const/16 p0, 0x45

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    if-lez v0, :cond_19f

    .line 297
    const/16 p0, 0x2b

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    :cond_19f
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_24

    .line 292
    .restart local p0       #currentChar:I
    :cond_1ac
    sub-int p1, v3, p0

    invoke-virtual {v2, v4, p0, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_193

    .line 154
    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
    .end packed-switch
.end method
