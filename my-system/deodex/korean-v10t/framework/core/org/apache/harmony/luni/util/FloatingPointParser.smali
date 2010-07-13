.class public final Lorg/apache/harmony/luni/util/FloatingPointParser;
.super Ljava/lang/Object;
.source "FloatingPointParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static initialParse(Ljava/lang/String;I)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    .registers 8
    .parameter "s"
    .parameter "length"

    .prologue
    .line 97
    const/4 v3, 0x0

    .line 100
    .local v3, negative:Z
    const/4 v1, 0x0

    .line 102
    .local v1, e:I
    const/4 v4, 0x0

    .line 103
    .local v4, start:I
    if-nez p1, :cond_b

    .line 104
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    .restart local p1
    :cond_b
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 107
    .local v0, c:C
    const/16 v2, 0x44

    if-eq v0, v2, :cond_22

    const/16 v2, 0x64

    if-eq v0, v2, :cond_22

    const/16 v2, 0x46

    if-eq v0, v2, :cond_22

    const/16 v2, 0x66

    if-ne v0, v2, :cond_2c

    .line 108
    :cond_22
    add-int/lit8 p1, p1, -0x1

    .line 109
    if-nez p1, :cond_2c

    .line 110
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    .restart local p1
    :cond_2c
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .end local v0           #c:C
    move-result v0

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 114
    .local v2, end:I
    const/4 v0, -0x1

    if-le v2, v0, :cond_7d

    .line 115
    add-int/lit8 v0, v2, 0x1

    if-ne v0, p1, :cond_49

    .line 116
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    .restart local p1
    :cond_49
    add-int/lit8 v0, v2, 0x1

    .line 119
    .local v0, exponent_offset:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .end local v1           #e:I
    const/16 v5, 0x2b

    if-ne v1, v5, :cond_65

    .line 120
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_63

    .line 121
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    .restart local p1
    :cond_63
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_65
    :try_start_65
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #exponent_offset:I
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_6c} :catch_76

    move-result v0

    .local v0, e:I
    move v1, v0

    .line 138
    .end local v0           #e:I
    .restart local v1       #e:I
    :goto_6e
    if-nez p1, :cond_80

    .line 139
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    .end local v1           #e:I
    .restart local p1
    :catch_76
    move-exception p1

    .line 132
    .local p1, ex:Ljava/lang/NumberFormatException;
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1           #ex:Ljava/lang/NumberFormatException;
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    .restart local v1       #e:I
    .local p1, length:I
    :cond_7d
    move v0, p1

    .end local v2           #end:I
    .local v0, end:I
    move v2, v0

    .end local v0           #end:I
    .restart local v2       #end:I
    goto :goto_6e

    .line 141
    :cond_80
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    .local v0, c:C
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_97

    .line 143
    add-int/lit8 v3, v4, 0x1

    .line 144
    .end local v4           #start:I
    .local v3, start:I
    add-int/lit8 p1, p1, -0x1

    .line 145
    const/4 v0, 0x1

    .local v0, negative:Z
    move v4, v3

    .end local v3           #start:I
    .restart local v4       #start:I
    move v3, v0

    .line 150
    .end local v0           #negative:Z
    .local v3, negative:Z
    :cond_8f
    :goto_8f
    if-nez p1, :cond_a1

    .line 151
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1           #length:I
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    .local v0, c:C
    .restart local p1       #length:I
    :cond_97
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_8f

    .line 147
    add-int/lit8 v0, v4, 0x1

    .line 148
    .end local v4           #start:I
    .local v0, start:I
    add-int/lit8 p1, p1, -0x1

    move v4, v0

    .end local v0           #start:I
    .restart local v4       #start:I
    goto :goto_8f

    .line 153
    :cond_a1
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .end local p1           #length:I
    move-result p1

    .line 154
    .local p1, decimal:I
    const/4 v0, -0x1

    if-le p1, v0, :cond_d7

    .line 155
    sub-int v0, v2, p1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    sub-int v0, v1, v0

    .line 156
    .end local v1           #e:I
    .local v0, e:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v4           #start:I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p1           #decimal:I
    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    .restart local p0
    :goto_cb
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .local p1, length:I
    if-nez p1, :cond_dd

    .line 162
    new-instance p0, Ljava/lang/NumberFormatException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 158
    .end local v0           #e:I
    .restart local v1       #e:I
    .restart local v4       #start:I
    .restart local p0
    .local p1, decimal:I
    :cond_d7
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    .end local v1           #e:I
    .restart local v0       #e:I
    goto :goto_cb

    .line 164
    .end local v4           #start:I
    .local p1, length:I
    :cond_dd
    move v1, p1

    .line 165
    .end local v2           #end:I
    .local v1, end:I
    :goto_de
    const/4 v2, 0x1

    if-le v1, v2, :cond_ef

    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_ef

    .line 166
    add-int/lit8 v1, v1, -0x1

    goto :goto_de

    .line 168
    :cond_ef
    const/4 v2, 0x0

    .line 169
    .local v2, start:I
    :goto_f0
    const/4 v4, 0x1

    sub-int v4, v1, v4

    if-ge v2, v4, :cond_100

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_100

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    .line 172
    :cond_100
    if-ne v1, p1, :cond_104

    if-eqz v2, :cond_110

    .line 173
    :cond_104
    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 174
    .end local v0           #e:I
    .local p1, e:I
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 177
    :goto_10a
    new-instance v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    invoke-direct {v0, p0, p1, v3}, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;-><init>(Ljava/lang/String;IZ)V

    return-object v0

    .restart local v0       #e:I
    .local p1, length:I
    :cond_110
    move p1, v0

    .end local v0           #e:I
    .local p1, e:I
    goto :goto_10a
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method private static parseDblName(Ljava/lang/String;I)D
    .registers 10
    .parameter "namedDouble"
    .parameter "length"

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 186
    if-eq p1, v7, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    if-eq p1, v5, :cond_15

    const/16 v0, 0x9

    if-eq p1, v0, :cond_15

    .line 187
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 190
    :cond_15
    const/4 v6, 0x0

    .line 191
    .local v6, negative:Z
    const/4 v2, 0x0

    .line 192
    .local v2, cmpstart:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 200
    :goto_1e
    :pswitch_1e
    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 201
    if-eqz v6, :cond_30

    const-wide/high16 v0, -0x10

    .line 206
    :goto_2c
    return-wide v0

    .line 194
    :pswitch_2d
    const/4 v6, 0x1

    .line 196
    :pswitch_2e
    const/4 v2, 0x1

    goto :goto_1e

    .line 201
    :cond_30
    const-wide/high16 v0, 0x7ff0

    goto :goto_2c

    .line 205
    :cond_33
    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 206
    const-wide/high16 v0, 0x7ff8

    goto :goto_2c

    .line 209
    :cond_41
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 192
    nop

    :pswitch_data_48
    .packed-switch 0x2b
        :pswitch_2e
        :pswitch_1e
        :pswitch_2d
    .end packed-switch
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 8
    .parameter "s"

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 257
    .local v2, length:I
    if-nez v2, :cond_10

    .line 258
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_10
    const/4 v5, 0x1

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 263
    .local v1, last:C
    const/16 v5, 0x79

    if-eq v1, v5, :cond_1f

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_24

    .line 264
    :cond_1f
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDblName(Ljava/lang/String;I)D

    move-result-wide v5

    .line 278
    :goto_23
    return-wide v5

    .line 268
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_36

    .line 269
    invoke-static {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_23

    .line 272
    :cond_36
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->initialParse(Ljava/lang/String;I)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    move-result-object v0

    .line 274
    .local v0, info:Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    iget-object v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    iget v6, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v3

    .line 275
    .local v3, result:D
    iget-boolean v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    if-eqz v5, :cond_47

    .line 276
    neg-double v3, v3

    :cond_47
    move-wide v5, v3

    .line 278
    goto :goto_23
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 7
    .parameter "s"

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 295
    .local v2, length:I
    if-nez v2, :cond_10

    .line 296
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_10
    const/4 v4, 0x1

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 301
    .local v1, last:C
    const/16 v4, 0x79

    if-eq v1, v4, :cond_1f

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_24

    .line 302
    :cond_1f
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFltName(Ljava/lang/String;I)F

    move-result v4

    .line 316
    :goto_23
    return v4

    .line 306
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    .line 307
    invoke-static {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_23

    .line 310
    :cond_36
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->initialParse(Ljava/lang/String;I)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    move-result-object v0

    .line 312
    .local v0, info:Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    iget-object v4, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    iget v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    .line 313
    .local v3, result:F
    iget-boolean v4, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    if-eqz v4, :cond_47

    .line 314
    neg-float v3, v3

    :cond_47
    move v4, v3

    .line 316
    goto :goto_23
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseFltName(Ljava/lang/String;I)F
    .registers 10
    .parameter "namedFloat"
    .parameter "length"

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 218
    if-eq p1, v7, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    if-eq p1, v5, :cond_15

    const/16 v0, 0x9

    if-eq p1, v0, :cond_15

    .line 219
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 222
    :cond_15
    const/4 v6, 0x0

    .line 223
    .local v6, negative:Z
    const/4 v2, 0x0

    .line 224
    .local v2, cmpstart:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 232
    :goto_1e
    :pswitch_1e
    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 233
    if-eqz v6, :cond_30

    const/high16 v0, -0x80

    .line 237
    :goto_2c
    return v0

    .line 226
    :pswitch_2d
    const/4 v6, 0x1

    .line 228
    :pswitch_2e
    const/4 v2, 0x1

    goto :goto_1e

    .line 233
    :cond_30
    const/high16 v0, 0x7f80

    goto :goto_2c

    .line 236
    :cond_33
    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 237
    const/high16 v0, 0x7fc0

    goto :goto_2c

    .line 240
    :cond_41
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 224
    nop

    :pswitch_data_48
    .packed-switch 0x2b
        :pswitch_2e
        :pswitch_1e
        :pswitch_2d
    .end packed-switch
.end method
