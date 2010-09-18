.class public Lcom/ibm/icu4jni/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# instance fields
.field private addr:I

.field private minExponentDigits:B

.field private negPrefNull:Z

.field private negSuffNull:Z

.field private posPrefNull:Z

.field private posSuffNull:Z

.field private symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

.field private useExponentialNotation:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V
    .registers 4
    .parameter "pattern"
    .parameter "icuSymbols"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->useExponentialNotation:Z

    .line 44
    iput-byte v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->minExponentDigits:B

    .line 52
    invoke-virtual {p2}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getAddr()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    .line 53
    iput-object p2, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    .line 54
    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected static getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 490
    if-nez p0, :cond_5

    move-object v0, v1

    .line 526
    :goto_4
    return-object v0

    .line 493
    :cond_5
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 494
    const-string v0, "sign"

    goto :goto_4

    .line 496
    :cond_10
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 497
    const-string v0, "integer"

    goto :goto_4

    .line 499
    :cond_1b
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 500
    const-string v0, "fraction"

    goto :goto_4

    .line 502
    :cond_26
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 503
    const-string v0, "exponent"

    goto :goto_4

    .line 505
    :cond_31
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 506
    const-string v0, "exponent_sign"

    goto :goto_4

    .line 508
    :cond_3c
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 509
    const-string v0, "exponent_symbol"

    goto :goto_4

    .line 511
    :cond_47
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 512
    const-string v0, "currency"

    goto :goto_4

    .line 514
    :cond_52
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 515
    const-string v0, "grouping_separator"

    goto :goto_4

    .line 517
    :cond_5d
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 518
    const-string v0, "decimal_separator"

    goto :goto_4

    .line 520
    :cond_68
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 521
    const-string v0, "percent"

    goto :goto_4

    .line 523
    :cond_73
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 524
    const-string v0, "permille"

    goto :goto_4

    :cond_7e
    move-object v0, v1

    .line 526
    goto :goto_4
.end method

