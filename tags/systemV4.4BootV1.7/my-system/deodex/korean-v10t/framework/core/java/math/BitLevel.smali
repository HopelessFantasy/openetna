.class Ljava/math/BitLevel;
.super Ljava/lang/Object;
.source "BitLevel.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitCount(Ljava/math/BigInteger;)I
    .registers 4
    .parameter "val"

    .prologue
    .line 70
    const-string v2, "BitLevel.bitCount"

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, bCount:I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_c

    .line 75
    const/4 v2, 0x0

    .line 92
    :goto_b
    return v2

    .line 78
    :cond_c
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 79
    .local v1, i:I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_24

    .line 80
    :goto_14
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_48

    .line 81
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 85
    :cond_24
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x1

    :goto_30
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_42

    .line 87
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 90
    :cond_42
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v2, v2, 0x5

    sub-int v0, v2, v0

    :cond_48
    move v2, v0

    .line 92
    goto :goto_b
.end method

.method static bitLength(Ljava/math/BigInteger;)I
    .registers 7
    .parameter "val"

    .prologue
    const/4 v5, 0x1

    .line 47
    const-string v3, "BitLevel.bitLength"

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 49
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-nez v3, :cond_c

    .line 50
    const/4 v3, 0x0

    .line 64
    :goto_b
    return v3

    .line 52
    :cond_c
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v0, v3, 0x5

    .line 53
    .local v0, bLength:I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v4, v5

    aget v1, v3, v4

    .line 55
    .local v1, highDigit:I
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-gez v3, :cond_26

    .line 56
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 58
    .local v2, i:I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v3, v5

    if-ne v2, v3, :cond_26

    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 63
    .end local v2           #i:I
    :cond_26
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v0, v3

    move v3, v0

    .line 64
    goto :goto_b
.end method

