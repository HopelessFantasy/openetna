.class final Lorg/apache/harmony/luni/util/HexStringParser;
.super Ljava/lang/Object;
.source "HexStringParser.java"


# static fields
.field private static final BINARY_EXPONENT:Ljava/lang/String; = "[pP]([+-]?\\d+)"

.field private static final DOUBLE_EXPONENT_WIDTH:I = 0xb

.field private static final DOUBLE_MANTISSA_WIDTH:I = 0x34

.field private static final FLOAT_EXPONENT_WIDTH:I = 0x8

.field private static final FLOAT_MANTISSA_WIDTH:I = 0x17

.field private static final FLOAT_TYPE_SUFFIX:Ljava/lang/String; = "[fFdD]?"

.field private static final HEX_PATTERN:Ljava/lang/String; = "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

.field private static final HEX_RADIX:I = 0x10

.field private static final HEX_SIGNIFICANT:Ljava/lang/String; = "0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)"

.field private static final MAX_SIGNIFICANT_LENGTH:I = 0xf

.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final EXPONENT_BASE:J

.field private final EXPONENT_WIDTH:I

.field private final MANTISSA_MASK:J

.field private final MANTISSA_WIDTH:I

.field private final MAX_EXPONENT:J

.field private final MIN_EXPONENT:J

.field private abandonedNumber:Ljava/lang/String;

.field private exponent:J

.field private mantissa:J

.field private sign:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/util/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 7
    .parameter "exponent_width"
    .parameter "mantissa_width"

    .prologue
    const-wide/16 v2, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 72
    iput p1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_WIDTH:I

    .line 73
    iput p2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    .line 75
    const/4 v0, 0x1

    sub-int v0, p1, v0

    shl-long v0, v2, v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_BASE:J

    .line 76
    shl-long v0, v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MAX_EXPONENT:J

    .line 77
    iget v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MIN_EXPONENT:J

    .line 78
    shl-long v0, v2, p2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_MASK:J

    .line 79
    return-void
.end method

.method private checkedAddExponent(J)V
    .registers 10
    .parameter "offset"

    .prologue
    .line 215
    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    add-long v1, v3, p1

    .line 216
    .local v1, result:J
    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 217
    .local v0, expSign:I
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v3

    mul-int/2addr v3, v0

    if-lez v3, :cond_22

    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    move-result v3

    mul-int/2addr v3, v0

    if-gez v3, :cond_22

    .line 218
    int-to-long v3, v0

    const-wide v5, 0x7fffffffffffffffL

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 222
    :goto_21
    return-void

    .line 220
    :cond_22
    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    goto :goto_21
.end method

.method private countBitsLength(J)I
    .registers 5
    .parameter "value"

    .prologue
    .line 324
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 325
    .local v0, leadingZeros:I
    const/16 v1, 0x40

    sub-int/2addr v1, v0

    return v1
.end method

.method private discardTrailingBits(J)V
    .registers 9
    .parameter "num"

    .prologue
    const-wide/16 v4, -0x1

    .line 256
    long-to-int v2, p1

    shl-long v2, v4, v2

    xor-long v0, v2, v4

    .line 257
    .local v0, mask:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    and-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 258
    iget-wide v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    long-to-int v4, p1

    shr-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 259
    return-void
.end method

.method private fitMantissaInDesiredWidth(I)V
    .registers 6
    .parameter "desiredWidth"

    .prologue
    .line 244
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v0

    .line 245
    .local v0, bitLength:I
    if-le v0, p1, :cond_f

    .line 246
    sub-int v1, v0, p1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->discardTrailingBits(J)V

    .line 250
    :goto_e
    return-void

    .line 248
    :cond_f
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    sub-int v3, p1, v0

    shl-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    goto :goto_e
.end method

.method private getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "strIntegerPart"
    .parameter "strDecimalPart"

    .prologue
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, significand:Ljava/lang/String;
    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 293
    const-string v0, "0"

    .line 295
    :cond_21
    return-object v0
