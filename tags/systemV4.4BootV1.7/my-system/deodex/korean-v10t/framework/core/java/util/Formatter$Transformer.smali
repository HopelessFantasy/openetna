.class Ljava/util/Formatter$Transformer;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation


# static fields
.field private static lineSeparator:Ljava/lang/String;


# instance fields
.field private arg:Ljava/lang/Object;

.field private dateTimeUtil:Ljava/util/Formatter$DateTimeUtil;

.field private decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private formatter:Ljava/util/Formatter;

.field private locale:Ljava/util/Locale;

.field private numberFormat:Ljava/text/NumberFormat;


# direct methods
.method constructor <init>(Ljava/util/Formatter;Ljava/util/Locale;)V
    .registers 4
    .parameter "formatter"
    .parameter "locale"

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p1, p0, Ljava/util/Formatter$Transformer;->formatter:Ljava/util/Formatter;

    .line 1203
    if-nez p2, :cond_c

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_9
    iput-object v0, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    .line 1204
    return-void

    :cond_c
    move-object v0, p2

    .line 1203
    goto :goto_9
.end method

.method static synthetic access$000(Ljava/util/Formatter$Transformer;)Ljava/util/Locale;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1183
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method private getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .registers 3

    .prologue
    .line 1214
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    if-nez v0, :cond_d

    .line 1215
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/util/Formatter$Transformer;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    .line 1217
    :cond_d
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method private getNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_c

    .line 1208
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$Transformer;->numberFormat:Ljava/text/NumberFormat;

    .line 1210
    :cond_c
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 13
    .parameter "source"
    .parameter "startIndex"

    .prologue
    .line 1533
    move v6, p2

    .line 1534
    .local v6, start:I
    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v3

    .line 1536
    .local v3, paddingRight:Z
    const/16 v2, 0x20

    .line 1537
    .local v2, paddingChar:C
    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1538
    const/16 v8, 0x64

    iget-object v9, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v9}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v9

    if-ne v8, v9, :cond_54

    .line 1539
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    .line 1548
    :goto_26
    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v7

    .line 1549
    .local v7, width:I
    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 1551
    .local v5, precision:I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1552
    .local v1, length:I
    if-ltz v5, :cond_43

    .line 1553
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1554
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {p1, v1, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1556
    :cond_43
    if-lez v7, :cond_4d

    .line 1557
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1559
    :cond_4d
    if-lt v1, v7, :cond_59

    .line 1560
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1572
    :goto_53
    return-object v8

    .line 1541
    .end local v1           #length:I
    .end local v5           #precision:I
    .end local v7           #width:I
    :cond_54
    const/16 v2, 0x30

    goto :goto_26

    .line 1546
    :cond_57
    const/4 v6, 0x0

    goto :goto_26

    .line 1563
    .restart local v1       #length:I
    .restart local v5       #precision:I
    .restart local v7       #width:I
    :cond_59
    sub-int v8, v7, v1

    new-array v4, v8, [C

    .line 1564
    .local v4, paddings:[C
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1565
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    .line 1567
    .local v0, insertString:Ljava/lang/String;
    if-eqz v3, :cond_6f

    .line 1568
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :goto_6a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_53

    .line 1570
    :cond_6f
    invoke-virtual {p1, v6, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a
.end method

.method private transformFromBigInteger()Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v13, 0x20

    const/16 v12, 0x8

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1768
    const/4 v6, 0x0

    .line 1769
    .local v6, startIndex:I
    const/4 v2, 0x0

    .line 1770
    .local v2, isNegative:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1771
    .local v5, result:Ljava/lang/StringBuilder;
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 1772
    .local v0, bigInt:Ljava/math/BigInteger;
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    .line 1774
    .local v1, currentConversionType:C
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v10}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-nez v7, :cond_29

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v11}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1776
    :cond_29
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1777
    new-instance v7, Ljava/util/MissingFormatWidthException;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1783
    :cond_3d
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_5a

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v12}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 1785
    new-instance v7, Ljava/util/IllegalFormatFlagsException;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1789
    :cond_5a
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v11}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_76

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v10}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 1791
    new-instance v7, Ljava/util/IllegalFormatFlagsException;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1794
    :cond_76
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 1795
    new-instance v7, Ljava/util/IllegalFormatPrecisionException;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v7

    .line 1799
    :cond_8a
    const/16 v7, 0x64

    if-eq v7, v1, :cond_a2

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v13}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 1801
    new-instance v7, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v7

    .line 1805
    :cond_a2
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_bb

    const/16 v7, 0x64

    if-ne v7, v1, :cond_bb

    .line 1807
    new-instance v7, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v7

    .line 1811
    :cond_bb
    if-nez v0, :cond_c2

    .line 1812
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromNull()Ljava/lang/String;

    move-result-object v7

    .line 1863
    :goto_c1
    return-object v7

    .line 1815
    :cond_c2
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_12e

    move v2, v10

    .line 1817
    :goto_cb
    const/16 v7, 0x64

    if-ne v7, v1, :cond_130

    .line 1818
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v3

    .line 1819
    .local v3, numberFormat:Ljava/text/NumberFormat;
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v13}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    .line 1821
    .local v4, readableName:Z
    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1822
    invoke-virtual {v3, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    .end local v3           #numberFormat:Ljava/text/NumberFormat;
    .end local v4           #readableName:Z
    :goto_e3
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 1831
    if-eqz v2, :cond_144

    move v6, v10

    .line 1832
    :goto_ef
    const/16 v7, 0x6f

    if-ne v7, v1, :cond_146

    .line 1833
    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    add-int/lit8 v6, v6, 0x1

    .line 1842
    :cond_fa
    :goto_fa
    if-nez v2, :cond_119

    .line 1843
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_10c

    .line 1844
    const/16 v7, 0x2b

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1845
    add-int/lit8 v6, v6, 0x1

    .line 1847
    :cond_10c
    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v12}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_119

    .line 1848
    invoke-virtual {v5, v9, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1849
    add-int/lit8 v6, v6, 0x1

    .line 1854
    :cond_119
    if-eqz v2, :cond_156

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_156

    .line 1856
    invoke-direct {p0, v5}, Ljava/util/Formatter$Transformer;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1857
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c1

    :cond_12e
    move v2, v9

    .line 1815
    goto :goto_cb

    .line 1823
    :cond_130
    const/16 v7, 0x6f

    if-ne v7, v1, :cond_13c

    .line 1825
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 1828
    :cond_13c
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    :cond_144
    move v6, v9

    .line 1831
    goto :goto_ef

    .line 1835
    :cond_146
    const/16 v7, 0x78

    if-eq v7, v1, :cond_14e

    const/16 v7, 0x58

    if-ne v7, v1, :cond_fa

    .line 1837
    :cond_14e
    const-string v7, "0x"

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    add-int/lit8 v6, v6, 0x2

    goto :goto_fa

    .line 1860
    :cond_156
    if-eqz v2, :cond_162

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v11}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_162

    .line 1861
    add-int/lit8 v6, v6, 0x1

    .line 1863
    :cond_162
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_c1
.end method

