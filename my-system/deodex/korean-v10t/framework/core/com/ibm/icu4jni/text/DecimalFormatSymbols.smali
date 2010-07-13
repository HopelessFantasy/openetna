.class public Lcom/ibm/icu4jni/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"


# instance fields
.field private addr:I

.field private loc:Ljava/util/Locale;


# direct methods
.method private constructor <init>(ILjava/util/Locale;)V
    .registers 3
    .parameter "addr"
    .parameter "loc"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    .line 35
    iput-object p2, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->loc:Ljava/util/Locale;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 8
    .parameter "locale"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->loc:Ljava/util/Locale;

    .line 40
    new-instance v4, Lcom/ibm/icu4jni/text/DecimalFormatSymbols$1;

    invoke-direct {v4, p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols$1;-><init>(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    .line 47
    .local v0, bundle:Ljava/util/ResourceBundle;
    const-string v4, "Number"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, pattern:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->openDecimalFormatImpl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    .line 50
    const-string v4, "CurrencySymbol"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, currSymbol:Ljava/lang/String;
    const-string v4, "IntCurrencySymbol"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, intCurrSymbol:Ljava/lang/String;
    iget v4, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v5, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 54
    iget v4, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v5, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)Ljava/util/Locale;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->loc:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 106
    iget v2, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    invoke-static {v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->cloneImpl(I)I

    move-result v0

    .line 107
    .local v0, addr:I
    iget-object v2, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->loc:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 108
    .local v1, loc:Ljava/util/Locale;
    new-instance v2, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-direct {v2, v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;-><init>(ILjava/util/Locale;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "object"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    if-nez p1, :cond_6

    move v5, v7

    .line 101
    :goto_5
    return v5

    .line 64
    :cond_6
    instance-of v5, p1, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    if-nez v5, :cond_c

    move v5, v7

    .line 65
    goto :goto_5

    .line 68
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-object v3, v0

    .line 70
    .local v3, sym:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;
    iget v5, v3, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    iget v6, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    if-ne v5, v6, :cond_18

    move v5, v8

    .line 71
    goto :goto_5

    .line 74
    :cond_18
    const/4 v2, 0x1

    .line 76
    .local v2, result:Z
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v1

    .line 77
    .local v1, objCurr:Ljava/util/Currency;
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v4

    .line 78
    .local v4, thisCurr:Ljava/util/Currency;
    if-eqz v1, :cond_ef

    .line 79
    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 80
    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 81
    invoke-virtual {v1}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v6

    if-ne v5, v6, :cond_ec

    move v5, v8

    :goto_48
    and-int/2addr v2, v5

    .line 85
    :goto_49
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 86
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    if-ne v5, v6, :cond_f7

    move v5, v8

    :goto_61
    and-int/2addr v2, v5

    .line 87
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getDigit()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getDigit()C

    move-result v6

    if-ne v5, v6, :cond_fa

    move v5, v8

    :goto_6d
    and-int/2addr v2, v5

    .line 88
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    if-ne v5, v6, :cond_fd

    move v5, v8

    :goto_79
    and-int/2addr v2, v5

    .line 89
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 90
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 92
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v6

    if-ne v5, v6, :cond_100

    move v5, v8

    :goto_9f
    and-int/2addr v2, v5

    .line 93
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v6

    if-ne v5, v6, :cond_102

    move v5, v8

    :goto_ab
    and-int/2addr v2, v5

    .line 95
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 96
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v6

    if-ne v5, v6, :cond_104

    move v5, v8

    :goto_c4
    and-int/2addr v2, v5

    .line 97
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getPercent()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getPercent()C

    move-result v6

    if-ne v5, v6, :cond_106

    move v5, v8

    :goto_d0
    and-int/2addr v2, v5

    .line 98
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getPerMill()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getPerMill()C

    move-result v6

    if-ne v5, v6, :cond_108

    move v5, v8

    :goto_dc
    and-int/2addr v2, v5

    .line 99
    invoke-virtual {v3}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v6

    if-ne v5, v6, :cond_10a

    move v5, v8

    :goto_e8
    and-int/2addr v2, v5

    move v5, v2

    .line 101
    goto/16 :goto_5

    :cond_ec
    move v5, v7

    .line 81
    goto/16 :goto_48

    .line 83
    :cond_ef
    if-nez v4, :cond_f5

    move v5, v8

    :goto_f2
    and-int/2addr v2, v5

    goto/16 :goto_49

    :cond_f5
    move v5, v7

    goto :goto_f2

    :cond_f7
    move v5, v7

    .line 86
    goto/16 :goto_61

    :cond_fa
    move v5, v7

    .line 87
    goto/16 :goto_6d

    :cond_fd
    move v5, v7

    .line 88
    goto/16 :goto_79

    :cond_100
    move v5, v7

    .line 92
    goto :goto_9f

    :cond_102
    move v5, v7

    .line 93
    goto :goto_ab

    :cond_104
    move v5, v7

    .line 96
    goto :goto_c4

    :cond_106
    move v5, v7

    .line 97
    goto :goto_d0

    :cond_108
    move v5, v7

    .line 98
    goto :goto_dc

    :cond_10a
    move v5, v7

    .line 99
    goto :goto_e8
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->closeDecimalFormatImpl(I)V

    .line 294
    return-void
.end method

.method getAddr()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    return v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 4

    .prologue
    .line 202
    iget v1, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, curr:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "\u00a4\u00a4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 205
    :cond_1c
    const/4 v1, 0x0

    .line 207
    :goto_1d
    return-object v1

    :cond_1e
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    goto :goto_1d
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .registers 3

    .prologue
    .line 211
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalSeparator()C
    .registers 3

    .prologue
    .line 216
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DECIMAL_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getDigit()C
    .registers 3

    .prologue
    .line 222
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getGroupingSeparator()C
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INFINITY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->loc:Ljava/util/Locale;

    return-object v0
.end method

.method public getMinusSign()C
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MINUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getMonetaryDecimalSeparator()C
    .registers 3

    .prologue
    .line 250
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 256
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_NAN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatternSeparator()C
    .registers 3

    .prologue
    .line 261
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PATTERN_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getPerMill()C
    .registers 3

    .prologue
    .line 273
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERMILL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getPercent()C
    .registers 3

    .prologue
    .line 267
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERCENT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getZeroDigit()C
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_ZERO_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->getSymbol(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 5
    .parameter "currency"

    .prologue
    .line 112
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .registers 4
    .parameter "symbol"

    .prologue
    .line 121
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 124
    return-void
.end method

.method public setDecimalSeparator(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 127
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DECIMAL_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 130
    return-void
.end method

.method public setDigit(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 133
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public setGroupingSeparator(C)V
    .registers 7
    .parameter "symbol"

    .prologue
    const-string v4, ""

    .line 139
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 145
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .registers 4
    .parameter "symbol"

    .prologue
    .line 148
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INFINITY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 151
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 4
    .parameter "symbol"

    .prologue
    .line 154
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 157
    return-void
.end method

.method public setMinusSign(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 160
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MINUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 166
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 172
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_NAN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 175
    return-void
.end method

.method public setPatternSeparator(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 178
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PATTERN_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 181
    return-void
.end method

.method public setPerMill(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 190
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERMILL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 193
    return-void
.end method

.method public setPercent(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 184
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERCENT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 187
    return-void
.end method

.method public setZeroDigit(C)V
    .registers 6
    .parameter "symbol"

    .prologue
    .line 196
    iget v0, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->addr:I

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_ZERO_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 199
    return-void
.end method
