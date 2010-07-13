.class public Lorg/javia/arity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    const-string v9, ""

    .line 155
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v5

    if-nez v0, :cond_16

    .line 156
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_15
    return-object v0

    .line 158
    :cond_16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 160
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 161
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 164
    cmpl-double v4, v0, v5

    if-eqz v4, :cond_c9

    cmpg-double v4, v2, v5

    if-ltz v4, :cond_c9

    const/4 v4, 0x1

    .line 165
    :goto_4c
    cmpl-double v5, v0, v5

    if-nez v5, :cond_cb

    const-string v0, ""

    move-object v0, v9

    .line 166
    :goto_53
    invoke-static {v2, v3, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 168
    const-string v1, ""

    move-object v1, v9

    .line 170
    :cond_62
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 171
    const-string v1, "-"

    .line 173
    :cond_6c
    add-int/lit8 v2, p1, -0x1

    .line 174
    if-eqz v4, :cond_72

    .line 175
    add-int/lit8 v2, v2, -0x1

    .line 177
    :cond_72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    add-int v6, v3, v5

    sub-int/2addr v6, v2

    .line 180
    if-lez v6, :cond_dc

    .line 181
    sub-int v7, v3, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 182
    if-le v6, v7, :cond_8b

    sub-int v8, v6, v7

    div-int/lit8 v8, v8, 0x2

    .line 183
    :cond_8b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v8

    .line 186
    if-le v3, v5, :cond_d0

    .line 187
    sub-int/2addr v3, v6

    .line 188
    sub-int/2addr v5, v8

    move v10, v5

    move v5, v3

    move v3, v10

    .line 193
    :goto_97
    add-int v6, v5, v3

    if-le v6, v2, :cond_da

    .line 194
    add-int/lit8 v2, v3, -0x1

    .line 196
    :goto_9d
    invoke-static {v0, v5}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1, v2}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 199
    :goto_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_d6

    const-string v2, "+"

    :goto_b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :cond_c9
    move v4, v8

    .line 164
    goto :goto_4c

    .line 165
    :cond_cb
    invoke-static {v0, v1, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 190
    :cond_d0
    sub-int/2addr v3, v8

    .line 191
    sub-int/2addr v5, v6

    move v10, v5

    move v5, v3

    move v3, v10

    goto :goto_97

    .line 199
    :cond_d6
    const-string v2, ""

    move-object v2, v9

    goto :goto_b5

    :cond_da
    move v2, v3

    goto :goto_9d

    :cond_dc
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_a8
.end method

.method public static doubleToString(DI)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/16 v10, 0x2e

    const/4 v9, 0x1

    const/16 v8, 0x30

    const/4 v7, 0x0

    .line 59
    const/16 v0, 0xd

    if-le p2, v0, :cond_100

    move v0, v7

    .line 62
    :goto_c
    if-nez v0, :cond_44

    const/16 v0, 0x11

    .line 64
    :goto_10
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 66
    const/16 v3, 0x45

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 67
    if-eq v3, v5, :cond_49

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    :goto_2f
    if-eq v3, v5, :cond_34

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v4, v7

    .line 75
    :goto_39
    if-ge v4, v3, :cond_4b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_4b

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 62
    :cond_44
    const/16 v1, 0xf

    sub-int v0, v1, v0

    goto :goto_10

    :cond_49
    move v1, v7

    .line 67
    goto :goto_2f

    .line 78
    :cond_4b
    add-int/2addr v1, v4

    .line 79
    if-ge v4, v3, :cond_53

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v3, v3, -0x1

    :cond_53
    move v4, v0

    move v0, v7

    .line 85
    :goto_55
    if-ge v0, v3, :cond_62

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_62

    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 89
    :cond_62
    if-ge v4, v3, :cond_fe

    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v5, 0x35

    if-lt v0, v5, :cond_fb

    .line 92
    sub-int v0, v4, v9

    :goto_6e
    if-ltz v0, :cond_7e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-ne v5, v6, :cond_7e

    .line 93
    invoke-virtual {v2, v0, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_6e

    .line 95
    :cond_7e
    if-ltz v0, :cond_ae

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v0, v1

    move v1, v4

    .line 103
    :goto_8c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 107
    :goto_8f
    const/4 v1, -0x5

    if-lt v0, v1, :cond_96

    const/16 v1, 0xa

    if-le v0, v1, :cond_bb

    .line 108
    :cond_96
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 109
    add-int/lit8 v0, v0, -0x1

    .line 120
    :goto_9b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 124
    sub-int/2addr v1, v9

    :goto_a0
    if-ltz v1, :cond_d5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_d5

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 v1, v1, -0x1

    goto :goto_a0

    .line 98
    :cond_ae
    const/16 v0, 0x31

    invoke-virtual {v2, v7, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v0, v4, 0x1

    .line 100
    add-int/lit8 v1, v1, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_8c

    :cond_bb
    move v1, v3

    .line 111
    :goto_bc
    if-ge v1, v0, :cond_c4

    .line 112
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_c4
    move v1, v0

    .line 114
    :goto_c5
    if-gtz v1, :cond_cd

    .line 115
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    .line 117
    :cond_cd
    if-gtz v0, :cond_d0

    move v0, v9

    :cond_d0
    invoke-virtual {v2, v0, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v0, v7

    .line 118
    goto :goto_9b

    .line 127
    :cond_d5
    if-ltz v1, :cond_e0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_e0

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 131
    :cond_e0
    if-eqz v0, :cond_eb

    .line 132
    const/16 v1, 0x45

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 134
    :cond_eb
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_f6

    .line 135
    const/16 v0, 0x2d

    invoke-virtual {v2, v7, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 137
    :cond_f6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_fb
    move v0, v1

    move v1, v4

    goto :goto_8c

    :cond_fe
    move v0, v1

    goto :goto_8f

    :cond_100
    move v0, p2

    goto/16 :goto_c
.end method

.method public static doubleToString(DII)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-static {p0, p1, p3}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shortApprox(DD)D
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v2

    invoke-static {v2}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v2

    .line 32
    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 33
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_20

    neg-double v0, v0

    :cond_20
    return-wide v0
.end method

.method public static sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 43
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 44
    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 46
    sub-int v2, p1, v1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_34
    const-string v0, ""

    goto :goto_d
.end method