.method private transformFromBoolean()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1306
    .local v2, startIndex:I
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v0

    .line 1308
    .local v0, flags:I
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1310
    new-instance v3, Ljava/util/MissingFormatWidthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1315
    :cond_3c
    if-eqz v0, :cond_52

    if-eq v4, v0, :cond_52

    .line 1317
    new-instance v3, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v3

    .line 1321
    :cond_52
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    if-nez v3, :cond_60

    .line 1322
    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    :goto_5b
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1323
    :cond_60
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_6c

    .line 1324
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 1326
    :cond_6c
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b
.end method

.method private transformFromCharacter()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 1415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1418
    .local v5, startIndex:I
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v2

    .line 1420
    .local v2, flags:I
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1422
    new-instance v6, Ljava/util/MissingFormatWidthException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1427
    :cond_3c
    if-eqz v2, :cond_52

    if-eq v7, v2, :cond_52

    .line 1429
    new-instance v6, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v6

    .line 1433
    :cond_52
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 1434
    new-instance v6, Ljava/util/IllegalFormatPrecisionException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v6

    .line 1438
    :cond_66
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    if-nez v6, :cond_74

    .line 1439
    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    :goto_6f
    invoke-direct {p0, v3, v5}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1441
    :cond_74
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Character;

    if-eqz v6, :cond_80

    .line 1442
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 1443
    :cond_80
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_9f

    .line 1444
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1445
    .local v0, b:B
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 1446
    new-instance v6, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v6, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v6

    .line 1448
    :cond_9a
    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 1449
    .end local v0           #b:B
    :cond_9f
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_be

    .line 1450
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 1451
    .local v4, s:S
    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    if-nez v6, :cond_b9

    .line 1452
    new-instance v6, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v6, v4}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v6

    .line 1454
    :cond_b9
    int-to-char v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 1455
    .end local v4           #s:S
    :cond_be
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_e4

    .line 1456
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1457
    .local v1, codePoint:I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    if-nez v6, :cond_d8

    .line 1458
    new-instance v6, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v6, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v6

    .line 1460
    :cond_d8
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 1463
    .end local v1           #codePoint:I
    :cond_e4
    new-instance v6, Ljava/util/IllegalFormatConversionException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v6
