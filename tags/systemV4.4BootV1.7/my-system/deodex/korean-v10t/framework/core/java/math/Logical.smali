.class Ljava/math/Logical;
.super Ljava/lang/Object;
.source "Logical.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "that"

    .prologue
    .line 85
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_8

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_b

    .line 86
    :cond_8
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 107
    :goto_a
    return-object v0

    .line 88
    :cond_b
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, p0

    .line 89
    goto :goto_a

    .line 91
    :cond_15
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, p1

    .line 92
    goto :goto_a

    .line 95
    :cond_1f
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_31

    .line 96
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_2c

    .line 97
    invoke-static {p0, p1}, Ljava/math/Logical;->andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    .line 99
    :cond_2c
    invoke-static {p0, p1}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    .line 102
    :cond_31
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_3a

    .line 103
    invoke-static {p1, p0}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    .line 104
    :cond_3a
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_45

    .line 105
    invoke-static {p0, p1}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    .line 107
    :cond_45
    invoke-static {p1, p0}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a
.end method

.method static andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 11
    .parameter "positive"
    .parameter "negative"

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 136
    .local v2, iPos:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 140
    .local v1, iNeg:I
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v7, :cond_f

    .line 141
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 166
    :goto_e
    return-object v7

    .line 143
    :cond_f
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 144
    .local v5, resLength:I
    new-array v4, v5, [I

    .line 147
    .local v4, resDigits:[I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    .local v0, i:I
    if-ne v0, v1, :cond_27

    .line 149
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    and-int/2addr v7, v8

    aput v7, v4, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_27
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 153
    .local v3, limit:I
    :goto_2f
    if-ge v0, v3, :cond_41

    .line 154
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    and-int/2addr v7, v8

    aput v7, v4, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 158
    :cond_41
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v0, v7, :cond_52

    .line 159
    :goto_45
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v7, :cond_52

    .line 160
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    aput v7, v4, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 164
    :cond_52
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 165
    .local v6, result:Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v7, v6

    .line 166
    goto :goto_e
.end method

.method static andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 13
    .parameter "longer"
    .parameter "shorter"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 173
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 174
    .local v2, iLonger:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 177
    .local v3, iShorter:I
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v7, :cond_10

    move-object v7, p0

    .line 222
    :goto_f
    return-object v7

    .line 183
    :cond_10
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    .local v1, i:I
    if-le v3, v2, :cond_3b

    .line 186
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    and-int v0, v7, v8

    .line 192
    .local v0, digit:I
    :goto_23
    if-nez v0, :cond_7c

    .line 193
    add-int/lit8 v1, v1, 0x1

    :goto_27
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_58

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_58

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 187
    .end local v0           #digit:I
    :cond_3b
    if-ge v3, v2, :cond_4b

    .line 188
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    and-int v0, v7, v8

    .restart local v0       #digit:I
    goto :goto_23

    .line 190
    .end local v0           #digit:I
    :cond_4b
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    and-int v0, v7, v8

    .restart local v0       #digit:I
    goto :goto_23

    .line 195
    :cond_58
    if-nez v0, :cond_7c

    .line 197
    :goto_5a
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_69

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 199
    :cond_69
    if-nez v0, :cond_7c

    .line 200
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v5, v7, 0x1

    .line 201
    .local v5, resLength:I
    new-array v4, v5, [I

    .line 202
    .local v4, resDigits:[I
    sub-int v7, v5, v10

    aput v10, v4, v7

    .line 204
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    .local v6, result:Ljava/math/BigInteger;
    move-object v7, v6

    .line 205
    goto :goto_f

    .line 209
    .end local v4           #resDigits:[I
    .end local v5           #resLength:I
    .end local v6           #result:Ljava/math/BigInteger;
    :cond_7c
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 210
    .restart local v5       #resLength:I
    new-array v4, v5, [I

    .line 211
    .restart local v4       #resDigits:[I
    neg-int v7, v0

    aput v7, v4, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    :goto_85
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_97

    .line 214
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 217
    :cond_97
    :goto_97
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_a4

    .line 218
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v4, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 221
    :cond_a4
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    .restart local v6       #result:Ljava/math/BigInteger;
    move-object v7, v6

    .line 222
    goto/16 :goto_f
.end method

.method static andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .parameter "val"
    .parameter "that"

    .prologue
    .line 229
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_6

    move-object v0, p0

    .line 254
    :goto_5
    return-object v0

    .line 232
    :cond_6
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_d

    .line 233
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_5

    .line 235
    :cond_d
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 236
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 238
    :cond_1a
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 239
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_5

    .line 244
    :cond_25
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_37

    .line 245
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_32

    .line 246
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 248
    :cond_32
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 251
    :cond_37
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_40

    .line 252
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 254
    :cond_40
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5
.end method

.method static andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .parameter "val"
    .parameter "that"

    .prologue
    const/4 v9, 0x1

    .line 390
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 391
    .local v2, iVal:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 393
    .local v1, iThat:I
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v7, :cond_10

    .line 394
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 440
    :goto_f
    return-object v7

    .line 397
    :cond_10
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    .line 398
    .local v5, resLength:I
    new-array v4, v5, [I

    .line 400
    .local v4, resDigits:[I
    move v0, v2

    .line 401
    .local v0, i:I
    if-ge v2, v1, :cond_71

    .line 403
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    aput v7, v4, v0

    .line 404
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 405
    .local v3, limit:I
    add-int/lit8 v0, v0, 0x1

    :goto_26
    if-ge v0, v3, :cond_33

    .line 407
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    aput v7, v4, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 409
    :cond_33
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v7, :cond_62

    .line 410
    :goto_37
    if-ge v0, v1, :cond_3f

    .line 412
    const/4 v7, -0x1

    aput v7, v4, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 415
    :cond_3f
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    sub-int/2addr v7, v9

    aput v7, v4, v0

    .line 428
    .end local v3           #limit:I
    :goto_46
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 429
    .restart local v3       #limit:I
    add-int/lit8 v0, v0, 0x1

    :goto_50
    if-ge v0, v3, :cond_8e

    .line 431
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    and-int/2addr v7, v8

    aput v7, v4, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 418
    :cond_62
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    sub-int/2addr v8, v9

    and-int/2addr v7, v8

    aput v7, v4, v0

    goto :goto_46

    .line 420
    .end local v3           #limit:I
    :cond_71
    if-ge v1, v2, :cond_80

    .line 422
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    and-int/2addr v7, v8

    aput v7, v4, v0

    goto :goto_46

    .line 425
    :cond_80
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    sub-int/2addr v8, v9

    and-int/2addr v7, v8

    aput v7, v4, v0

    goto :goto_46

    .line 433
    .restart local v3       #limit:I
    :cond_8e
    :goto_8e
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v7, :cond_9b

    .line 435
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    aput v7, v4, v0

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 438
    :cond_9b
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 439
    .local v6, result:Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v7, v6

    .line 440
    goto/16 :goto_f
.end method

.method static andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 14
    .parameter "negative"
    .parameter "positive"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 320
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 321
    .local v2, iNeg:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 323
    .local v3, iPos:I
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v8, :cond_10

    move-object v8, p0

    .line 384
    :goto_f
    return-object v8

    .line 327
    :cond_10
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    iget v9, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 328
    .local v6, resLength:I
    move v1, v2

    .line 329
    .local v1, i:I
    if-le v3, v2, :cond_40

    .line 330
    new-array v5, v6, [I

    .line 331
    .local v5, resDigits:[I
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 332
    .local v4, limit:I
    :goto_23
    if-ge v1, v4, :cond_2e

    .line 335
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 337
    :cond_2e
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v8, :cond_a4

    .line 338
    move v1, v3

    :goto_33
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_a4

    .line 340
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 344
    .end local v4           #limit:I
    .end local v5           #resDigits:[I
    :cond_40
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    iget-object v9, p1, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    xor-int/lit8 v9, v9, -0x1

    and-int v0, v8, v9

    .line 345
    .local v0, digit:I
    if-nez v0, :cond_9d

    .line 346
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 347
    .restart local v4       #limit:I
    add-int/lit8 v1, v1, 0x1

    :goto_59
    if-ge v1, v4, :cond_6b

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    iget-object v9, p1, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    or-int/2addr v8, v9

    xor-int/lit8 v0, v8, -0x1

    if-nez v0, :cond_6b

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 349
    :cond_6b
    if-nez v0, :cond_9d

    .line 351
    :goto_6d
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_7c

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v0, v8, -0x1

    if-nez v0, :cond_7c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 353
    :cond_7c
    :goto_7c
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_8b

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v0, v8, -0x1

    if-nez v0, :cond_8b

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 355
    :cond_8b
    if-nez v0, :cond_9d

    .line 356
    add-int/lit8 v6, v6, 0x1

    .line 357
    new-array v5, v6, [I

    .line 358
    .restart local v5       #resDigits:[I
    sub-int v8, v6, v11

    aput v11, v5, v8

    .line 360
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v10, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .local v7, result:Ljava/math/BigInteger;
    move-object v8, v7

    .line 361
    goto/16 :goto_f

    .line 365
    .end local v4           #limit:I
    .end local v5           #resDigits:[I
    .end local v7           #result:Ljava/math/BigInteger;
    :cond_9d
    new-array v5, v6, [I

    .line 366
    .restart local v5       #resDigits:[I
    neg-int v8, v0

    aput v8, v5, v1

    .line 367
    add-int/lit8 v1, v1, 0x1

    .line 370
    .end local v0           #digit:I
    :cond_a4
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 371
    .restart local v4       #limit:I
    :goto_ac
    if-ge v1, v4, :cond_bc

    .line 373
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    iget-object v9, p1, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    or-int/2addr v8, v9

    aput v8, v5, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 376
    :cond_bc
    :goto_bc
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_c9

    .line 377
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 379
    :cond_c9
    :goto_c9
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_d6

    .line 380
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 383
    :cond_d6
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v10, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .restart local v7       #result:Ljava/math/BigInteger;
    move-object v8, v7

    .line 384
    goto/16 :goto_f
.end method

.method static andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .parameter "val"
    .parameter "that"

    .prologue
    .line 263
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v2, v4, [I

    .line 265
    .local v2, resDigits:[I
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 267
    .local v1, limit:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_22

    .line 268
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aput v4, v2, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 270
    :cond_22
    :goto_22
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v4, :cond_2f

    .line 271
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 274
    :cond_2f
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v3, v4, v5, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 275
    .local v3, result:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 276
    return-object v3
.end method

.method static andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 11
    .parameter "positive"
    .parameter "negative"

    .prologue
    const/4 v8, 0x1

    .line 282
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 283
    .local v1, iNeg:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 285
    .local v2, iPos:I
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v6, :cond_f

    move-object v6, p0

    .line 309
    :goto_e
    return-object v6

    .line 289
    :cond_f
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 290
    .local v4, resLength:I
    new-array v3, v4, [I

    .line 293
    .local v3, resDigits:[I
    move v0, v2

    .line 294
    .local v0, i:I
    :goto_1a
    if-ge v0, v1, :cond_25

    .line 296
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v3, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 298
    :cond_25
    if-ne v0, v1, :cond_35

    .line 299
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    sub-int/2addr v7, v8

    and-int/2addr v6, v7

    aput v6, v3, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 302
    :cond_35
    :goto_35
    if-ge v0, v4, :cond_45

    .line 304
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v3, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 307
    :cond_45
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v8, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 308
    .local v5, result:Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v6, v5

    .line 309
    goto :goto_e
.end method

.method static andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .parameter "val"
    .parameter "that"

    .prologue
    .line 115
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 116
    .local v2, resLength:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 118
    .local v0, i:I
    if-lt v0, v2, :cond_19

    .line 119
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 129
    :goto_18
    return-object v4

    .line 122
    :cond_19
    new-array v1, v2, [I

    .line 123
    .local v1, resDigits:[I
    :goto_1b
    if-ge v0, v2, :cond_2b

    .line 124
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    aput v4, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 127
    :cond_2b
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 128
    .local v3, result:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v4, v3

    .line 129
    goto :goto_18
.end method

.method static not(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .parameter "val"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 42
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_9

    .line 43
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 80
    :goto_8
    return-object v2

    .line 45
    :cond_9
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 46
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_8

    .line 48
    :cond_14
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 51
    .local v1, resDigits:[I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_50

    .line 53
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v3, v5

    aget v2, v2, v3

    if-eq v2, v4, :cond_31

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_5c

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 58
    .end local v0           #i:I
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_32
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_3f

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 61
    :cond_3f
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v2, :cond_5c

    .line 62
    aput v5, v1, v0

    .line 63
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_8

    .line 69
    .end local v0           #i:I
    :cond_50
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_51
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-nez v2, :cond_5c

    .line 70
    aput v4, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 75
    :cond_5c
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    :goto_67
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_74

    .line 78
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 80
    :cond_74
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    invoke-direct {v2, v3, v0, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_8
.end method

.method static or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "that"

    .prologue
    .line 445
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 446
    :cond_10
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 471
    :goto_12
    return-object v0

    .line 448
    :cond_13
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_19

    move-object v0, p0

    .line 449
    goto :goto_12

    .line 451
    :cond_19
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_1f

    move-object v0, p1

    .line 452
    goto :goto_12

    .line 455
    :cond_1f
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_3c

    .line 456
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_37

    .line 457
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_32

    .line 458
    invoke-static {p0, p1}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 460
    :cond_32
    invoke-static {p1, p0}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 463
    :cond_37
    invoke-static {p0, p1}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 466
    :cond_3c
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_45

    .line 467
    invoke-static {p1, p0}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 468
    :cond_45
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_54

    .line 469
    invoke-static {p1, p0}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 471
    :cond_54
    invoke-static {p0, p1}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12
.end method

.method static orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .parameter "positive"
    .parameter "negative"

    .prologue
    const/4 v9, -0x1

    .line 535
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 536
    .local v1, iNeg:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 542
    .local v2, iPos:I
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v7, :cond_f

    move-object v7, p1

    .line 589
    :goto_e
    return-object v7

    .line 545
    :cond_f
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    .line 546
    .local v5, resLength:I
    new-array v4, v5, [I

    .line 548
    .local v4, resDigits:[I
    if-ge v1, v2, :cond_21

    .line 551
    move v0, v1

    .local v0, i:I
    :goto_16
    if-ge v0, v2, :cond_54

    .line 552
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    aput v7, v4, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 554
    .end local v0           #i:I
    :cond_21
    if-ge v2, v1, :cond_7e

    .line 555
    move v0, v2

    .line 556
    .restart local v0       #i:I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    aput v7, v4, v0

    .line 557
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 558
    .local v3, limit:I
    add-int/lit8 v0, v0, 0x1

    :goto_33
    if-ge v0, v3, :cond_40

    .line 559
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    aput v7, v4, v0

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 561
    :cond_40
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-eq v0, v7, :cond_6e

    .line 562
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    or-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v4, v0

    .line 570
    :goto_52
    add-int/lit8 v0, v0, 0x1

    .line 577
    .end local v3           #limit:I
    :cond_54
    :goto_54
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 578
    .restart local v3       #limit:I
    :goto_5c
    if-ge v0, v3, :cond_8f

    .line 581
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    aput v7, v4, v0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 564
    :cond_6e
    :goto_6e
    if-ge v0, v1, :cond_75

    .line 565
    aput v9, v4, v0

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 568
    :cond_75
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput v7, v4, v0

    goto :goto_52

    .line 573
    .end local v0           #i:I
    .end local v3           #limit:I
    :cond_7e
    move v0, v2

    .line 574
    .restart local v0       #i:I
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    or-int/2addr v7, v8

    neg-int v7, v7

    aput v7, v4, v0

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 583
    .restart local v3       #limit:I
    :cond_8f
    :goto_8f
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v7, :cond_9c

    .line 584
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    aput v7, v4, v0

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 587
    :cond_9c
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 588
    .local v6, result:Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v7, v6

    .line 589
    goto/16 :goto_e
.end method

.method static orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 11
    .parameter "val"
    .parameter "that"

    .prologue
    .line 499
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 500
    .local v1, iThat:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 503
    .local v2, iVal:I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_e

    move-object v6, p1

    .line 529
    :goto_d
    return-object v6

    .line 505
    :cond_e
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v6, :cond_14

    move-object v6, p0

    .line 506
    goto :goto_d

    .line 509
    :cond_14
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 510
    .local v4, resLength:I
    new-array v3, v4, [I

    .line 513
    .local v3, resDigits:[I
    if-ne v1, v2, :cond_41

    .line 514
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v2

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v2

    neg-int v7, v7

    or-int/2addr v6, v7

    neg-int v6, v6

    aput v6, v3, v2

    .line 515
    move v0, v2

    .line 523
    .local v0, i:I
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    :goto_31
    if-ge v0, v4, :cond_5b

    .line 524
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v3, v0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 517
    .end local v0           #i:I
    :cond_41
    move v0, v1

    .restart local v0       #i:I
    :goto_42
    if-ge v0, v2, :cond_4d

    .line 518
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v3, v0

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 520
    :cond_4d
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    and-int/2addr v6, v7

    aput v6, v3, v0

    goto :goto_2f

    .line 527
    :cond_5b
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 528
    .local v5, result:Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v6, v5

    .line 529
    goto :goto_d
.end method

.method static orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .parameter "longer"
    .parameter "shorter"

    .prologue
    .line 480
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 481
    .local v2, resLength:I
    new-array v1, v2, [I

    .line 483
    .local v1, resDigits:[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 484
    .local v0, i:I
    const/4 v0, 0x0

    :goto_11
    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v4, :cond_23

    .line 485
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    aput v4, v1, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 487
    :cond_23
    :goto_23
    if-ge v0, v2, :cond_2e

    .line 488
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    aput v4, v1, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 491
    :cond_2e
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 492
    .local v3, result:Ljava/math/BigInteger;
    return-object v3
.end method

.method static xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "that"

    .prologue
    .line 594
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_6

    move-object v0, p0

    .line 623
    :goto_5
    return-object v0

    .line 597
    :cond_6
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_c

    move-object v0, p1

    .line 598
    goto :goto_5

    .line 600
    :cond_c
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 601
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 603
    :cond_19
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 604
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 607
    :cond_26
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_43

    .line 608
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_3e

    .line 609
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_39

    .line 610
    invoke-static {p0, p1}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 612
    :cond_39
    invoke-static {p1, p0}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 615
    :cond_3e
    invoke-static {p0, p1}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 618
    :cond_43
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_4c

    .line 619
    invoke-static {p1, p0}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 620
    :cond_4c
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_5b

    .line 621
    invoke-static {p1, p0}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    .line 623
    :cond_5b
    invoke-static {p0, p1}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5
.end method

.method static xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 14
    .parameter "positive"
    .parameter "negative"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 704
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 706
    .local v6, resLength:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 707
    .local v2, iNeg:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 712
    .local v3, iPos:I
    if-ge v2, v3, :cond_41

    .line 713
    new-array v5, v6, [I

    .line 714
    .local v5, resDigits:[I
    move v1, v2

    .line 716
    .local v1, i:I
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 717
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 719
    .local v4, limit:I
    add-int/lit8 v1, v1, 0x1

    :goto_25
    if-ge v1, v4, :cond_30

    .line 721
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 725
    :cond_30
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v8, :cond_74

    .line 726
    :goto_34
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_74

    .line 728
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 731
    .end local v1           #i:I
    .end local v4           #limit:I
    .end local v5           #resDigits:[I
    :cond_41
    if-ge v3, v2, :cond_a4

    .line 732
    new-array v5, v6, [I

    .line 733
    .restart local v5       #resDigits:[I
    move v1, v3

    .line 735
    .restart local v1       #i:I
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    aput v8, v5, v1

    .line 736
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 737
    .restart local v4       #limit:I
    add-int/lit8 v1, v1, 0x1

    :goto_55
    if-ge v1, v4, :cond_62

    .line 739
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    aput v8, v5, v1

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 743
    :cond_62
    if-ne v1, v2, :cond_90

    .line 744
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    iget-object v9, p1, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    neg-int v9, v9

    xor-int/2addr v8, v9

    xor-int/lit8 v8, v8, -0x1

    aput v8, v5, v1

    .line 745
    add-int/lit8 v1, v1, 0x1

    .line 788
    .end local v4           #limit:I
    :cond_74
    :goto_74
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 789
    .restart local v4       #limit:I
    :goto_7c
    if-ge v1, v4, :cond_108

    .line 790
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    xor-int/2addr v8, v9

    xor-int/lit8 v8, v8, -0x1

    aput v8, v5, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 749
    :cond_90
    :goto_90
    if-ge v1, v2, :cond_97

    .line 751
    aput v10, v5, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 753
    :cond_97
    :goto_97
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_74

    .line 755
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 761
    .end local v1           #i:I
    .end local v4           #limit:I
    .end local v5           #resDigits:[I
    :cond_a4
    move v1, v2

    .line 762
    .restart local v1       #i:I
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    iget-object v9, p1, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    neg-int v9, v9

    xor-int v0, v8, v9

    .line 763
    .local v0, digit:I
    if-nez v0, :cond_ff

    .line 764
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    iget v9, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 765
    .restart local v4       #limit:I
    add-int/lit8 v1, v1, 0x1

    :goto_bc
    if-ge v1, v4, :cond_cf

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    iget-object v9, p1, Ljava/math/BigInteger;->digits:[I

    aget v9, v9, v1

    xor-int/lit8 v9, v9, -0x1

    xor-int v0, v8, v9

    if-nez v0, :cond_cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 767
    :cond_cf
    if-nez v0, :cond_ff

    .line 769
    :goto_d1
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_e0

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v0, v8, -0x1

    if-nez v0, :cond_e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    .line 771
    :cond_e0
    :goto_e0
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_ef

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v0, v8, -0x1

    if-nez v0, :cond_ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    .line 773
    :cond_ef
    if-nez v0, :cond_ff

    .line 774
    add-int/lit8 v6, v6, 0x1

    .line 775
    new-array v5, v6, [I

    .line 776
    .restart local v5       #resDigits:[I
    sub-int v8, v6, v11

    aput v11, v5, v8

    .line 778
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v10, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 803
    .end local v0           #digit:I
    .local v7, result:Ljava/math/BigInteger;
    :goto_fe
    return-object v7

    .line 783
    .end local v4           #limit:I
    .end local v5           #resDigits:[I
    .end local v7           #result:Ljava/math/BigInteger;
    .restart local v0       #digit:I
    :cond_ff
    new-array v5, v6, [I

    .line 784
    .restart local v5       #resDigits:[I
    neg-int v8, v0

    aput v8, v5, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_74

    .line 792
    .end local v0           #digit:I
    .restart local v4       #limit:I
    :cond_108
    :goto_108
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_115

    .line 794
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 796
    :cond_115
    :goto_115
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v8, :cond_122

    .line 798
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    aput v8, v5, v1

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    .line 801
    :cond_122
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v10, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 802
    .restart local v7       #result:Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    goto :goto_fe
.end method

.method static xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .parameter "val"
    .parameter "that"

    .prologue
    const/4 v9, 0x1

    .line 651
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 652
    .local v5, resLength:I
    new-array v4, v5, [I

    .line 653
    .local v4, resDigits:[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 654
    .local v2, iVal:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 655
    .local v1, iThat:I
    move v0, v1

    .line 659
    .local v0, i:I
    if-ne v2, v1, :cond_3d

    .line 660
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    neg-int v8, v8

    xor-int/2addr v7, v8

    aput v7, v4, v0

    .line 681
    :goto_23
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 683
    .local v3, limit:I
    add-int/lit8 v0, v0, 0x1

    :goto_2d
    if-ge v0, v3, :cond_7c

    .line 685
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    xor-int/2addr v7, v8

    aput v7, v4, v0

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 662
    .end local v3           #limit:I
    :cond_3d
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    aput v7, v4, v0

    .line 663
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 664
    .restart local v3       #limit:I
    add-int/lit8 v0, v0, 0x1

    :goto_4c
    if-ge v0, v3, :cond_59

    .line 665
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    aput v7, v4, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 668
    :cond_59
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v7, :cond_6d

    .line 670
    :goto_5d
    if-ge v0, v2, :cond_65

    .line 672
    const/4 v7, -0x1

    aput v7, v4, v0

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 675
    :cond_65
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    sub-int/2addr v7, v9

    aput v7, v4, v0

    goto :goto_23

    .line 677
    :cond_6d
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v0

    xor-int/lit8 v8, v8, -0x1

    xor-int/2addr v7, v8

    aput v7, v4, v0

    goto :goto_23

    .line 688
    :cond_7c
    :goto_7c
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v7, :cond_89

    .line 690
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    aput v7, v4, v0

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 692
    :cond_89
    :goto_89
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v7, :cond_96

    .line 694
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    aput v7, v4, v0

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 697
    :cond_96
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 698
    .local v6, result:Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 699
    return-object v6
.end method

.method static xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .parameter "longer"
    .parameter "shorter"

    .prologue
    .line 632
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 633
    .local v2, resLength:I
    new-array v1, v2, [I

    .line 634
    .local v1, resDigits:[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 635
    .local v0, i:I
    :goto_10
    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v4, :cond_22

    .line 636
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    xor-int/2addr v4, v5

    aput v4, v1, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 638
    :cond_22
    :goto_22
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v4, :cond_2f

    .line 639
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    aput v4, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 642
    :cond_2f
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 643
    .local v3, result:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 644
    return-object v3
.end method
