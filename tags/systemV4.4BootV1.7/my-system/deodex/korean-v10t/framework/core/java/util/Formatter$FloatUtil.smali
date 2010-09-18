.class Ljava/util/Formatter$FloatUtil;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatUtil"
.end annotation


# instance fields
.field private argument:Ljava/lang/Object;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private minusSign:C

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Ljava/util/Formatter$FormatToken;Ljava/text/DecimalFormat;Ljava/lang/Object;)V
    .registers 6
    .parameter "result"
    .parameter "formatToken"
    .parameter "decimalFormat"
    .parameter "argument"

    .prologue
    .line 2036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2037
    iput-object p1, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    .line 2038
    iput-object p2, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 2039
    iput-object p3, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    .line 2040
    iput-object p4, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    .line 2041
    invoke-virtual {p3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FloatUtil;->minusSign:C

    .line 2043
    return-void
.end method


# virtual methods
.method getAddSign()C
    .registers 2

    .prologue
    .line 2080
    const/16 v0, 0x2b

    return v0
.end method

.method getMinusSign()C
    .registers 2

    .prologue
    .line 2076
    iget-char v0, p0, Ljava/util/Formatter$FloatUtil;->minusSign:C

    return v0
.end method

.method transform(Ljava/util/Formatter$FormatToken;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "aFormatToken"
    .parameter "aResult"

    .prologue
    .line 2046
    iput-object p2, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    .line 2047
    iput-object p1, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 2048
    iget-object v0, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v0}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    .line 2069
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-object v1, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :sswitch_1d
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_e()V

    .line 2073
    :goto_20
    return-void

    .line 2055
    :sswitch_21
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_f()V

    goto :goto_20

    .line 2060
    :sswitch_25
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_g()V

    goto :goto_20

    .line 2065
    :sswitch_29
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_a()V

    goto :goto_20

    .line 2048
    nop

    :sswitch_data_2e
    .sparse-switch
        0x41 -> :sswitch_29
        0x45 -> :sswitch_1d
        0x47 -> :sswitch_25
        0x61 -> :sswitch_29
        0x65 -> :sswitch_1d
        0x66 -> :sswitch_21
        0x67 -> :sswitch_25
    .end sparse-switch
.end method

.method transform_a()V
    .registers 12

    .prologue
    .line 2202
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    .line 2204
    .local v2, currentConversionType:C
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Float;

    if-eqz v8, :cond_26

    .line 2205
    iget-object v1, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 2206
    .local v1, F:Ljava/lang/Float;
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    .end local v1           #F:Ljava/lang/Float;
    :goto_1d
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v8

    if-nez v8, :cond_4a

    .line 2238
    :cond_25
    :goto_25
    return-void

    .line 2208
    :cond_26
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Double;

    if-eqz v8, :cond_3e

    .line 2209
    iget-object v0, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 2210
    .local v0, D:Ljava/lang/Double;
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 2213
    .end local v0           #D:Ljava/lang/Double;
    :cond_3e
    new-instance v8, Ljava/util/IllegalFormatConversionException;

    iget-object v9, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v8

    .line 2221
    :cond_4a
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v6

    .line 2222
    .local v6, precision:I
    if-nez v6, :cond_54

    const/4 v8, 0x1

    move v6, v8

    .line 2223
    :cond_54
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 2224
    .local v4, indexOfFirstFracitoanlDigit:I
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    const-string v9, "p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2225
    .local v5, indexOfP:I
    sub-int v3, v5, v4

    .line 2227
    .local v3, fractionalLength:I
    if-eq v3, v6, :cond_25

    .line 2231
    if-ge v3, v6, :cond_7b

    .line 2232
    sub-int v8, v6, v3

    new-array v7, v8, [C

    .line 2233
    .local v7, zeros:[C
    const/16 v8, 0x30

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 2234
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v7}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 2237
    .end local v7           #zeros:[C
    :cond_7b
    iget-object v8, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    add-int v9, v4, v6

    invoke-virtual {v8, v9, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_25
.end method

.method transform_e()V
    .registers 9

    .prologue
    const/16 v7, 0x45

    const/16 v6, 0x30

    .line 2084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2085
    .local v3, pattern:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2086
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    if-lez v5, :cond_27

    .line 2087
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2088
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    new-array v4, v5, [C

    .line 2089
    .local v4, zeros:[C
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 2090
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2092
    .end local v4           #zeros:[C
    :cond_27
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2093
    const-string v5, "+00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 2095
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2096
    .local v1, formattedString:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    const/16 v6, 0x65

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_73

    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    if-nez v5, :cond_73

    .line 2102
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    const-string v6, "e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2103
    .local v2, indexOfE:I
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    .line 2105
    .local v0, dot:C
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2107
    .end local v0           #dot:C
    .end local v2           #indexOfE:I
    :cond_73
    return-void
.end method

.method transform_f()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2170
    .local v2, pattern:Ljava/lang/StringBuilder;
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2171
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2172
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v1

    .line 2173
    .local v1, groupingSize:I
    if-le v1, v7, :cond_29

    .line 2174
    sub-int v5, v1, v7

    new-array v3, v5, [C

    .line 2175
    .local v3, sharps:[C
    const/16 v5, 0x23

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2180
    .end local v1           #groupingSize:I
    .end local v3           #sharps:[C
    :cond_29
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2182
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    if-lez v5, :cond_4a

    .line 2183
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2184
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    new-array v4, v5, [C

    .line 2185
    .local v4, zeros:[C
    const/16 v5, 0x30

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2188
    .end local v4           #zeros:[C
    :cond_4a
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 2189
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Formatter$FormatToken;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_80

    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    if-nez v5, :cond_80

    .line 2194
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    .line 2196
    .local v0, dot:C
    iget-object v5, p0, Ljava/util/Formatter$FloatUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2199
    .end local v0           #dot:C
    :cond_80
    return-void
.end method

.method transform_g()V
    .registers 13

    .prologue
    .line 2110
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    .line 2111
    .local v4, precision:I
    if-nez v4, :cond_a

    const/4 v6, 0x1

    move v4, v6

    .line 2112
    :cond_a
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v4}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2114
    const-wide/16 v6, 0x0

    iget-object v0, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_28

    .line 2115
    add-int/lit8 v4, v4, -0x1

    .line 2116
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v4}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2117
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_f()V

    .line 2166
    :goto_27
    return-void

    .line 2121
    :cond_28
    const/4 v5, 0x1

    .line 2122
    .local v5, requireScientificRepresentation:Z
    iget-object v0, p0, Ljava/util/Formatter$FloatUtil;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2123
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2124
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 2126
    .local v2, l:J
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-ltz v6, :cond_91

    .line 2127
    long-to-double v6, v2

    const-wide/high16 v8, 0x4024

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7e

    .line 2128
    const/4 v5, 0x0

    .line 2129
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    .line 2130
    if-gez v4, :cond_59

    const/4 v6, 0x0

    move v4, v6

    .line 2131
    :cond_59
    const-wide/high16 v6, 0x4024

    add-int/lit8 v8, v4, 0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 2132
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v7

    if-gt v6, v7, :cond_79

    .line 2134
    add-int/lit8 v4, v4, 0x1

    .line 2136
    :cond_79
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v4}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2157
    :cond_7e
    :goto_7e
    if-eqz v5, :cond_f3

    .line 2158
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    .line 2159
    add-int/lit8 v4, v4, -0x1

    .line 2160
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v4}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2161
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_e()V

    goto :goto_27

    .line 2140
    :cond_91
    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 2141
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-ltz v6, :cond_7e

    .line 2142
    const/4 v5, 0x0

    .line 2143
    const/4 v6, 0x4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 2144
    const-wide/high16 v6, 0x4024

    add-int/lit8 v8, v4, 0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 2145
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v7

    if-gt v6, v7, :cond_d0

    .line 2147
    add-int/lit8 v4, v4, 0x1

    .line 2149
    :cond_d0
    const-wide/high16 v6, 0x4024

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 2150
    long-to-double v6, v2

    const-wide/high16 v8, 0x4024

    const/4 v10, 0x4

    sub-int v10, v4, v10

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_ed

    .line 2151
    const/4 v5, 0x1

    goto :goto_7e

    .line 2153
    :cond_ed
    iget-object v6, p0, Ljava/util/Formatter$FloatUtil;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6, v4}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    goto :goto_7e

    .line 2163
    :cond_f3
    invoke-virtual {p0}, Ljava/util/Formatter$FloatUtil;->transform_f()V

    goto/16 :goto_27
.end method
