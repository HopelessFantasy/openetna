.class Ljava/math/Multiplication;
.super Ljava/lang/Object;
.source "Multiplication.java"


# static fields
.field static final bigFivePows:[Ljava/math/BigInteger;

.field static final bigTenPows:[Ljava/math/BigInteger;

.field static final fivePows:[I

.field static final tenPows:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v4, 0x20

    const/4 v6, 0x1

    .line 45
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    sput-object v3, Ljava/math/Multiplication;->tenPows:[I

    .line 53
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_80

    sput-object v3, Ljava/math/Multiplication;->fivePows:[I

    .line 62
    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    .line 68
    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    .line 74
    const-wide/16 v0, 0x1

    .line 76
    .local v0, fivePow:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    const/16 v3, 0x12

    if-gt v2, v3, :cond_3c

    .line 77
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 78
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    shl-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 79
    const-wide/16 v3, 0x5

    mul-long/2addr v0, v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 81
    :cond_3c
    :goto_3c
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v2, v3, :cond_66

    .line 82
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sub-int v5, v2, v6

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 83
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sub-int v5, v2, v6

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 85
    :cond_66
    return-void

    .line 45
    nop

    :array_68
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x40t 0x42t 0xft 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0xe1t 0xf5t 0x5t
        0x0t 0xcat 0x9at 0x3bt
    .end array-data

    .line 53
    :array_80
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t
        0x35t 0xct 0x0t 0x0t
        0x9t 0x3dt 0x0t 0x0t
        0x2dt 0x31t 0x1t 0x0t
        0xe1t 0xf5t 0x5t 0x0t
        0x65t 0xcdt 0x1dt 0x0t
        0xf9t 0x2t 0x95t 0x0t
        0xddt 0xet 0xe9t 0x2t
        0x51t 0x4at 0x8dt 0xet
        0x95t 0x73t 0xc2t 0x48t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "exp"

    .prologue
    .line 192
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    array-length v0, v0

    if-ge p1, v0, :cond_e

    .line 193
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    aget v0, v0, p1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 197
    :goto_d
    return-object v0

    .line 194
    :cond_e
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge p1, v0, :cond_1c

    .line 195
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_d

    .line 197
    :cond_1c
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_d
.end method

.method static multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "factor"

    .prologue
    .line 99
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 100
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->multiplyByPositiveInt(I)V

    .line 101
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method static multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .registers 5
    .parameter "val"
    .parameter "exp"

    .prologue
    .line 114
    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    long-to-int v1, p1

    aget v0, v0, v1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {p1, p2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_11
.end method

.method static powerOf10(J)Ljava/math/BigInteger;
    .registers 9
    .parameter "exp"

    .prologue
    .line 128
    long-to-int v2, p0

    .line 130
    .local v2, intExp:I
    sget-object v0, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    .line 132
    sget-object p0, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    .end local p0
    aget-object p0, p0, v2

    move-object p1, p0

    move p0, v2

    .line 180
    .end local v2           #intExp:I
    .local p0, intExp:I
    :goto_f
    return-object p1

    .line 133
    .restart local v2       #intExp:I
    .local p0, exp:J
    :cond_10
    const-wide/16 v0, 0x32

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1f

    .line 135
    sget-object p0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .end local p0           #exp:J
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    move-object p1, p0

    move p0, v2

    .end local v2           #intExp:I
    .local p0, intExp:I
    goto :goto_f

    .line 136
    .restart local v2       #intExp:I
    .local p0, exp:J
    :cond_1f
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gtz v0, :cond_35

    .line 138
    sget-object p0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    .end local p0           #exp:J
    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    move-object p1, p0

    move p0, v2

    .end local v2           #intExp:I
    .local p0, intExp:I
    goto :goto_f

    .line 145
    .restart local v2       #intExp:I
    .local p0, exp:J
    :cond_35
    const-wide/16 v0, 0x1

    long-to-double v3, p0

    const-wide v5, 0x40034413509f79ffL

    div-double/2addr v3, v5

    double-to-long v3, v3

    add-long/2addr v0, v3

    .line 147
    .local v0, byteArraySize:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_58

    .line 149
    .end local v0           #byteArraySize:J
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .end local p0           #exp:J
    const-string p1, "math.01"

    invoke-static {p1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    .restart local p0       #exp:J
    :cond_58
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_6f

    .line 153
    sget-object p0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    .end local p0           #exp:J
    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    move-object p1, p0

    move p0, v2

    .end local v2           #intExp:I
    .local p0, intExp:I
    goto :goto_f

    .line 162
    .restart local v2       #intExp:I
    .local p0, exp:J
    :cond_6f
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 163
    .local v3, powerOfFive:Ljava/math/BigInteger;
    move-object v4, v3

    .line 164
    .local v4, res:Ljava/math/BigInteger;
    const-wide/32 v0, 0x7fffffff

    sub-long v1, p0, v0

    .line 166
    .end local v2           #intExp:I
    .local v1, longExp:J
    const-wide/32 v5, 0x7fffffff

    rem-long v5, p0, v5

    long-to-int v0, v5

    .line 167
    .local v0, intExp:I
    :goto_87
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v1, v5

    if-lez v5, :cond_97

    .line 168
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 169
    const-wide/32 v5, 0x7fffffff

    sub-long/2addr v1, v5

    goto :goto_87

    .line 171
    :cond_97
    sget-object v1, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    .end local v1           #longExp:J
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 173
    .end local v4           #res:Ljava/math/BigInteger;
    .local v1, res:Ljava/math/BigInteger;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 174
    const-wide/32 v2, 0x7fffffff

    sub-long/2addr p0, v2

    .line 175
    .local p0, longExp:J
    :goto_af
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p0, v2

    if-lez v2, :cond_c2

    .line 176
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 177
    const-wide/32 v2, 0x7fffffff

    sub-long/2addr p0, v2

    goto :goto_af

    .line 179
    :cond_c2
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    .end local v1           #res:Ljava/math/BigInteger;
    .local p0, res:Ljava/math/BigInteger;
    move-object p1, p0

    move p0, v0

    .line 180
    .end local v0           #intExp:I
    .local p0, intExp:I
    goto/16 :goto_f
.end method