.method static flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 16
    .parameter "val"
    .parameter "n"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 299
    const-string v9, "BitLevel.flipBit"

    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 301
    iget v9, p0, Ljava/math/BigInteger;->sign:I

    if-nez v9, :cond_39

    move v7, v12

    .line 302
    .local v7, resSign:I
    :goto_d
    shr-int/lit8 v4, p1, 0x5

    .line 303
    .local v4, intCount:I
    and-int/lit8 v0, p1, 0x1f

    .line 304
    .local v0, bitN:I
    add-int/lit8 v9, v4, 0x1

    iget v10, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 305
    .local v6, resLength:I
    new-array v5, v6, [I

    .line 308
    .local v5, resDigits:[I
    shl-int v1, v12, v0

    .line 309
    .local v1, bitNumber:I
    iget-object v9, p0, Ljava/math/BigInteger;->digits:[I

    iget v10, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v9, v11, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget v9, p0, Ljava/math/BigInteger;->sign:I

    if-gez v9, :cond_7e

    .line 312
    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v4, v9, :cond_3d

    .line 313
    aput v1, v5, v4

    .line 339
    :cond_30
    :goto_30
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 340
    .local v8, result:Ljava/math/BigInteger;
    invoke-virtual {v8}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 341
    return-object v8

    .line 301
    .end local v0           #bitN:I
    .end local v1           #bitNumber:I
    .end local v4           #intCount:I
    .end local v5           #resDigits:[I
    .end local v6           #resLength:I
    .end local v7           #resSign:I
    .end local v8           #result:Ljava/math/BigInteger;
    :cond_39
    iget v9, p0, Ljava/math/BigInteger;->sign:I

    move v7, v9

    goto :goto_d

    .line 316
    .restart local v0       #bitN:I
    .restart local v1       #bitNumber:I
    .restart local v4       #intCount:I
    .restart local v5       #resDigits:[I
    .restart local v6       #resLength:I
    .restart local v7       #resSign:I
    :cond_3d
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 317
    .local v2, firstNonZeroDigit:I
    if-le v4, v2, :cond_49

    .line 318
    aget v9, v5, v4

    xor-int/2addr v9, v1

    aput v9, v5, v4

    goto :goto_30

    .line 319
    :cond_49
    if-ge v4, v2, :cond_60

    .line 320
    neg-int v9, v1

    aput v9, v5, v4

    .line 321
    add-int/lit8 v3, v4, 0x1

    .local v3, i:I
    :goto_50
    if-ge v3, v2, :cond_57

    .line 322
    aput v13, v5, v3

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 324
    :cond_57
    aget v9, v5, v3

    sub-int v10, v9, v12

    aput v10, v5, v3

    aput v9, v5, v3

    goto :goto_30

    .line 326
    .end local v3           #i:I
    :cond_60
    move v3, v4

    .line 327
    .restart local v3       #i:I
    aget v9, v5, v4

    neg-int v9, v9

    xor-int/2addr v9, v1

    neg-int v9, v9

    aput v9, v5, v3

    .line 328
    aget v9, v5, v3

    if-nez v9, :cond_30

    .line 329
    add-int/lit8 v3, v3, 0x1

    :goto_6e
    aget v9, v5, v3

    if-ne v9, v13, :cond_77

    .line 330
    aput v11, v5, v3

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 332
    :cond_77
    aget v9, v5, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v5, v3

    goto :goto_30

    .line 337
    .end local v2           #firstNonZeroDigit:I
    .end local v3           #i:I
    :cond_7e
    aget v9, v5, v4

    xor-int/2addr v9, v1

    aput v9, v5, v4

    goto :goto_30
.end method

.method static inplaceShiftRight(Ljava/math/BigInteger;I)V
    .registers 9
    .parameter "val"
    .parameter "count"

    .prologue
    .line 226
    const-string v3, "BitLevel.inplaceShiftRight"

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    .line 229
    .local v2, sign:I
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-nez v3, :cond_12

    .line 248
    :cond_11
    :goto_11
    return-void

    .line 231
    :cond_12
    shr-int/lit8 v1, p1, 0x5

    .line 232
    .local v1, intCount:I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljava/math/BigInteger;->numberLength:I

    .line 233
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    and-int/lit8 v6, p1, 0x1f

    invoke-static {v3, v4, v5, v1, v6}, Ljava/math/BitLevel;->shiftRight([II[III)Z

    move-result v3

    if-nez v3, :cond_4f

    if-gez v2, :cond_4f

    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_3d

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3d

    .line 239
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 241
    :cond_3d
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v3, :cond_47

    .line 242
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/math/BigInteger;->numberLength:I

    .line 244
    :cond_47
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 246
    .end local v0           #i:I
    :cond_4f
    invoke-virtual {p0}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 247
    invoke-virtual {p0}, Ljava/math/BigInteger;->unCache()V

    goto :goto_11
.end method

.method static nonZeroDroppedBits(I[I)Z
    .registers 7
    .parameter "numberOfBits"
    .parameter "digits"

    .prologue
    .line 114
    shr-int/lit8 v2, p0, 0x5

    .line 115
    .local v2, intCount:I
    and-int/lit8 v0, p0, 0x1f

    .line 118
    .local v0, bitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_e

    aget v3, p1, v1

    if-nez v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 121
    :cond_e
    if-ne v1, v2, :cond_18

    aget v3, p1, v1

    const/16 v4, 0x20

    sub-int/2addr v4, v0

    shl-int/2addr v3, v4

    if-eqz v3, :cond_1a

    :cond_18
    const/4 v3, 0x1

    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method static shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 9
    .parameter "source"
    .parameter "count"

    .prologue
    .line 186
    const-string v5, "BitLevel.shiftRight"

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 188
    shr-int/lit8 v1, p1, 0x5

    .line 189
    .local v1, intCount:I
    and-int/lit8 p1, p1, 0x1f

    .line 190
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_17

    .line 191
    iget v5, p0, Ljava/math/BigInteger;->sign:I

    if-gez v5, :cond_14

    sget-object v5, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 218
    :goto_13
    return-object v5

    .line 191
    :cond_14
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_13

    .line 194
    :cond_17
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int v3, v5, v1

    .line 195
    .local v3, resLength:I
    add-int/lit8 v5, v3, 0x1

    new-array v2, v5, [I

    .line 197
    .local v2, resDigits:[I
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v2, v3, v5, v1, p1}, Ljava/math/BitLevel;->shiftRight([II[III)Z

    .line 198
    iget v5, p0, Ljava/math/BigInteger;->sign:I

    if-gez v5, :cond_5a

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    if-ge v0, v1, :cond_34

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    if-nez v5, :cond_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 205
    :cond_34
    if-lt v0, v1, :cond_42

    if-lez p1, :cond_5a

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    const/16 v6, 0x20

    sub-int/2addr v6, p1

    shl-int/2addr v5, v6

    if-eqz v5, :cond_5a

    .line 207
    :cond_42
    const/4 v0, 0x0

    :goto_43
    if-ge v0, v3, :cond_50

    aget v5, v2, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_50

    .line 208
    const/4 v5, 0x0

    aput v5, v2, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 210
    :cond_50
    if-ne v0, v3, :cond_54

    .line 211
    add-int/lit8 v3, v3, 0x1

    .line 213
    :cond_54
    aget v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v0

    .line 216
    .end local v0           #i:I
    :cond_5a
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v4, v5, v3, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 217
    .local v4, result:Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    move-object v5, v4

    .line 218
    goto :goto_13
.end method

.method static shiftRight([II[III)Z
    .registers 11
    .parameter "result"
    .parameter "resultLen"
    .parameter "source"
    .parameter "intCount"
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    const/4 v0, 0x1

    .line 270
    .local v0, allZero:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, p3, :cond_11

    .line 271
    aget v3, p2, v1

    if-nez v3, :cond_f

    move v3, v5

    :goto_b
    and-int/2addr v0, v3

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    move v3, v4

    .line 271
    goto :goto_b

    .line 272
    :cond_11
    if-nez p4, :cond_18

    .line 273
    invoke-static {p2, p3, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    move v1, p1

    .line 287
    :goto_17
    return v0

    .line 276
    :cond_18
    const/16 v3, 0x20

    sub-int v2, v3, p4

    .line 278
    .local v2, leftShiftCount:I
    aget v3, p2, v1

    shl-int/2addr v3, v2

    if-nez v3, :cond_3a

    move v3, v5

    :goto_22
    and-int/2addr v0, v3

    .line 279
    const/4 v1, 0x0

    :goto_24
    sub-int v3, p1, v5

    if-ge v1, v3, :cond_3c

    .line 280
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    add-int v4, v1, p3

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    aput v3, p0, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3a
    move v3, v4

    .line 278
    goto :goto_22

    .line 283
    :cond_3c
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    aput v3, p0, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method static testBit(Ljava/math/BigInteger;I)Z
    .registers 5
    .parameter "val"
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    .line 101
    const-string v0, "BitLevel.testBit"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    move v0, v2

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