.method private makeScalePositive(ILjava/lang/StringBuilder;)I
    .registers 5
    .parameter "scale"
    .parameter "val"

    .prologue
    .line 273
    if-gez p1, :cond_f

    .line 274
    neg-int p1, p1

    .line 275
    move v0, p1

    .local v0, i:I
    :goto_4
    if-lez v0, :cond_e

    .line 276
    const/16 v1, 0x30

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 278
    :cond_e
    const/4 p1, 0x0

    .line 280
    .end local v0           #i:I
    :cond_f
    return p1
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 6
    .parameter "pattern"

    .prologue
    .line 198
    if-nez p1, :cond_a

    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "pattern was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_a
    :try_start_a
    iget v1, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->applyPatternImpl(IZLjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_10} :catch_11

    .line 207
    return-void

    .line 203
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 204
    .local v0, re:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applying localized pattern failed for pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 6
    .parameter "pattern"

    .prologue
    .line 210
    if-nez p1, :cond_a

    .line 211
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "pattern was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_a
    :try_start_a
    iget v1, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->applyPatternImpl(IZLjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_10} :catch_11

    .line 219
    return-void

    .line 215
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 216
    .local v0, re:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applying pattern failed for pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, pat:Ljava/lang/String;
    iget-object v4, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 66
    .local v0, loc:Ljava/util/Locale;
    iget-object v4, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    .line 67
    .local v3, sym:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;
    new-instance v1, Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu4jni/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V

    .line 68
    .local v1, newdf:Lcom/ibm/icu4jni/text/DecimalFormat;
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 69
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 70
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 71
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->isGroupingUsed()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu4jni/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getGroupingSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu4jni/text/DecimalFormat;->setGroupingSize(I)V

    .line 74
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "object"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 79
    if-ne p1, p0, :cond_6

    move v5, v7

    .line 118
    :goto_5
    return v5

    .line 82
    :cond_6
    instance-of v5, p1, Lcom/ibm/icu4jni/text/DecimalFormat;

    if-nez v5, :cond_c

    move v5, v8

    .line 83
    goto :goto_5

    .line 85
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object v1, v0

    .line 87
    .local v1, obj:Lcom/ibm/icu4jni/text/DecimalFormat;
    iget v5, v1, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    iget v6, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    if-ne v5, v6, :cond_18

    move v5, v7

    .line 88
    goto :goto_5

    .line 91
    :cond_18
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 94
    .local v3, result:Z
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 95
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v6

    if-ne v5, v6, :cond_fd

    move v5, v7

    :goto_34
    and-int/2addr v3, v5

    .line 96
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getGroupingSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getGroupingSize()I

    move-result v6

    if-ne v5, v6, :cond_100

    move v5, v7

    :goto_40
    and-int/2addr v3, v5

    .line 97
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMultiplier()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMultiplier()I

    move-result v6

    if-ne v5, v6, :cond_103

    move v5, v7

    :goto_4c
    and-int/2addr v3, v5

    .line 98
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 99
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 100
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 101
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 102
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v6

    if-ne v5, v6, :cond_106

    move v5, v7

    :goto_8c
    and-int/2addr v3, v5

    .line 103
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v6

    if-ne v5, v6, :cond_108

    move v5, v7

    :goto_98
    and-int/2addr v3, v5

    .line 104
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v6

    if-ne v5, v6, :cond_10a

    move v5, v7

    :goto_a4
    and-int/2addr v3, v5

    .line 105
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v6

    if-ne v5, v6, :cond_10c

    move v5, v7

    :goto_b0
    and-int/2addr v3, v5

    .line 106
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->isGroupingUsed()Z

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->isGroupingUsed()Z

    move-result v6

    if-ne v5, v6, :cond_10e

    move v5, v7

    :goto_bc
    and-int/2addr v3, v5

    .line 107
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v2

    .line 108
    .local v2, objCurr:Ljava/util/Currency;
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v4

    .line 109
    .local v4, thisCurr:Ljava/util/Currency;
    if-eqz v2, :cond_112

    .line 110
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 111
    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 112
    invoke-virtual {v2}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v6

    if-ne v5, v6, :cond_110

    move v5, v7

    :goto_ec
    and-int/2addr v3, v5

    .line 116
    :goto_ed
    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    move v5, v3

    .line 118
    goto/16 :goto_5

    .end local v2           #objCurr:Ljava/util/Currency;
    .end local v4           #thisCurr:Ljava/util/Currency;
    :cond_fd
    move v5, v8

    .line 95
    goto/16 :goto_34

    :cond_100
    move v5, v8

    .line 96
    goto/16 :goto_40

    :cond_103
    move v5, v8

    .line 97
    goto/16 :goto_4c

    :cond_106
    move v5, v8

    .line 102
    goto :goto_8c

    :cond_108
    move v5, v8

    .line 103
    goto :goto_98

    :cond_10a
    move v5, v8

    .line 104
    goto :goto_a4

    :cond_10c
    move v5, v8

    .line 105
    goto :goto_b0

    :cond_10e
    move v5, v8

    .line 106
    goto :goto_bc

    .restart local v2       #objCurr:Ljava/util/Currency;
    .restart local v4       #thisCurr:Ljava/util/Currency;
    :cond_110
    move v5, v8

    .line 112
    goto :goto_ec

    .line 114
    :cond_112
    if-nez v4, :cond_117

    move v5, v7

    :goto_115
    and-int/2addr v3, v5

    goto :goto_ed

    :cond_117
    move v5, v8

    goto :goto_115
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 183
    if-eqz p3, :cond_4

    if-nez p4, :cond_a

    .line 184
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_a
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, fieldType:Ljava/lang/String;
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(IDLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 194
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 166
    if-eqz p3, :cond_4

    if-nez p4, :cond_a

    .line 167
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_a
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, fieldType:Ljava/lang/String;
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(IJLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 177
    return-object p3
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 27
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 124
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move v3, v0

    if-nez v3, :cond_d

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 127
    :cond_d
    if-eqz p2, :cond_11

    if-nez p3, :cond_17

    .line 128
    :cond_11
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 131
    :cond_17
    invoke-virtual/range {p3 .. p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu4jni/text/DecimalFormat;->getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, fieldType:Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object/from16 v18, v0

    .line 135
    .local v18, number:Ljava/lang/Number;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/math/BigInteger;

    move v3, v0

    if-eqz v3, :cond_51

    .line 136
    move-object/from16 v0, v18

    check-cast v0, Ljava/math/BigInteger;

    move-object/from16 v22, v0

    .line 137
    .local v22, valBigInteger:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v3, v0

    const/16 v4, 0xa

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(ILjava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, result:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 159
    .end local v22           #valBigInteger:Ljava/math/BigInteger;
    :goto_50
    return-object v3

    .line 140
    .end local v19           #result:Ljava/lang/String;
    :cond_51
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/math/BigDecimal;

    move v3, v0

    if-eqz v3, :cond_99

    .line 141
    move-object/from16 v0, v18

    check-cast v0, Ljava/math/BigDecimal;

    move-object/from16 v21, v0

    .line 142
    .local v21, valBigDecimal:Ljava/math/BigDecimal;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v20, val:Ljava/lang/StringBuilder;
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigDecimal;->scale()I

    move-result v8

    .line 145
    .local v8, scale:I
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/DecimalFormat;->makeScalePositive(ILjava/lang/StringBuilder;)I

    move-result v8

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v3, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(ILjava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v19

    .line 148
    .restart local v19       #result:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_50

    .line 150
    .end local v8           #scale:I
    .end local v19           #result:Ljava/lang/String;
    .end local v20           #val:Ljava/lang/StringBuilder;
    .end local v21           #valBigDecimal:Ljava/math/BigDecimal;
    :cond_99
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    .line 151
    .local v13, dv:D
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 152
    .local v10, lv:J
    long-to-double v3, v10

    cmpl-double v3, v13, v3

    if-nez v3, :cond_bc

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v9, v0

    const/4 v14, 0x0

    move-object/from16 v12, p3

    move-object v13, v6

    invoke-static/range {v9 .. v14}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(IJLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    .end local v13           #dv:D
    move-result-object v19

    .line 155
    .restart local v19       #result:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_50

    .line 157
    .end local v19           #result:Ljava/lang/String;
    .restart local v13       #dv:D
    :cond_bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v12, v0

    const/16 v17, 0x0

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    invoke-static/range {v12 .. v17}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(IDLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v19

    .line 159
    .restart local v19       #result:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto/16 :goto_50
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 32
    .parameter "object"

    .prologue
    .line 223
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move v5, v0

    if-nez v5, :cond_d

    .line 224
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 226
    :cond_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object/from16 v24, v0

    .line 227
    .local v24, number:Ljava/lang/Number;
    const/16 v26, 0x0

    .line 228
    .local v26, text:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v9, attributes:Ljava/lang/StringBuffer;
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/math/BigInteger;

    move v5, v0

    if-eqz v5, :cond_65

    .line 231
    move-object/from16 v0, v24

    check-cast v0, Ljava/math/BigInteger;

    move-object/from16 v29, v0

    .line 232
    .local v29, valBigInteger:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v5, v0

    const/16 v6, 0xa

    move-object/from16 v0, v29

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(ILjava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v26

    .line 254
    .end local v29           #valBigInteger:Ljava/math/BigInteger;
    :goto_3c
    new-instance v20, Ljava/text/AttributedString;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 256
    .local v20, as:Ljava/text/AttributedString;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 258
    .local v22, attrs:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move v5, v0

    div-int/lit8 v25, v5, 0x3

    .line 259
    .local v25, size:I
    mul-int/lit8 v5, v25, 0x3

    move-object/from16 v0, v22

    array-length v0, v0

    move v6, v0

    if-eq v5, v6, :cond_d1

    .line 260
    invoke-virtual/range {v20 .. v20}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    .line 269
    :goto_64
    return-object v5

    .line 234
    .end local v20           #as:Ljava/text/AttributedString;
    .end local v22           #attrs:[Ljava/lang/String;
    .end local v25           #size:I
    :cond_65
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/math/BigDecimal;

    move v5, v0

    if-eqz v5, :cond_a4

    .line 235
    move-object/from16 v0, v24

    check-cast v0, Ljava/math/BigDecimal;

    move-object/from16 v28, v0

    .line 236
    .local v28, valBigDecimal:Ljava/math/BigDecimal;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v27, val:Ljava/lang/StringBuilder;
    invoke-virtual/range {v28 .. v28}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual/range {v28 .. v28}, Ljava/math/BigDecimal;->scale()I

    move-result v10

    .line 239
    .local v10, scale:I
    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/DecimalFormat;->makeScalePositive(ILjava/lang/StringBuilder;)I

    move-result v10

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v5, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(ILjava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v26

    .line 242
    goto :goto_3c

    .line 243
    .end local v10           #scale:I
    .end local v27           #val:Ljava/lang/StringBuilder;
    .end local v28           #valBigDecimal:Ljava/math/BigDecimal;
    :cond_a4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    .line 244
    .local v15, dv:D
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    .line 245
    .local v12, lv:J
    long-to-double v5, v12

    cmpl-double v5, v15, v5

    if-nez v5, :cond_c0

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v11, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v9

    invoke-static/range {v11 .. v16}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(IJLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    .end local v15           #dv:D
    move-result-object v26

    goto/16 :goto_3c

    .line 249
    .restart local v15       #dv:D
    :cond_c0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    move v14, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v9

    invoke-static/range {v14 .. v19}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->format(IDLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_3c

    .line 262
    .end local v12           #lv:J
    .end local v15           #dv:D
    .restart local v20       #as:Ljava/text/AttributedString;
    .restart local v22       #attrs:[Ljava/lang/String;
    .restart local v25       #size:I
    :cond_d1
    const/16 v23, 0x0

    .local v23, i:I
    :goto_d3
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_106

    .line 263
    mul-int/lit8 v5, v23, 0x3

    aget-object v5, v22, v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getField(Ljava/lang/String;)Ljava/text/Format$Field;

    move-result-object v21

    .line 264
    .local v21, attribute:Ljava/text/Format$Field;
    mul-int/lit8 v5, v23, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v22, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v6, v23, 0x3

    add-int/lit8 v6, v6, 0x2

    aget-object v6, v22, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 262
    add-int/lit8 v23, v23, 0x1

    goto :goto_d3

    .line 269
    .end local v21           #attribute:Ljava/text/Format$Field;
    :cond_106
    invoke-virtual/range {v20 .. v20}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    goto/16 :goto_64
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Lcom/ibm/icu4jni/text/DecimalFormatSymbols;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    return-object v0
.end method

.method protected getField(Ljava/lang/String;)Ljava/text/Format$Field;
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 530
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 566
    :goto_a
    return-object v0

    .line 533
    :cond_b
    const-string v0, "sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 534
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 536
    :cond_16
    const-string v0, "integer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 537
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 539
    :cond_21
    const-string v0, "fraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 540
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 542
    :cond_2c
    const-string v0, "exponent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 543
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 545
    :cond_37
    const-string v0, "exponent_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 546
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 548
    :cond_42
    const-string v0, "exponent_symbol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 549
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 551
    :cond_4d
    const-string v0, "currency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 552
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 554
    :cond_58
    const-string v0, "grouping_separator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 555
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 557
    :cond_63
    const-string v0, "decimal_separator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 558
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 560
    :cond_6e
    const-string v0, "percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 561
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 563
    :cond_79
    const-string v0, "permille"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 564
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    goto :goto_a

    :cond_84
    move-object v0, v1

    .line 566
    goto :goto_a
.end method

.method public getGroupingSize()I
    .registers 3

    .prologue
    .line 328
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMaximumFractionDigits()I
    .registers 3

    .prologue
    .line 300
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .registers 3

    .prologue
    .line 306
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMinimumFractionDigits()I
    .registers 3

    .prologue
    .line 312
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .registers 3

    .prologue
    .line 318
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .registers 3

    .prologue
    .line 333
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MULTIPLIER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->negPrefNull:Z

    if-eqz v0, :cond_6

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->negSuffNull:Z

    if-eqz v0, :cond_6

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->posPrefNull:Z

    if-eqz v0, :cond_6

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->posSuffNull:Z

    if-eqz v0, :cond_6

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 59
    invoke-super {p0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .registers 3

    .prologue
    .line 370
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_DECIMAL_ALWAYS_SHOWN:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isGroupingUsed()Z
    .registers 3

    .prologue
    .line 382
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isParseIntegerOnly()Z
    .registers 3

    .prologue
    .line 376
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_PARSE_INT_ONLY:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 4
    .parameter "string"
    .parameter "position"

    .prologue
    .line 293
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    invoke-static {v0, p1, p2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 3
    .parameter "currency"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 403
    return-void
.end method

.method public setDecimalFormatSymbols(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V
    .registers 2
    .parameter "icuSymbols"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->symbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    .line 392
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 395
    if-eqz p1, :cond_10

    const/4 v1, -0x1

    move v0, v1

    .line 396
    .local v0, i:I
    :goto_4
    iget v1, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_DECIMAL_ALWAYS_SHOWN:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 398
    return-void

    .line 395
    .end local v0           #i:I
    :cond_10
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4
.end method

.method public setGroupingSize(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 406
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 408
    return-void
.end method

.method public setGroupingUsed(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 412
    if-eqz p1, :cond_10

    const/4 v1, -0x1

    move v0, v1

    .line 413
    .local v0, i:I
    :goto_4
    iget v1, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 415
    return-void

    .line 412
    .end local v0           #i:I
    :cond_10
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4
.end method

.method public setMaximumFractionDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 419
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 421
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 425
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 427
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 431
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 433
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 437
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 439
    return-void
.end method

.method public setMultiplier(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 442
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MULTIPLIER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 444
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 447
    if-nez p1, :cond_15

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->negPrefNull:Z

    .line 448
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->negPrefNull:Z

    if-nez v0, :cond_14

    .line 449
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 453
    :cond_14
    return-void

    .line 447
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 456
    if-nez p1, :cond_15

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->negSuffNull:Z

    .line 457
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->negSuffNull:Z

    if-nez v0, :cond_14

    .line 458
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 462
    :cond_14
    return-void

    .line 456
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setParseIntegerOnly(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 484
    if-eqz p1, :cond_10

    const/4 v1, -0x1

    move v0, v1

    .line 485
    .local v0, i:I
    :goto_4
    iget v1, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_PARSE_INT_ONLY:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setAttribute(III)V

    .line 487
    return-void

    .line 484
    .end local v0           #i:I
    :cond_10
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 465
    if-nez p1, :cond_15

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->posPrefNull:Z

    .line 466
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->posPrefNull:Z

    if-nez v0, :cond_14

    .line 467
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 471
    :cond_14
    return-void

    .line 465
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 474
    if-nez p1, :cond_15

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->posSuffNull:Z

    .line 475
    iget-boolean v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->posSuffNull:Z

    if-nez v0, :cond_14

    .line 476
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 480
    :cond_14
    return-void

    .line 474
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 3

    .prologue
    .line 284
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->toPatternImpl(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormat;->addr:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->toPatternImpl(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
