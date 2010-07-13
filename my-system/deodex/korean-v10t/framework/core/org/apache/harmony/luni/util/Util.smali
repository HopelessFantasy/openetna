.class public final Lorg/apache/harmony/luni/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static MONTHS:[Ljava/lang/String;

.field private static WEEKDAYS:[Ljava/lang/String;

.field private static final defaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "Sunday"

    aput-object v3, v2, v6

    const-string v3, "Monday"

    aput-object v3, v2, v7

    const-string v3, "Tuesday"

    aput-object v3, v2, v8

    const-string v3, "Wednesday"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Thursday"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Friday"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Saturday"

    aput-object v4, v2, v3

    sput-object v2, Lorg/apache/harmony/luni/util/Util;->WEEKDAYS:[Ljava/lang/String;

    .line 31
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "January"

    aput-object v3, v2, v5

    const-string v3, "February"

    aput-object v3, v2, v6

    const-string v3, "March"

    aput-object v3, v2, v7

    const-string v3, "April"

    aput-object v3, v2, v8

    const-string v3, "May"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "June"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "July"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "August"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "September"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "October"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "November"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "December"

    aput-object v4, v2, v3

    sput-object v2, Lorg/apache/harmony/luni/util/Util;->MONTHS:[Ljava/lang/String;

    .line 39
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, encoding:Ljava/lang/String;
    if-eqz v1, :cond_7c

    .line 43
    :try_start_77
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_77 .. :try_end_7c} :catch_7f

    .line 48
    :cond_7c
    :goto_7c
    sput-object v1, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    .line 49
    return-void

    .line 44
    :catch_7f
    move-exception v2

    move-object v0, v2

    .line 45
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_7c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromUTF8([BII)Ljava/lang/String;
    .registers 4
    .parameter "buf"
    .parameter "offset"
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 195
    new-array v0, p2, [C

    invoke-static {p0, v0, p1, p2}, Lorg/apache/harmony/luni/util/Util;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertUTF8WithBuf([B[CII)Ljava/lang/String;
    .registers 16
    .parameter "buf"
    .parameter "out"
    .parameter "offset"
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x80

    const-string v11, "K0062"

    .line 200
    const/4 v3, 0x0

    .local v3, count:I
    const/4 v5, 0x0

    .local v5, s:I
    move v6, v5

    .end local v5           #s:I
    .local v6, s:I
    move v4, v3

    .line 201
    .end local v3           #count:I
    .local v4, count:I
    :goto_9
    if-ge v4, p3, :cond_b5

    .line 202
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    add-int v7, p2, v4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    aput-char v7, p1, v6

    if-ge v7, v9, :cond_1b

    .line 203
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    move v4, v3

    .end local v3           #count:I
    .restart local v4       #count:I
    goto :goto_9

    .line 204
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_1b
    aget-char v0, p1, v6

    .local v0, a:I
    and-int/lit16 v7, v0, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_57

    .line 205
    if-lt v3, p3, :cond_31

    .line 206
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "K0062"

    invoke-static {v11, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 209
    :cond_31
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    add-int v7, p2, v3

    aget-byte v1, p0, v7

    .line 211
    .local v1, b:I
    and-int/lit16 v7, v1, 0xc0

    if-eq v7, v9, :cond_49

    .line 212
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "K0062"

    sub-int v8, v4, v10

    invoke-static {v11, v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    :cond_49
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    and-int/lit8 v7, v0, 0x1f

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v8, v1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .line 215
    .end local v5           #s:I
    .restart local v6       #s:I
    goto :goto_9

    .end local v1           #b:I
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_57
    and-int/lit16 v7, v0, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_a7

    .line 216
    add-int/lit8 v7, v3, 0x1

    if-lt v7, p3, :cond_6f

    .line 217
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "K0063"

    add-int/lit8 v9, v3, 0x1

    invoke-static {v8, v9}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 220
    :cond_6f
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    add-int v7, p2, v3

    aget-byte v1, p0, v7

    .line 221
    .restart local v1       #b:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    add-int v7, p2, v4

    aget-byte v2, p0, v7

    .line 223
    .local v2, c:I
    and-int/lit16 v7, v1, 0xc0

    if-ne v7, v9, :cond_83

    and-int/lit16 v7, v2, 0xc0

    if-eq v7, v9, :cond_92

    .line 224
    :cond_83
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "K0064"

    const/4 v9, 0x2

    sub-int v9, v3, v9

    invoke-static {v8, v9}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 226
    :cond_92
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    and-int/lit8 v7, v0, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v8, v1, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v8, v2, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    move v4, v3

    .line 227
    .end local v3           #count:I
    .restart local v4       #count:I
    goto/16 :goto_9

    .line 228
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_a7
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "K0065"

    sub-int v9, v3, v10

    invoke-static {v8, v9}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    .end local v0           #a:I
    .end local v3           #count:I
    .restart local v4       #count:I
    :cond_b5
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method

.method public static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .parameter "s"
    .parameter "convertPlus"

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x25

    const/4 v8, -0x1

    .line 245
    if-nez p1, :cond_f

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_f

    move-object v6, p0

    .line 274
    :goto_e
    return-object v6

    .line 247
    :cond_f
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 248
    .local v5, result:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_9e

    .line 250
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 251
    .local v0, c:C
    if-eqz p1, :cond_36

    const/16 v6, 0x2b

    if-ne v0, v6, :cond_36

    .line 252
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :goto_33
    add-int/lit8 v3, v3, 0x1

    .line 273
    goto :goto_1e

    .line 253
    :cond_36
    if-ne v0, v9, :cond_9a

    .line 254
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 256
    :cond_3b
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_4f

    .line 257
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K01fe"

    invoke-static {v7, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    :cond_4f
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 260
    .local v1, d1:I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 261
    .local v2, d2:I
    if-eq v1, v8, :cond_67

    if-ne v2, v8, :cond_7d

    .line 262
    :cond_67
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K01ff"

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    :cond_7d
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    add-int/lit8 v3, v3, 0x3

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_92

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_3b

    .line 268
    :cond_92
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 271
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_9a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 274
    .end local v0           #c:C
    :cond_9e
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 2
    .parameter "name"

    .prologue
    .line 52
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 54
    :try_start_4
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 58
    :goto_a
    return-object v0

    .line 55
    :catch_b
    move-exception v0

    .line 58
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_a
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "string"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 186
    .local v5, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6
    array-length v0, p1

    if-ge v6, v0, :cond_19

    .line 187
    const/4 v1, 0x1

    aget-object v3, p1, v6

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v6

    .line 190
    :goto_15
    return v0

    .line 186
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 190
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public static parseDate(Ljava/lang/String;)J
    .registers 16
    .parameter "string"

    .prologue
    .line 90
    const/4 v6, 0x0

    .local v6, offset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, length:I
    const/4 v8, 0x0

    .line 91
    .local v8, state:I
    const/4 v9, -0x1

    .local v9, year:I
    const/4 v5, -0x1

    .local v5, month:I
    const/4 v1, -0x1

    .line 92
    .local v1, date:I
    const/4 v2, -0x1

    .local v2, hour:I
    const/4 v3, -0x1

    .local v3, minute:I
    const/4 v7, -0x1

    .line 93
    .local v7, second:I
    const/4 v0, 0x0

    .local v0, PAD:I
    const/4 v0, 0x1

    .local v0, LETTERS:I
    const/4 v0, 0x2

    .line 94
    .local v0, NUMBERS:I
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #NUMBERS:I
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buffer:Ljava/lang/StringBuffer;
    move v10, v7

    .end local v7           #second:I
    .local v10, second:I
    move v12, v9

    .end local v9           #year:I
    .local v12, year:I
    move v11, v8

    .end local v8           #state:I
    .local v11, state:I
    move v14, v5

    .end local v5           #month:I
    .local v14, month:I
    move v5, v3

    .end local v3           #minute:I
    .local v5, minute:I
    move v3, v2

    .end local v2           #hour:I
    .local v3, hour:I
    move v2, v6

    .end local v6           #offset:I
    .local v2, offset:I
    move v6, v14

    .line 96
    .end local v14           #month:I
    .local v6, month:I
    :goto_1c
    if-gt v2, v4, :cond_16f

    .line 97
    if-ge v2, v4, :cond_63

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 98
    .local v7, next:C
    :goto_24
    add-int/lit8 v9, v2, 0x1

    .line 101
    .end local v2           #offset:I
    .local v9, offset:I
    const/16 v2, 0x61

    if-lt v7, v2, :cond_2e

    const/16 v2, 0x7a

    if-le v7, v2, :cond_36

    :cond_2e
    const/16 v2, 0x41

    if-lt v7, v2, :cond_66

    const/16 v2, 0x5a

    if-gt v7, v2, :cond_66

    .line 102
    :cond_36
    const/4 v2, 0x1

    .local v2, nextState:I
    move v8, v2

    .line 110
    .end local v2           #nextState:I
    .local v8, nextState:I
    :goto_38
    const/4 v2, 0x2

    if-ne v11, v2, :cond_115

    const/4 v2, 0x2

    if-eq v8, v2, :cond_115

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, digit:I
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 113
    .end local v11           #state:I
    const/16 v11, 0x46

    if-lt v2, v11, :cond_9f

    .line 114
    const/4 v11, -0x1

    if-ne v12, v11, :cond_5d

    const/16 v11, 0x20

    if-eq v7, v11, :cond_83

    const/16 v11, 0x2c

    if-eq v7, v11, :cond_83

    const/16 v11, 0xd

    if-eq v7, v11, :cond_83

    .line 116
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 97
    .end local v7           #next:C
    .end local v8           #nextState:I
    .end local v9           #offset:I
    .local v2, offset:I
    .restart local v11       #state:I
    .restart local p0
    :cond_63
    const/16 v7, 0xd

    goto :goto_24

    .line 103
    .end local v2           #offset:I
    .restart local v7       #next:C
    .restart local v9       #offset:I
    :cond_66
    const/16 v2, 0x30

    if-lt v7, v2, :cond_71

    const/16 v2, 0x39

    if-gt v7, v2, :cond_71

    .line 104
    const/4 v2, 0x2

    .local v2, nextState:I
    move v8, v2

    .end local v2           #nextState:I
    .restart local v8       #nextState:I
    goto :goto_38

    .line 105
    .end local v8           #nextState:I
    :cond_71
    const-string v2, " ,-:\r\t"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_80

    .line 106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 108
    .restart local p0
    :cond_80
    const/4 v2, 0x0

    .restart local v2       #nextState:I
    move v8, v2

    .end local v2           #nextState:I
    .restart local v8       #nextState:I
    goto :goto_38

    .line 117
    .end local v11           #state:I
    .local v2, digit:I
    :cond_83
    move v2, v2

    .end local v12           #year:I
    .local v2, year:I
    move v14, v10

    .end local v10           #second:I
    .local v14, second:I
    move v10, v2

    .end local v2           #year:I
    .local v10, year:I
    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v14

    .end local v14           #second:I
    .local v5, second:I
    :goto_89
    move v14, v5

    .end local v5           #second:I
    .restart local v14       #second:I
    move v5, v6

    .end local v6           #month:I
    .local v5, month:I
    move v6, v14

    .line 153
    .end local v14           #second:I
    .local v6, second:I
    :goto_8c
    const/4 v11, 0x1

    if-eq v8, v11, :cond_92

    const/4 v11, 0x2

    if-ne v8, v11, :cond_95

    .line 154
    :cond_92
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    :cond_95
    move v7, v8

    .local v7, state:I
    move v12, v10

    .end local v10           #year:I
    .restart local v12       #year:I
    move v11, v7

    .end local v7           #state:I
    .restart local v11       #state:I
    move v10, v6

    .end local v6           #second:I
    .local v10, second:I
    move v6, v5

    .end local v5           #month:I
    .local v6, month:I
    move v5, v3

    .end local v3           #minute:I
    .local v5, minute:I
    move v3, v2

    .end local v2           #hour:I
    .local v3, hour:I
    move v2, v9

    .line 156
    .end local v9           #offset:I
    .local v2, offset:I
    goto/16 :goto_1c

    .line 118
    .end local v11           #state:I
    .local v2, digit:I
    .local v7, next:C
    .restart local v9       #offset:I
    :cond_9f
    const/16 v11, 0x3a

    if-ne v7, v11, :cond_bb

    .line 119
    const/4 v11, -0x1

    if-ne v3, v11, :cond_ab

    .line 120
    move v2, v2

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v10

    .end local v10           #second:I
    .local v5, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    goto :goto_89

    .line 121
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_ab
    const/4 v11, -0x1

    if-ne v5, v11, :cond_b5

    .line 122
    move v2, v2

    .end local v5           #minute:I
    .local v2, minute:I
    move v5, v10

    .end local v10           #second:I
    .local v5, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    move v14, v3

    .end local v3           #hour:I
    .local v14, hour:I
    move v3, v2

    .end local v2           #minute:I
    .local v3, minute:I
    move v2, v14

    .end local v14           #hour:I
    .local v2, hour:I
    goto :goto_89

    .line 124
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 125
    .restart local p0
    :cond_bb
    const/16 v11, 0x20

    if-eq v7, v11, :cond_cb

    const/16 v11, 0x2c

    if-eq v7, v11, :cond_cb

    const/16 v11, 0x2d

    if-eq v7, v11, :cond_cb

    const/16 v11, 0xd

    if-ne v7, v11, :cond_fe

    .line 127
    :cond_cb
    const/4 v11, -0x1

    if-eq v3, v11, :cond_d8

    const/4 v11, -0x1

    if-ne v5, v11, :cond_d8

    .line 128
    move v2, v2

    .end local v5           #minute:I
    .local v2, minute:I
    move v5, v10

    .end local v10           #second:I
    .local v5, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    move v14, v3

    .end local v3           #hour:I
    .restart local v14       #hour:I
    move v3, v2

    .end local v2           #minute:I
    .local v3, minute:I
    move v2, v14

    .end local v14           #hour:I
    .local v2, hour:I
    goto :goto_89

    .line 129
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_d8
    const/4 v11, -0x1

    if-eq v5, v11, :cond_e5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_e5

    .line 130
    move v2, v2

    .end local v10           #second:I
    .local v2, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    move v14, v5

    .end local v5           #minute:I
    .local v14, minute:I
    move v5, v2

    .end local v2           #second:I
    .local v5, second:I
    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v14

    .end local v14           #minute:I
    .local v3, minute:I
    goto :goto_89

    .line 131
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_e5
    const/4 v11, -0x1

    if-ne v1, v11, :cond_ee

    .line 132
    move v1, v2

    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v10

    .end local v10           #second:I
    .local v5, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    goto :goto_89

    .line 133
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_ee
    const/4 v11, -0x1

    if-ne v12, v11, :cond_f8

    .line 134
    move v2, v2

    .end local v12           #year:I
    .local v2, year:I
    move v14, v10

    .end local v10           #second:I
    .local v14, second:I
    move v10, v2

    .end local v2           #year:I
    .local v10, year:I
    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v14

    .end local v14           #second:I
    .local v5, second:I
    goto :goto_89

    .line 136
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_f8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 137
    .restart local p0
    :cond_fe
    const/4 v11, -0x1

    if-ne v12, v11, :cond_10f

    const/4 v11, -0x1

    if-eq v6, v11, :cond_10f

    const/4 v11, -0x1

    if-eq v1, v11, :cond_10f

    .line 138
    move v2, v2

    .end local v12           #year:I
    .local v2, year:I
    move v14, v10

    .end local v10           #second:I
    .restart local v14       #second:I
    move v10, v2

    .end local v2           #year:I
    .local v10, year:I
    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v14

    .end local v14           #second:I
    .local v5, second:I
    goto/16 :goto_89

    .line 140
    .local v2, digit:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_10f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 141
    .end local v2           #digit:I
    .restart local v11       #state:I
    .restart local p0
    :cond_115
    const/4 v2, 0x1

    if-ne v11, v2, :cond_1e0

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1e0

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 144
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v13, 0x3

    if-ge v2, v13, :cond_134

    .line 145
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 146
    .restart local p0
    :cond_134
    sget-object v2, Lorg/apache/harmony/luni/util/Util;->WEEKDAYS:[Ljava/lang/String;

    invoke-static {v11, v2}, Lorg/apache/harmony/luni/util/Util;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v13, -0x1

    if-eq v2, v13, :cond_144

    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v6

    .end local v6           #month:I
    .local v5, month:I
    move v6, v10

    .end local v10           #second:I
    .local v6, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    goto/16 :goto_8c

    .line 147
    .end local v2           #hour:I
    .local v3, hour:I
    .local v5, minute:I
    .local v6, month:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_144
    const/4 v2, -0x1

    if-ne v6, v2, :cond_158

    sget-object v2, Lorg/apache/harmony/luni/util/Util;->MONTHS:[Ljava/lang/String;

    invoke-static {v11, v2}, Lorg/apache/harmony/luni/util/Util;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .end local v6           #month:I
    .local v2, month:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_159

    move v6, v10

    .end local v10           #second:I
    .local v6, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    move v14, v3

    .end local v3           #hour:I
    .local v14, hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v2

    .end local v2           #month:I
    .local v5, month:I
    move v2, v14

    .end local v14           #hour:I
    .local v2, hour:I
    goto/16 :goto_8c

    .end local v2           #hour:I
    .local v3, hour:I
    .local v5, minute:I
    .local v6, month:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_158
    move v2, v6

    .line 148
    .end local v6           #month:I
    .local v2, month:I
    :cond_159
    const-string v6, "GMT"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    move v6, v10

    .end local v10           #second:I
    .local v6, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    move v14, v3

    .end local v3           #hour:I
    .restart local v14       #hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v2

    .end local v2           #month:I
    .local v5, month:I
    move v2, v14

    .end local v14           #hour:I
    .local v2, hour:I
    goto/16 :goto_8c

    .line 150
    .end local v6           #second:I
    .local v2, month:I
    .local v3, hour:I
    .local v5, minute:I
    .local v10, second:I
    .restart local v12       #year:I
    :cond_169
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 158
    .end local v7           #next:C
    .end local v8           #nextState:I
    .end local v9           #offset:I
    .local v2, offset:I
    .local v6, month:I
    .local v11, state:I
    .restart local p0
    :cond_16f
    const/4 p0, -0x1

    if-eq v12, p0, :cond_1d0

    .end local p0
    const/4 p0, -0x1

    if-eq v6, p0, :cond_1d0

    const/4 p0, -0x1

    if-eq v1, p0, :cond_1d0

    .line 159
    const/4 p0, -0x1

    if-ne v3, p0, :cond_1de

    .line 160
    const/4 p0, 0x0

    .end local v3           #hour:I
    .local p0, hour:I
    move v2, p0

    .line 161
    .end local p0           #hour:I
    .local v2, hour:I
    :goto_17d
    const/4 p0, -0x1

    if-ne v5, p0, :cond_1dc

    .line 162
    const/4 p0, 0x0

    .end local v5           #minute:I
    .local p0, minute:I
    move v3, p0

    .line 163
    .end local p0           #minute:I
    .local v3, minute:I
    :goto_182
    const/4 p0, -0x1

    if-ne v10, p0, :cond_1da

    .line 164
    const/4 p0, 0x0

    .end local v10           #second:I
    .local p0, second:I
    move v4, p0

    .line 165
    .end local p0           #second:I
    .local v4, second:I
    :goto_187
    const-string p0, "GMT"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 166
    .local p0, cal:Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    move-result v0

    const/16 v5, 0x50

    sub-int/2addr v0, v5

    .line 167
    .local v0, current:I
    const/16 v5, 0x64

    if-ge v12, v5, :cond_1d8

    .line 168
    div-int/lit8 v5, v0, 0x64

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v12

    .line 169
    .end local v12           #year:I
    .local v5, year:I
    if-ge v5, v0, :cond_1d6

    .line 170
    add-int/lit8 v0, v5, 0x64

    .line 172
    .end local v5           #year:I
    .local v0, year:I
    :goto_1a6
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 174
    .end local v0           #year:I
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 175
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 179
    .end local v1           #date:I
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .end local p0           #cal:Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 181
    .local v0, buffer:Ljava/lang/StringBuffer;
    .restart local v1       #date:I
    .local v2, offset:I
    .local v3, hour:I
    .local v4, length:I
    .local v5, minute:I
    .restart local v10       #second:I
    .restart local v12       #year:I
    :cond_1d0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .end local v10           #second:I
    .end local v12           #year:I
    .local v0, current:I
    .local v2, hour:I
    .local v3, minute:I
    .local v4, second:I
    .local v5, year:I
    .restart local p0       #cal:Ljava/util/Calendar;
    :cond_1d6
    move v0, v5

    .end local v5           #year:I
    .local v0, year:I
    goto :goto_1a6

    .local v0, current:I
    .restart local v12       #year:I
    :cond_1d8
    move v0, v12

    .end local v12           #year:I
    .local v0, year:I
    goto :goto_1a6

    .end local p0           #cal:Ljava/util/Calendar;
    .local v0, buffer:Ljava/lang/StringBuffer;
    .local v4, length:I
    .restart local v10       #second:I
    .restart local v12       #year:I
    :cond_1da
    move v4, v10

    .end local v10           #second:I
    .local v4, second:I
    goto :goto_187

    .end local v3           #minute:I
    .local v4, length:I
    .local v5, minute:I
    .restart local v10       #second:I
    :cond_1dc
    move v3, v5

    .end local v5           #minute:I
    .restart local v3       #minute:I
    goto :goto_182

    .local v2, offset:I
    .local v3, hour:I
    .restart local v5       #minute:I
    :cond_1de
    move v2, v3

    .end local v3           #hour:I
    .local v2, hour:I
    goto :goto_17d

    .end local v2           #hour:I
    .restart local v3       #hour:I
    .restart local v7       #next:C
    .restart local v8       #nextState:I
    .restart local v9       #offset:I
    .local p0, string:Ljava/lang/String;
    :cond_1e0
    move v2, v3

    .end local v3           #hour:I
    .restart local v2       #hour:I
    move v3, v5

    .end local v5           #minute:I
    .local v3, minute:I
    move v5, v6

    .end local v6           #month:I
    .local v5, month:I
    move v6, v10

    .end local v10           #second:I
    .local v6, second:I
    move v10, v12

    .end local v12           #year:I
    .local v10, year:I
    goto/16 :goto_8c
.end method

.method public static toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 279
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_25

    .line 281
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 282
    .local v1, c:C
    const/16 v4, 0x41

    if-gt v4, v1, :cond_21

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_21

    .line 283
    add-int/lit8 v4, v1, 0x20

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 285
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 288
    .end local v1           #c:C
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 293
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_27

    .line 295
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 296
    .local v1, c:C
    const/16 v4, 0x61

    if-gt v4, v1, :cond_23

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_23

    .line 297
    const/16 v4, 0x20

    sub-int v4, v1, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 299
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 302
    .end local v1           #c:C
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 6
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 64
    :try_start_5
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    sget-object v3, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_e} :catch_f

    .line 68
    :goto_e
    return-object v0

    .line 65
    :catch_f
    move-exception v0

    .line 68
    :cond_10
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    invoke-direct {v0, p0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_e
.end method

.method public static toString([BII)Ljava/lang/String;
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 72
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 74
    :try_start_4
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    .line 78
    :goto_b
    return-object v0

    .line 75
    :catch_c
    move-exception v0

    .line 78
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_b
.end method