.end method

.method private getOffset(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "strIntegerPart"
    .parameter "strDecimalPart"

    .prologue
    const/16 v6, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 305
    const-string v2, "^0+"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 309
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, leadingNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    .line 320
    .end local v1           #leadingNumber:Ljava/lang/String;
    :goto_27
    return v2

    .line 315
    :cond_28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3a

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 316
    :cond_3a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_42

    move v2, v4

    .line 317
    goto :goto_27

    .line 319
    :cond_42
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 320
    .restart local v1       #leadingNumber:Ljava/lang/String;
    neg-int v2, v0

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    goto :goto_27
.end method

.method private static getSegmentsFromHexString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "hexString"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 120
    sget-object v2, Lorg/apache/harmony/luni/util/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 121
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_15

    .line 122
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 125
    :cond_15
    new-array v0, v6, [Ljava/lang/String;

    .line 126
    .local v0, hexSegments:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 127
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 128
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 130
    return-object v0
.end method

.method private parse(Ljava/lang/String;)J
    .registers 10
    .parameter "hexString"

    .prologue
    .line 102
    invoke-static {p1}, Lorg/apache/harmony/luni/util/HexStringParser;->getSegmentsFromHexString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, hexSegments:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v2, v1, v4

    .line 104
    .local v2, signStr:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, v1, v4

    .line 105
    .local v3, significantStr:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v0, v1, v4

    .line 107
    .local v0, exponentStr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->parseHexSign(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseExponent(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/util/HexStringParser;->parseMantissa(Ljava/lang/String;)V

    .line 111
    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    iget v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    iget v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_WIDTH:I

    add-int/2addr v6, v7

    shl-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    .line 112
    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    iget v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    shl-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 113
    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    or-long/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 6
    .parameter "hexString"

    .prologue
    .line 85
    new-instance v0, Lorg/apache/harmony/luni/util/HexStringParser;

    const/16 v3, 0xb

    const/16 v4, 0x34

    invoke-direct {v0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;-><init>(II)V

    .line 87
    .local v0, parser:Lorg/apache/harmony/luni/util/HexStringParser;
    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parse(Ljava/lang/String;)J

    move-result-wide v1

    .line 88
    .local v1, result:J
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    return-wide v3
.end method

.method private parseExponent(Ljava/lang/String;)V
    .registers 9
    .parameter "exponentStr"

    .prologue
    const/4 v4, 0x1

    .line 144
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 145
    .local v2, leadingChar:C
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_24

    const/4 v3, -0x1

    move v1, v3

    .line 146
    .local v1, expSign:I
    :goto_c
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 147
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_16
    int-to-long v3, v1

    :try_start_17
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 152
    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_BASE:J

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;->checkedAddExponent(J)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_23} :catch_26

    .line 156
    :goto_23
    return-void

    .end local v1           #expSign:I
    :cond_24
    move v1, v4

    .line 145
    goto :goto_c

    .line 153
    .restart local v1       #expSign:I
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 154
    .local v0, e:Ljava/lang/NumberFormatException;
    int-to-long v3, v1

    const-wide v5, 0x7fffffffffffffffL

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    goto :goto_23
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 5
    .parameter "hexString"

    .prologue
    .line 95
    new-instance v0, Lorg/apache/harmony/luni/util/HexStringParser;

    const/16 v2, 0x8

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/luni/util/HexStringParser;-><init>(II)V

    .line 97
    .local v0, parser:Lorg/apache/harmony/luni/util/HexStringParser;
    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parse(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 98
    .local v1, result:I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method private parseHexSign(Ljava/lang/String;)V
    .registers 4
    .parameter "signStr"

    .prologue
    .line 137
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    :goto_a
    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    .line 138
    return-void

    .line 137
    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method private parseMantissa(Ljava/lang/String;)V
    .registers 13
    .parameter "significantStr"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/16 v9, 0xf

    .line 162
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, strings:[Ljava/lang/String;
    aget-object v3, v4, v10

    .line 164
    .local v3, strIntegerPart:Ljava/lang/String;
    array-length v5, v4

    if-le v5, v6, :cond_22

    aget-object v5, v4, v6

    move-object v2, v5

    .line 166
    .local v2, strDecimalPart:Ljava/lang/String;
    :goto_12
    invoke-direct {p0, v3, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, significand:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 168
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->setZero()V

    .line 198
    :goto_21
    return-void

    .line 164
    .end local v1           #significand:Ljava/lang/String;
    .end local v2           #strDecimalPart:Ljava/lang/String;
    :cond_22
    const-string v5, ""

    move-object v2, v5

    goto :goto_12

    .line 172
    .restart local v1       #significand:Ljava/lang/String;
    .restart local v2       #strDecimalPart:Ljava/lang/String;
    :cond_26
    invoke-direct {p0, v3, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->getOffset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, offset:I
    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lorg/apache/harmony/luni/util/HexStringParser;->checkedAddExponent(J)V

    .line 175
    iget-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MAX_EXPONENT:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3a

    .line 176
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->setInfinite()V

    goto :goto_21

    .line 180
    :cond_3a
    iget-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MIN_EXPONENT:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_46

    .line 181
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->setZero()V

    goto :goto_21

    .line 185
    :cond_46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_56

    .line 186
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 187
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_56
    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 192
    iget-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6a

    .line 193
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->processNormalNumber()V

    goto :goto_21

    .line 195
    :cond_6a
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->processSubNormalNumber()V

    goto :goto_21
.end method

.method private processNormalNumber()V
    .registers 6

    .prologue
    .line 225
    iget v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x2

    .line 226
    .local v0, desiredWidth:I
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/HexStringParser;->fitMantissaInDesiredWidth(I)V

    .line 227
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->round()V

    .line 228
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 229
    return-void
.end method

.method private processSubNormalNumber()V
    .registers 6

    .prologue
    .line 232
    iget v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x1

    .line 233
    .local v0, desiredWidth:I
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 234
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 235
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/HexStringParser;->fitMantissaInDesiredWidth(I)V

    .line 236
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->round()V

    .line 237
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 238
    return-void
.end method

.method private round()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    .line 267
    iget-object v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    const-string v7, "0+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_42

    move v1, v9

    .line 270
    .local v1, moreThanZero:Z
    :goto_14
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    and-long/2addr v6, v10

    long-to-int v0, v6

    .line 271
    .local v0, lastDiscardedBit:I
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    shr-long/2addr v6, v9

    iput-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 272
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    and-long/2addr v6, v10

    long-to-int v5, v6

    .line 274
    .local v5, tailBitInMantissa:I
    if-ne v0, v9, :cond_41

    if-nez v1, :cond_27

    if-ne v5, v9, :cond_41

    .line 275
    :cond_27
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v3

    .line 276
    .local v3, oldLength:I
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 277
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v2

    .line 280
    .local v2, newLength:I
    iget v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    if-lt v3, v6, :cond_41

    if-le v2, v3, :cond_41

    .line 281
    invoke-direct {p0, v10, v11}, Lorg/apache/harmony/luni/util/HexStringParser;->checkedAddExponent(J)V

    .line 284
    .end local v2           #newLength:I
    .end local v3           #oldLength:I
    :cond_41
    return-void

    .line 268
    .end local v0           #lastDiscardedBit:I
    .end local v1           #moreThanZero:Z
    .end local v5           #tailBitInMantissa:I
    :cond_42
    const/4 v6, 0x0

    move v1, v6

    goto :goto_14
.end method

.method private setInfinite()V
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MAX_EXPONENT:J

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 203
    return-void
.end method

.method private setZero()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 206
    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 207
    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 208
    return-void
.end method
