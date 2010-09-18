.class public Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;
.super Ljava/text/NumberFormat;
.source "RuleBasedNumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;
    }
.end annotation


# instance fields
.field private addr:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    return-void
.end method

.method private static native closeRBNFImpl(I)V
.end method

.method private static native formatRBNFImpl(IDLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
.end method

.method private static native formatRBNFImpl(IJLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
.end method

.method private static getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 220
    if-nez p0, :cond_5

    move-object v0, v1

    .line 256
    :goto_4
    return-object v0

    .line 223
    :cond_5
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    const-string v0, "sign"

    goto :goto_4

    .line 226
    :cond_10
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 227
    const-string v0, "integer"

    goto :goto_4

    .line 229
    :cond_1b
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 230
    const-string v0, "fraction"

    goto :goto_4

    .line 232
    :cond_26
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 233
    const-string v0, "exponent"

    goto :goto_4

    .line 235
    :cond_31
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 236
    const-string v0, "exponent_sign"

    goto :goto_4

    .line 238
    :cond_3c
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 239
    const-string v0, "exponent_symbol"

    goto :goto_4

    .line 241
    :cond_47
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 242
    const-string v0, "currency"

    goto :goto_4

    .line 244
    :cond_52
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 245
    const-string v0, "grouping_separator"

    goto :goto_4

    .line 247
    :cond_5d
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 248
    const-string v0, "decimal_separator"

    goto :goto_4

    .line 250
    :cond_68
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 251
    const-string v0, "percent"

    goto :goto_4

    .line 253
    :cond_73
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 254
    const-string v0, "permille"

    goto :goto_4

    :cond_7e
    move-object v0, v1

    .line 256
    goto :goto_4
.end method

.method private static native openRBNFImpl(ILjava/lang/String;)I
.end method

.method private static native openRBNFImpl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native parseRBNFImpl(ILjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    if-eqz v0, :cond_c

    .line 134
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->closeRBNFImpl(I)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    .line 137
    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->close()V

    .line 65
    return-void
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 168
    if-nez p3, :cond_8

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_8
    const/4 v4, 0x0

    .line 174
    .local v4, fieldType:Ljava/lang/String;
    if-eqz p4, :cond_13

    .line 175
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;

    move-result-object v4

    .line 178
    :cond_13
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->formatRBNFImpl(IDLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 183
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 144
    if-nez p3, :cond_8

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 148
    :cond_8
    const/4 v4, 0x0

    .line 150
    .local v4, fieldType:Ljava/lang/String;
    if-eqz p4, :cond_13

    .line 151
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->getFieldType(Ljava/text/Format$Field;)Ljava/lang/String;

    move-result-object v4

    .line 154
    :cond_13
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->formatRBNFImpl(IJLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 159
    return-object p3
.end method

.method public open(Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->getType()I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->openRBNFImpl(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    .line 78
    return-void
.end method

.method public open(Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;Ljava/util/Locale;)V
    .registers 5
    .parameter "type"
    .parameter "locale"

    .prologue
    .line 88
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, loc:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 92
    :cond_c
    invoke-virtual {p1}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->getType()I

    move-result v1

    invoke-static {v1, v0}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->openRBNFImpl(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    .line 93
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 3
    .parameter "rule"

    .prologue
    .line 105
    if-nez p1, :cond_8

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->openRBNFImpl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    .line 109
    return-void
.end method

.method public open(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .parameter "rule"
    .parameter "locale"

    .prologue
    .line 120
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, loc:Ljava/lang/String;
    if-eqz v0, :cond_8

    if-nez p1, :cond_e

    .line 122
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 124
    :cond_e
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->openRBNFImpl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    .line 125
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 5
    .parameter "string"
    .parameter "position"

    .prologue
    .line 191
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 194
    :cond_a
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->parseRBNFImpl(ILjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public parseLenient(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 5
    .parameter "string"
    .parameter "position"

    .prologue
    .line 210
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 211
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 213
    :cond_a
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->addr:I

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;->parseRBNFImpl(ILjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
