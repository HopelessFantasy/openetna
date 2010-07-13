.class Ljava/math/Division;
.super Ljava/lang/Object;
.source "Division.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static divideAndRemainderByInteger(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 9
    .parameter "val"
    .parameter "divisor"
    .parameter "divisorSign"

    .prologue
    .line 200
    const-string v0, "Division.divideAndRemainderByInteger"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    .line 204
    .local v2, valDigits:[I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    .line 205
    .local v3, valLen:I
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    .line 206
    .local v4, valSign:I
    const/4 p0, 0x1

    if-ne v3, p0, :cond_3b

    .line 207
    .end local p0
    const/4 p0, 0x0

    aget p0, v2, p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 208
    .local v0, a:J
    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    .line 209
    .end local p1
    .local p0, b:J
    div-long v2, v0, p0

    .line 210
    .end local v3           #valLen:I
    .local v2, quo:J
    rem-long/2addr v0, p0

    .line 211
    .local v0, rem:J
    if-eq v4, p2, :cond_6b

    .line 212
    neg-long p0, v2

    .line 214
    .end local v2           #quo:J
    .local p0, quo:J
    :goto_25
    if-gez v4, :cond_28

    .line 215
    neg-long v0, v0

    .line 217
    :cond_28
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/math/BigInteger;

    .end local p2
    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #quo:J
    aput-object p0, p2, v2

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    aput-object p1, p2, p0

    move-object p0, p2

    .line 231
    .end local v0           #rem:J
    :goto_3a
    return-object p0

    .line 220
    .local v2, valDigits:[I
    .restart local v3       #valLen:I
    .restart local p1
    .restart local p2
    :cond_3b
    move v0, v3

    .line 221
    .local v0, quotientLength:I
    if-ne v4, p2, :cond_68

    const/4 p0, 0x1

    move p2, p0

    .line 222
    .local p2, quotientSign:I
    :goto_40
    new-array p0, v0, [I

    .line 224
    .local p0, quotientDigits:[I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, p1}, Ljava/math/Division;->divideArrayByInt([I[III)I

    move-result p1

    .end local p1
    aput p1, v1, v5

    .line 226
    .local v1, remainderDigits:[I
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2, v0, p0}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 228
    .local p1, result0:Ljava/math/BigInteger;
    new-instance p0, Ljava/math/BigInteger;

    .end local p0           #quotientDigits:[I
    const/4 p2, 0x1

    invoke-direct {p0, v4, p2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 229
    .end local p2           #quotientSign:I
    .local p0, result1:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 230
    invoke-virtual {p0}, Ljava/math/BigInteger;->cutOffLeadingZeroes()V

    .line 231
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/math/BigInteger;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .end local v0           #quotientLength:I
    const/4 p1, 0x1

    aput-object p0, p2, p1

    .end local p1           #result0:Ljava/math/BigInteger;
    move-object p0, p2

    goto :goto_3a

    .line 221
    .end local v1           #remainderDigits:[I
    .end local p0           #result1:Ljava/math/BigInteger;
    .restart local v0       #quotientLength:I
    .local p1, divisor:I
    .local p2, divisorSign:I
    :cond_68
    const/4 p0, -0x1

    move p2, p0

    goto :goto_40

    .end local v3           #valLen:I
    .end local p1           #divisor:I
    .local v0, rem:J
    .local v2, quo:J
    .local p0, b:J
    :cond_6b
    move-wide p0, v2

    .end local v2           #quo:J
    .local p0, quo:J
    goto :goto_25
.end method

.method static divideArrayByInt([I[III)I
    .registers 14
    .parameter "dest"
    .parameter "src"
    .parameter "srcLength"
    .parameter "divisor"

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    .line 69
    .local v0, rem:J
    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 71
    .local v2, bLong:J
    const/4 v4, 0x1

    sub-int/2addr p2, v4

    .local p2, i:I
    :goto_b
    if-ltz p2, :cond_65

    .line 72
    const/16 v4, 0x20

    shl-long/2addr v0, v4

    aget v4, p1, p2

    .end local v0           #rem:J
    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long v8, v0, v4

    .line 74
    .local v8, temp:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_32

    .line 75
    div-long v0, v8, v2

    .line 76
    .local v0, quot:J
    rem-long v4, v8, v2

    .line 103
    .local v4, rem:J
    :goto_25
    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    long-to-int v0, v0

    aput v0, p0, p2

    .line 71
    .end local v0           #quot:J
    add-int/lit8 p2, p2, -0x1

    move-wide v0, v4

    .end local v4           #rem:J
    .local v0, rem:J
    goto :goto_b

    .line 82
    .end local v0           #rem:J
    :cond_32
    const/4 v0, 0x1

    ushr-long v0, v8, v0

    .line 83
    .local v0, aPos:J
    ushr-int/lit8 v4, p3, 0x1

    int-to-long v4, v4

    .line 84
    .local v4, bPos:J
    div-long v6, v0, v4

    .line 85
    .local v6, quot:J
    rem-long/2addr v0, v4

    .line 87
    .local v0, rem:J
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x1

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 88
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_67

    .line 90
    .end local v4           #bPos:J
    cmp-long v4, v6, v0

    if-gtz v4, :cond_4d

    .line 91
    sub-long/2addr v0, v6

    move-wide v4, v0

    .end local v0           #rem:J
    .local v4, rem:J
    move-wide v0, v6

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25

    .line 93
    .end local v4           #rem:J
    .local v0, rem:J
    .restart local v6       #quot:J
    :cond_4d
    sub-long v4, v6, v0

    cmp-long v4, v4, v2

    if-gtz v4, :cond_5b

    .line 94
    sub-long v4, v2, v6

    add-long/2addr v4, v0

    .line 95
    .end local v0           #rem:J
    .restart local v4       #rem:J
    const-wide/16 v0, 0x1

    sub-long v0, v6, v0

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25

    .line 97
    .end local v4           #rem:J
    .local v0, rem:J
    .restart local v6       #quot:J
    :cond_5b
    const/4 v4, 0x1

    shl-long v4, v2, v4

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 98
    .end local v0           #rem:J
    .restart local v4       #rem:J
    const-wide/16 v0, 0x2

    sub-long v0, v6, v0

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25

    .line 105
    .end local v4           #rem:J
    .end local v8           #temp:J
    .local v0, rem:J
    :cond_65
    long-to-int p0, v0

    .end local p0
    return p0

    .restart local v6       #quot:J
    .restart local v8       #temp:J
    .restart local p0
    :cond_67
    move-wide v4, v0

    .end local v0           #rem:J
    .restart local v4       #rem:J
    move-wide v0, v6

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25
.end method

.method static divideLongByInt(JI)J
    .registers 13
    .parameter "a"
    .parameter "b"

    .prologue
    .line 158
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    .line 160
    .local v2, bLong:J
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1e

    .line 161
    div-long v0, p0, v2

    .line 162
    .local v0, quot:J
    rem-long/2addr p0, v2

    .local p0, rem:J
    move-wide v8, p0

    .end local p0           #rem:J
    .local v8, rem:J
    move-wide p0, v0

    .end local v0           #quot:J
    .local p0, quot:J
    move-wide v0, v8

    .line 188
    .end local v8           #rem:J
    .end local p2
    .local v0, rem:J
    :goto_13
    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .end local v0           #rem:J
    .end local v2           #bLong:J
    .end local p0           #quot:J
    return-wide p0

    .line 168
    .restart local v2       #bLong:J
    .local p0, a:J
    .restart local p2
    :cond_1e
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    .line 169
    .local v0, aPos:J
    ushr-int/lit8 v4, p2, 0x1

    int-to-long v4, v4

    .line 170
    .local v4, bPos:J
    div-long v6, v0, v4

    .line 171
    .local v6, quot:J
    rem-long/2addr v0, v4

    .line 173
    .local v0, rem:J
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x1

    and-long/2addr p0, v4

    add-long/2addr p0, v0

    .line 174
    .end local v0           #rem:J
    .local p0, rem:J
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_51

    .line 175
    .end local v4           #bPos:J
    .end local p2
    cmp-long p2, v6, p0

    if-gtz p2, :cond_39

    .line 176
    sub-long/2addr p0, v6

    move-wide v0, p0

    .end local p0           #rem:J
    .restart local v0       #rem:J
    move-wide p0, v6

    .end local v6           #quot:J
    .local p0, quot:J
    goto :goto_13

    .line 178
    .end local v0           #rem:J
    .restart local v6       #quot:J
    .local p0, rem:J
    :cond_39
    sub-long v0, v6, p0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_47

    .line 179
    sub-long v0, v2, v6

    add-long/2addr v0, p0

    .line 180
    .end local p0           #rem:J
    .restart local v0       #rem:J
    const-wide/16 p0, 0x1

    sub-long p0, v6, p0

    .end local v6           #quot:J
    .local p0, quot:J
    goto :goto_13

    .line 182
    .end local v0           #rem:J
    .restart local v6       #quot:J
    .local p0, rem:J
    :cond_47
    const/4 p2, 0x1

    shl-long v0, v2, p2

    sub-long/2addr v0, v6

    add-long/2addr v0, p0

    .line 183
    .end local p0           #rem:J
    .restart local v0       #rem:J
    const-wide/16 p0, 0x2

    sub-long p0, v6, p0

    .end local v6           #quot:J
    .local p0, quot:J
    goto :goto_13

    .end local v0           #rem:J
    .restart local v6       #quot:J
    .local p0, rem:J
    :cond_51
    move-wide v0, p0

    .end local p0           #rem:J
    .restart local v0       #rem:J
    move-wide p0, v6

    .end local v6           #quot:J
    .local p0, quot:J
    goto :goto_13
.end method

.method static remainder(Ljava/math/BigInteger;I)I
    .registers 4
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 140
    const-string v0, "Division.remainder"

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->establishOldRepresentation(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v0, v1, p1}, Ljava/math/Division;->remainderArrayByInt([III)I

    move-result v0

    return v0
.end method

.method static remainderArrayByInt([III)I
    .registers 9
    .parameter "src"
    .parameter "srcLength"
    .parameter "divisor"

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    .line 122
    .local v0, result:J
    const/4 v2, 0x1

    sub-int/2addr p1, v2

    .local p1, i:I
    :goto_4
    if-ltz p1, :cond_1f

    .line 123
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    aget v2, p0, p1

    .end local v0           #result:J
    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 124
    .local v0, temp:J
    invoke-static {v0, v1, p2}, Ljava/math/Division;->divideLongByInt(JI)J

    move-result-wide v0

    .line 125
    .local v0, res:J
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    .line 122
    .local v0, result:J
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 127
    :cond_1f
    long-to-int p0, v0

    .end local p0
    return p0
.end method