.end method

.method private transformFromDateTime()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1974
    const/4 v4, 0x0

    .line 1975
    .local v4, startIndex:I
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    .line 1977
    .local v1, currentConversionType:C
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1978
    new-instance v5, Ljava/util/IllegalFormatPrecisionException;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v5

    .line 1982
    :cond_1b
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1983
    new-instance v5, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v5

    .line 1987
    :cond_30
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_5b

    const/4 v5, -0x1

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_5b

    .line 1989
    new-instance v5, Ljava/util/MissingFormatWidthException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1993
    :cond_5b
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    if-nez v5, :cond_64

    .line 1994
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromNull()Ljava/lang/String;

    move-result-object v5

    .line 2020
    :goto_63
    return-object v5

    .line 1998
    :cond_64
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/Calendar;

    if-eqz v5, :cond_8c

    .line 1999
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 2014
    .local v0, calendar:Ljava/util/Calendar;
    :goto_6e
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->dateTimeUtil:Ljava/util/Formatter$DateTimeUtil;

    if-nez v5, :cond_7b

    .line 2015
    new-instance v5, Ljava/util/Formatter$DateTimeUtil;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    invoke-direct {v5, v6}, Ljava/util/Formatter$DateTimeUtil;-><init>(Ljava/util/Locale;)V

    iput-object v5, p0, Ljava/util/Formatter$Transformer;->dateTimeUtil:Ljava/util/Formatter$DateTimeUtil;

    .line 2017
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2019
    .local v3, result:Ljava/lang/StringBuilder;
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->dateTimeUtil:Ljava/util/Formatter$DateTimeUtil;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5, v6, v0, v3}, Ljava/util/Formatter$DateTimeUtil;->transform(Ljava/util/Formatter$FormatToken;Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 2020
    invoke-direct {p0, v3, v4}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_63

    .line 2001
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #result:Ljava/lang/StringBuilder;
    :cond_8c
    const/4 v2, 0x0

    .line 2002
    .local v2, date:Ljava/util/Date;
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_aa

    .line 2003
    new-instance v2, Ljava/util/Date;

    .end local v2           #date:Ljava/util/Date;
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 2010
    .restart local v2       #date:Ljava/util/Date;
    :goto_a0
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2011
    .restart local v0       #calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_6e

    .line 2004
    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_aa
    iget-object v5, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/Date;

    if-eqz v5, :cond_b5

    .line 2005
    iget-object v2, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    .end local v2           #date:Ljava/util/Date;
    check-cast v2, Ljava/util/Date;

    .restart local v2       #date:Ljava/util/Date;
    goto :goto_a0

    .line 2007
    :cond_b5
    new-instance v5, Ljava/util/IllegalFormatConversionException;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v5
.end method

.method private transformFromFloat()Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x4

    const/16 v11, 0x61

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 1870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1871
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1872
    .local v5, startIndex:I
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 1874
    .local v0, currentConversionType:C
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1876
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v6

    if-nez v6, :cond_32

    .line 1877
    new-instance v6, Ljava/util/MissingFormatWidthException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1882
    :cond_32
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v12}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v13}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1884
    new-instance v6, Ljava/util/IllegalFormatFlagsException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1887
    :cond_4e
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_6d

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1889
    new-instance v6, Ljava/util/IllegalFormatFlagsException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1892
    :cond_6d
    const/16 v6, 0x65

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-ne v6, v7, :cond_89

    .line 1893
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v10}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 1894
    new-instance v6, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v6

    .line 1899
    :cond_89
    const/16 v6, 0x67

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-ne v6, v7, :cond_a6

    .line 1900
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 1901
    new-instance v6, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v6

    .line 1906
    :cond_a6
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v11, v6, :cond_ca

    .line 1907
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v10}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-nez v6, :cond_be

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 1909
    :cond_be
    new-instance v6, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v6

    .line 1914
    :cond_ca
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    if-nez v6, :cond_d3

    .line 1915
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromNull()Ljava/lang/String;

    move-result-object v6

    .line 1967
    :goto_d2
    return-object v6

    .line 1918
    :cond_d3
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Float;

    if-nez v6, :cond_f1

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Double;

    if-nez v6, :cond_f1

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/math/BigDecimal;

    if-nez v6, :cond_f1

    .line 1919
    new-instance v6, Ljava/util/IllegalFormatConversionException;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v6

    .line 1923
    :cond_f1
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromSpecialNumber()Ljava/lang/String;

    move-result-object v4

    .line 1924
    .local v4, specialNumberResult:Ljava/lang/String;
    if-eqz v4, :cond_f9

    move-object v6, v4

    .line 1925
    goto :goto_d2

    .line 1928
    :cond_f9
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v11, v6, :cond_112

    .line 1929
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-eqz v7, :cond_14f

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v7

    :goto_10f
    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 1935
    :cond_112
    new-instance v2, Ljava/util/Formatter$FloatUtil;

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    check-cast v6, Ljava/text/DecimalFormat;

    iget-object v8, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-direct {v2, v3, v7, v6, v8}, Ljava/util/Formatter$FloatUtil;-><init>(Ljava/lang/StringBuilder;Ljava/util/Formatter$FormatToken;Ljava/text/DecimalFormat;Ljava/lang/Object;)V

    .line 1937
    .local v2, floatUtil:Ljava/util/Formatter$FloatUtil;
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2, v6, v3}, Ljava/util/Formatter$FloatUtil;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/StringBuilder;)V

    .line 1939
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 1941
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v6

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_151

    .line 1942
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 1943
    invoke-direct {p0, v3}, Ljava/util/Formatter$Transformer;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1944
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d2

    .line 1929
    .end local v2           #floatUtil:Ljava/util/Formatter$FloatUtil;
    :cond_14f
    const/4 v7, 0x6

    goto :goto_10f

    .line 1947
    .restart local v2       #floatUtil:Ljava/util/Formatter$FloatUtil;
    :cond_151
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v13}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 1948
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1949
    add-int/lit8 v5, v5, 0x1

    .line 1951
    :cond_15e
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v12}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 1952
    invoke-virtual {v2}, Ljava/util/Formatter$FloatUtil;->getAddSign()C

    move-result v6

    invoke-virtual {v3, v9, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1953
    add-int/lit8 v5, v5, 0x1

    .line 1957
    :cond_16f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1958
    .local v1, firstChar:C
    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_18a

    invoke-virtual {v2}, Ljava/util/Formatter$FloatUtil;->getAddSign()C

    move-result v6

    if-eq v1, v6, :cond_189

    invoke-virtual {v2}, Ljava/util/Formatter$FloatUtil;->getMinusSign()C

    move-result v6

    if-ne v1, v6, :cond_18a

    .line 1961
    :cond_189
    const/4 v5, 0x1

    .line 1964
    :cond_18a
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v11, v6, :cond_192

    .line 1965
    add-int/lit8 v5, v5, 0x2

    .line 1967
    :cond_192
    invoke-direct {p0, v3, v5}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d2
.end method

.method private transformFromHashCode()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1338
    .local v2, startIndex:I
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v0

    .line 1340
    .local v0, flags:I
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1342
    new-instance v3, Ljava/util/MissingFormatWidthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1347
    :cond_3c
    if-eqz v0, :cond_52

    if-eq v4, v0, :cond_52

    .line 1349
    new-instance v3, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v3

    .line 1353
    :cond_52
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    if-nez v3, :cond_60

    .line 1354
    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    :goto_5b
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1356
    :cond_60
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b
.end method

.method private transformFromInteger()Ljava/lang/String;
    .registers 20

    .prologue
    .line 1579
    const/4 v13, 0x0

    .line 1580
    .local v13, startIndex:I
    const/4 v10, 0x0

    .line 1581
    .local v10, isNegative:Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1582
    .local v12, result:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v9

    .line 1585
    .local v9, currentConversionType:C
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-nez v16, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_49

    .line 1587
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v16

    if-nez v16, :cond_49

    .line 1588
    new-instance v16, Ljava/util/MissingFormatWidthException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1593
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_75

    .line 1595
    new-instance v16, Ljava/util/IllegalFormatFlagsException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1597
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v16

    if-eqz v16, :cond_91

    .line 1598
    new-instance v16, Ljava/util/IllegalFormatPrecisionException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v16

    .line 1601
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_103

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1613
    .local v14, value:J
    :goto_aa
    const/16 v16, 0x64

    move/from16 v0, v16

    move v1, v9

    if-eq v0, v1, :cond_16d

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-nez v16, :cond_e9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-nez v16, :cond_e9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x20

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-nez v16, :cond_e9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x40

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_16d

    .line 1618
    :cond_e9
    new-instance v16, Ljava/util/FormatFlagsConversionMismatchException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v18

    invoke-direct/range {v16 .. v18}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v16

    .line 1603
    .end local v14           #value:J
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v16, v0

    if-eqz v16, :cond_11d

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v14

    .restart local v14       #value:J
    goto :goto_aa

    .line 1605
    .end local v14           #value:J
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Short;

    move/from16 v16, v0

    if-eqz v16, :cond_138

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->longValue()J

    move-result-wide v14

    .restart local v14       #value:J
    goto/16 :goto_aa

    .line 1607
    .end local v14           #value:J
    :cond_138
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Byte;

    move/from16 v16, v0

    if-eqz v16, :cond_153

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->longValue()J

    move-result-wide v14

    .restart local v14       #value:J
    goto/16 :goto_aa

    .line 1610
    .end local v14           #value:J
    :cond_153
    new-instance v16, Ljava/util/IllegalFormatConversionException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v16

    .line 1624
    .restart local v14       #value:J
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_1ad

    .line 1625
    const/16 v16, 0x64

    move/from16 v0, v16

    move v1, v9

    if-ne v0, v1, :cond_19c

    .line 1626
    new-instance v16, Ljava/util/FormatFlagsConversionMismatchException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v18

    invoke-direct/range {v16 .. v18}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v16

    .line 1629
    :cond_19c
    const/16 v16, 0x6f

    move/from16 v0, v16

    move v1, v9

    if-ne v0, v1, :cond_1d9

    .line 1630
    const-string v16, "0"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    add-int/lit8 v13, v13, 0x1

    .line 1638
    :cond_1ad
    :goto_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_1e4

    .line 1640
    new-instance v16, Ljava/util/IllegalFormatFlagsException;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1633
    :cond_1d9
    const-string v16, "0x"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    add-int/lit8 v13, v13, 0x2

    goto :goto_1ad

    .line 1643
    :cond_1e4
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_1eb

    .line 1644
    const/4 v10, 0x1

    .line 1647
    :cond_1eb
    const/16 v16, 0x64

    move/from16 v0, v16

    move v1, v9

    if-ne v0, v1, :cond_27e

    .line 1648
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter$Transformer;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v11

    .line 1649
    .local v11, numberFormat:Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x20

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_275

    .line 1650
    const/16 v16, 0x1

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1654
    :goto_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    .end local v11           #numberFormat:Ljava/text/NumberFormat;
    :goto_21f
    if-nez v10, :cond_259

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_23d

    .line 1678
    const/16 v16, 0x0

    const/16 v17, 0x2b

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1679
    add-int/lit8 v13, v13, 0x1

    .line 1681
    :cond_23d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_259

    .line 1682
    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1683
    add-int/lit8 v13, v13, 0x1

    .line 1688
    :cond_259
    if-eqz v10, :cond_2d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x40

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_2d8

    .line 1690
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/util/Formatter$Transformer;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1691
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1697
    :goto_274
    return-object v16

    .line 1652
    .restart local v11       #numberFormat:Ljava/text/NumberFormat;
    :cond_275
    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    goto :goto_20c

    .line 1656
    .end local v11           #numberFormat:Ljava/text/NumberFormat;
    :cond_27e
    const-wide/16 v3, 0xff

    .line 1657
    .local v3, BYTE_MASK:J
    const-wide/32 v7, 0xffff

    .line 1658
    .local v7, SHORT_MASK:J
    const-wide v5, 0xffffffffL

    .line 1659
    .local v5, INT_MASK:J
    if-eqz v10, :cond_299

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Byte;

    move/from16 v16, v0

    if-eqz v16, :cond_2ad

    .line 1661
    and-long/2addr v14, v3

    .line 1668
    :cond_299
    :goto_299
    const/16 v16, 0x6f

    move/from16 v0, v16

    move v1, v9

    if-ne v0, v1, :cond_2cd

    .line 1669
    invoke-static {v14, v15}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    :goto_2aa
    const/4 v10, 0x0

    goto/16 :goto_21f

    .line 1662
    :cond_2ad
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Short;

    move/from16 v16, v0

    if-eqz v16, :cond_2bd

    .line 1663
    and-long/2addr v14, v7

    goto :goto_299

    .line 1664
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v16, v0

    if-eqz v16, :cond_299

    .line 1665
    and-long/2addr v14, v5

    goto :goto_299

    .line 1671
    :cond_2cd
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2aa

    .line 1694
    .end local v3           #BYTE_MASK:J
    .end local v5           #INT_MASK:J
    .end local v7           #SHORT_MASK:J
    :cond_2d8
    if-eqz v10, :cond_2ea

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v16

    if-eqz v16, :cond_2ea

    .line 1695
    add-int/lit8 v13, v13, 0x1

    .line 1697
    :cond_2ea
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_274
.end method

.method private transformFromNull()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1759
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setFlags(I)V

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1478
    .local v2, startIndex:I
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v0

    .line 1480
    .local v0, flags:I
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1482
    new-instance v3, Ljava/util/MissingFormatWidthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1486
    :cond_3e
    if-eqz v0, :cond_54

    if-eq v4, v0, :cond_54

    .line 1488
    new-instance v3, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v3

    .line 1491
    :cond_54
    iget-object v3, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1492
    new-instance v3, Ljava/util/IllegalFormatPrecisionException;

    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v3

    .line 1495
    :cond_68
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private transformFromSpecialNumber()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1721
    const/4 v3, 0x0

    .line 1723
    .local v3, source:Ljava/lang/String;
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_d

    iget-object v4, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v4, v4, Ljava/math/BigDecimal;

    if-eqz v4, :cond_f

    .line 1724
    :cond_d
    const/4 v4, 0x0

    .line 1755
    :goto_e
    return-object v4

    .line 1727
    :cond_f
    iget-object v2, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    .line 1728
    .local v2, number:Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1729
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1730
    const-string v3, "NaN"

    .line 1749
    :cond_1f
    :goto_1f
    if-eqz v3, :cond_3e

    .line 1750
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 1751
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->setFlags(I)V

    .line 1753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    :cond_3e
    move-object v4, v3

    .line 1755
    goto :goto_e

    .line 1731
    :cond_40
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1732
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_68

    .line 1733
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1734
    const-string v3, "+Infinity"

    goto :goto_1f

    .line 1735
    :cond_58
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1736
    const-string v3, " Infinity"

    goto :goto_1f

    .line 1738
    :cond_65
    const-string v3, "Infinity"

    goto :goto_1f

    .line 1741
    :cond_68
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1742
    const-string v3, "(Infinity)"

    goto :goto_1f

    .line 1744
    :cond_75
    const-string v3, "-Infinity"

    goto :goto_1f
.end method

.method private transformFromString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1366
    .local v2, result:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1367
    .local v3, startIndex:I
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v1

    .line 1369
    .local v1, flags:I
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1371
    new-instance v4, Ljava/util/MissingFormatWidthException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1375
    :cond_3c
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/Formattable;

    if-eqz v4, :cond_8f

    .line 1376
    const/4 v0, 0x0

    .line 1378
    .local v0, flag:I
    and-int/lit8 v4, v1, -0x2

    and-int/lit8 v4, v4, -0x3

    if-eqz v4, :cond_55

    .line 1379
    new-instance v4, Ljava/util/IllegalFormatFlagsException;

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1382
    :cond_55
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1383
    or-int/lit8 v0, v0, 0x1

    .line 1385
    :cond_5f
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1386
    or-int/lit8 v0, v0, 0x4

    .line 1388
    :cond_6a
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1389
    or-int/lit8 v0, v0, 0x2

    .line 1391
    :cond_78
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Formattable;

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatter:Ljava/util/Formatter;

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v7

    invoke-interface {v4, v5, v0, v6, v7}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 1397
    const/4 v4, 0x0

    .line 1408
    .end local v0           #flag:I
    :goto_8e
    return-object v4

    .line 1401
    :cond_8f
    if-eqz v1, :cond_a5

    if-eq v5, v1, :cond_a5

    .line 1403
    new-instance v4, Ljava/util/FormatFlagsConversionMismatchException;

    iget-object v5, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v4

    .line 1407
    :cond_a5
    iget-object v4, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8e
.end method

.method private transfromFromLineSeparator()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1503
    iget-object v1, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1504
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    iget-object v2, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1

    .line 1508
    :cond_14
    iget-object v1, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->isWidthSet()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1509
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    iget-object v2, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1

    .line 1512
    :cond_28
    iget-object v1, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getFlags()I

    move-result v0

    .line 1513
    .local v0, flags:I
    if-eqz v0, :cond_3c

    .line 1514
    new-instance v1, Ljava/util/IllegalFormatFlagsException;

    iget-object v2, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getStrFlags()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1517
    :cond_3c
    sget-object v1, Ljava/util/Formatter$Transformer;->lineSeparator:Ljava/lang/String;

    if-nez v1, :cond_4d

    .line 1518
    new-instance v1, Ljava/util/Formatter$Transformer$1;

    invoke-direct {v1, p0}, Ljava/util/Formatter$Transformer$1;-><init>(Ljava/util/Formatter$Transformer;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    sput-object p0, Ljava/util/Formatter$Transformer;->lineSeparator:Ljava/lang/String;

    .line 1526
    :cond_4d
    sget-object v1, Ljava/util/Formatter$Transformer;->lineSeparator:Ljava/lang/String;

    return-object v1
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter "result"

    .prologue
    const/16 v4, 0x29

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1707
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1708
    const/16 v0, 0x28

    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1709
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1710
    iget-object v0, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 1711
    invoke-direct {p0, p1, v3}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 1712
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1717
    :goto_28
    return-object p1

    .line 1714
    :cond_29
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1715
    invoke-direct {p0, p1, v2}, Ljava/util/Formatter$Transformer;->padding(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    goto :goto_28
.end method


# virtual methods
.method transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .parameter "token"
    .parameter "argument"

    .prologue
    .line 1227
    iput-object p1, p0, Ljava/util/Formatter$Transformer;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 1228
    iput-object p2, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    .line 1231
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    sparse-switch v1, :sswitch_data_68

    .line 1287
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1234
    :sswitch_19
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromBoolean()Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, result:Ljava/lang/String;
    :goto_1d
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1293
    if-eqz v0, :cond_2f

    .line 1294
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    :cond_2f
    return-object v0

    .line 1239
    .end local v0           #result:Ljava/lang/String;
    :sswitch_30
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromHashCode()Ljava/lang/String;

    move-result-object v0

    .line 1240
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1244
    .end local v0           #result:Ljava/lang/String;
    :sswitch_35
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1249
    .end local v0           #result:Ljava/lang/String;
    :sswitch_3a
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromCharacter()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1256
    .end local v0           #result:Ljava/lang/String;
    :sswitch_3f
    iget-object v1, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    if-eqz v1, :cond_49

    iget-object v1, p0, Ljava/util/Formatter$Transformer;->arg:Ljava/lang/Object;

    instance-of v1, v1, Ljava/math/BigInteger;

    if-eqz v1, :cond_4e

    .line 1257
    :cond_49
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromBigInteger()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1259
    .end local v0           #result:Ljava/lang/String;
    :cond_4e
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromInteger()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1270
    .end local v0           #result:Ljava/lang/String;
    :sswitch_53
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromFloat()Ljava/lang/String;

    move-result-object v0

    .line 1271
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1274
    .end local v0           #result:Ljava/lang/String;
    :sswitch_58
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromPercent()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1278
    .end local v0           #result:Ljava/lang/String;
    :sswitch_5d
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transfromFromLineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1283
    .end local v0           #result:Ljava/lang/String;
    :sswitch_62
    invoke-direct {p0}, Ljava/util/Formatter$Transformer;->transformFromDateTime()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 1231
    nop

    :sswitch_data_68
    .sparse-switch
        0x25 -> :sswitch_58
        0x41 -> :sswitch_53
        0x42 -> :sswitch_19
        0x43 -> :sswitch_3a
        0x45 -> :sswitch_53
        0x47 -> :sswitch_53
        0x48 -> :sswitch_30
        0x53 -> :sswitch_35
        0x54 -> :sswitch_62
        0x58 -> :sswitch_3f
        0x61 -> :sswitch_53
        0x62 -> :sswitch_19
        0x63 -> :sswitch_3a
        0x64 -> :sswitch_3f
        0x65 -> :sswitch_53
        0x66 -> :sswitch_53
        0x67 -> :sswitch_53
        0x68 -> :sswitch_30
        0x6e -> :sswitch_5d
        0x6f -> :sswitch_3f
        0x73 -> :sswitch_35
        0x74 -> :sswitch_62
        0x78 -> :sswitch_3f
    .end sparse-switch
.end method
