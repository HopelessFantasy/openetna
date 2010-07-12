.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .registers 7
    .parameter "sb"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 159
    .local v2, len:I
    :goto_8
    if-ge v1, v2, :cond_42

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 162
    .local v0, c:C
    if-nez v0, :cond_3f

    .line 163
    if-eqz v1, :cond_36

    sub-int v3, v2, v4

    if-eq v1, v3, :cond_36

    sub-int v3, v1, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_36

    sub-int v3, v1, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_36

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_36

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_3c

    .line 168
    :cond_36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 171
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 174
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 178
    .end local v0           #c:C
    :cond_42
    const/4 v1, 0x0

    :goto_43
    if-ge v1, v2, :cond_51

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4e

    .line 180
    invoke-virtual {p0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 178
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 183
    :cond_51
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .registers 12
    .parameter "text"

    .prologue
    .line 41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v7, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v6, name:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, address:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, comment:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 47
    .local v1, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, cursor:I
    move v4, v1

    .line 49
    .end local v1           #i:I
    .local v4, i:I
    :cond_1a
    :goto_1a
    if-ge v4, v3, :cond_10f

    .line 50
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 52
    .local v1, c:C
    const/16 v5, 0x2c

    if-eq v1, v5, :cond_28

    const/16 v5, 0x3b

    if-ne v1, v5, :cond_79

    .line 53
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 55
    :goto_2a
    if-ge v4, v3, :cond_37

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v8, 0x20

    if-ne v5, v8, :cond_37

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 59
    :cond_37
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_61

    .line 62
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_54
    :goto_54
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 72
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1a

    .line 65
    :cond_61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_54

    .line 66
    new-instance v5, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 74
    :cond_79
    const/16 v5, 0x22

    if-ne v1, v5, :cond_a2

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 77
    :goto_7f
    if-ge v4, v3, :cond_1a

    .line 78
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 80
    const/16 v5, 0x22

    if-ne v1, v5, :cond_8c

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    goto :goto_1a

    .line 83
    :cond_8c
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_9c

    .line 84
    add-int/lit8 v5, v4, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v4, v4, 0x2

    goto :goto_7f

    .line 87
    :cond_9c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 91
    :cond_a2
    const/16 v5, 0x28

    if-ne v1, v5, :cond_e2

    .line 92
    const/4 v5, 0x1

    .line 93
    .local v5, level:I
    add-int/lit8 v4, v4, 0x1

    .line 95
    :goto_a9
    if-ge v4, v3, :cond_1a

    if-lez v5, :cond_1a

    .line 96
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 98
    const/16 v8, 0x29

    if-ne v1, v8, :cond_c0

    .line 99
    const/4 v8, 0x1

    if-le v5, v8, :cond_bb

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_bb
    add-int/lit8 v5, v5, -0x1

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 105
    :cond_c0
    const/16 v8, 0x28

    if-ne v1, v8, :cond_cc

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 109
    :cond_cc
    const/16 v8, 0x5c

    if-ne v1, v8, :cond_dc

    .line 110
    add-int/lit8 v8, v4, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v4, v4, 0x2

    goto :goto_a9

    .line 113
    :cond_dc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 117
    .end local v5           #level:I
    :cond_e2
    const/16 v5, 0x3c

    if-ne v1, v5, :cond_fc

    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 120
    :goto_e8
    if-ge v4, v3, :cond_1a

    .line 121
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 123
    const/16 v5, 0x3e

    if-ne v1, v5, :cond_f6

    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    goto/16 :goto_1a

    .line 127
    :cond_f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_e8

    .line 131
    :cond_fc
    const/16 v5, 0x20

    if-ne v1, v5, :cond_108

    .line 132
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    .line 135
    :cond_108
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    .line 140
    .end local v1           #c:C
    :cond_10f
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .end local p0
    if-lez p0, :cond_139

    .line 143
    new-instance p0, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #address:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #comment:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, v0, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_12c
    :goto_12c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/util/Rfc822Token;

    return-object p0

    .line 146
    .restart local v0       #address:Ljava/lang/StringBuilder;
    .restart local v2       #comment:Ljava/lang/StringBuilder;
    :cond_139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_12c

    .line 147
    new-instance p0, Landroid/text/util/Rfc822Token;

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .end local v0           #address:Ljava/lang/StringBuilder;
    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #comment:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12c
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 11
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 220
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 221
    .local v2, len:I
    move v1, p2

    .line 223
    .local v1, i:I
    :cond_b
    :goto_b
    if-ge v1, v2, :cond_19

    .line 224
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 226
    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_19

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1a

    .line 280
    .end local v0           #c:C
    :cond_19
    return v1

    .line 228
    .restart local v0       #c:C
    :cond_1a
    if-ne v0, v5, :cond_31

    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 231
    :goto_1e
    if-ge v1, v2, :cond_b

    .line 232
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 234
    if-ne v0, v5, :cond_29

    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 236
    goto :goto_b

    .line 237
    :cond_29
    if-ne v0, v7, :cond_2e

    .line 238
    add-int/lit8 v1, v1, 0x2

    goto :goto_1e

    .line 240
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 243
    :cond_31
    if-ne v0, v6, :cond_56

    .line 244
    const/4 v3, 0x1

    .line 245
    .local v3, level:I
    add-int/lit8 v1, v1, 0x1

    .line 247
    :goto_36
    if-ge v1, v2, :cond_b

    if-lez v3, :cond_b

    .line 248
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 250
    const/16 v4, 0x29

    if-ne v0, v4, :cond_47

    .line 251
    add-int/lit8 v3, v3, -0x1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 253
    :cond_47
    if-ne v0, v6, :cond_4e

    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 256
    :cond_4e
    if-ne v0, v7, :cond_53

    .line 257
    add-int/lit8 v1, v1, 0x2

    goto :goto_36

    .line 259
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 262
    .end local v3           #level:I
    :cond_56
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_6c

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 265
    :goto_5c
    if-ge v1, v2, :cond_b

    .line 266
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 268
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_69

    .line 269
    add-int/lit8 v1, v1, 0x1

    .line 270
    goto :goto_b

    .line 272
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 276
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, best:I
    const/4 v1, 0x0

    .line 197
    .local v1, i:I
    :cond_2
    :goto_2
    if-ge v1, p2, :cond_1d

    .line 198
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 200
    if-ge v1, p2, :cond_2

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 203
    :goto_c
    if-ge v1, p2, :cond_19

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 207
    :cond_19
    if-ge v1, p2, :cond_2

    .line 208
    move v0, v1

    goto :goto_2

    .line 213
    :cond_1d
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "text"

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
