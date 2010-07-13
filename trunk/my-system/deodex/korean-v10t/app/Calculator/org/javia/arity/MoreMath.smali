.class Lorg/javia/arity/MoreMath;
.super Lorg/javia/arity/BaseMath;
.source "MoreMath.java"


# static fields
.field static final FACT:[D = null

.field static final GAMMA:[D = null

.field private static final LOG2E:D = 1.4426950408889634


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_14

    sput-object v0, Lorg/javia/arity/MoreMath;->GAMMA:[D

    .line 84
    const/16 v0, 0x16

    new-array v0, v0, [D

    fill-array-data v0, :array_50

    sput-object v0, Lorg/javia/arity/MoreMath;->FACT:[D

    return-void

    .line 54
    nop

    :array_14
    .array-data 0x8
        0xcet 0xact 0xc1t 0x87t 0xfft 0x93t 0x4ct 0x40t
        0x30t 0x89t 0x5t 0xf7t 0x89t 0xcct 0x4dt 0xc0t
        0xa1t 0x22t 0x3dt 0xa2t 0xaet 0x45t 0x2ct 0x40t
        0xe4t 0xbft 0x25t 0x16t 0x84t 0x7bt 0xdft 0xbft
        0x3at 0x18t 0x86t 0x47t 0xaft 0xd2t 0x1t 0x3ft
        0xbdt 0xe3t 0xc5t 0xb7t 0x4bt 0x64t 0x8t 0x3ft
        0xb7t 0x74t 0xe5t 0x9dt 0xcct 0xc9t 0x19t 0xbft
        0x6dt 0xe6t 0xd4t 0x9et 0x93t 0xb8t 0x24t 0x3ft
        0x36t 0xbet 0x2at 0xcdt 0x4dt 0x8ft 0x2bt 0xbft
        0x26t 0xe8t 0xe9t 0x18t 0x10t 0x80t 0x2ct 0x3ft
        0x40t 0x26t 0x95t 0xc9t 0x99t 0x89t 0x25t 0xbft
        0x55t 0x3dt 0x77t 0xbt 0x36t 0x21t 0x16t 0x3ft
        0x6t 0xe2t 0xd1t 0xb5t 0x8ct 0x76t 0xfbt 0xbet
        0x10t 0x98t 0xfct 0x4t 0xat 0xf4t 0xcet 0x3et
    .end array-data

    .line 84
    :array_50
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0xb0t 0xe3t 0x40t
        0x0t 0x0t 0x80t 0x75t 0x77t 0x7t 0xb3t 0x42t
        0x9at 0x7bt 0x7at 0x68t 0x52t 0x6ct 0xe0t 0x44t
        0xa4t 0x33t 0xaet 0xat 0xadt 0x56t 0x49t 0x47t
        0xfet 0x98t 0x70t 0x3t 0x5dt 0xddt 0xe1t 0x49t
        0xb6t 0x2ct 0xd7t 0x78t 0x9at 0xe6t 0x9et 0x4ct
        0x3t 0x40t 0x9at 0x35t 0x93t 0x26t 0x79t 0x4ft
        0x4at 0x84t 0x34t 0xeet 0x78t 0xe4t 0x6ft 0x52t
        0xb6t 0x95t 0x66t 0x79t 0x5t 0x57t 0x7bt 0x55t
        0xfft 0xabt 0xedt 0x94t 0x90t 0x61t 0x9ct 0x58t
        0x3et 0x74t 0x30t 0x4bt 0xct 0x55t 0xd0t 0x5bt
        0x47t 0x63t 0xbdt 0xd7t 0x8dt 0x63t 0x13t 0x5ft
        0x70t 0xat 0x76t 0xb1t 0xet 0x5bt 0x66t 0x62t
        0x3t 0xe5t 0xcft 0x97t 0xc1t 0xcat 0xc7t 0x65t
        0x16t 0xd9t 0xa9t 0x80t 0x63t 0x5ft 0x36t 0x69t
        0xe5t 0xe1t 0x40t 0xc1t 0xdft 0xe5t 0xb1t 0x6ct
        0x55t 0x8t 0x3bt 0x41t 0x85t 0x91t 0x37t 0x70t
        0x7et 0x70t 0xdbt 0xfat 0x85t 0xcet 0xc8t 0x73t
        0xa3t 0xd5t 0xeft 0x3at 0x90t 0x55t 0x64t 0x77t
        0xdet 0x8et 0x92t 0x3dt 0x5ft 0x5dt 0x9t 0x7bt
        0x43t 0x3at 0x9dt 0xa7t 0x2ft 0x93t 0xb7t 0x7et
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/javia/arity/BaseMath;-><init>()V

    return-void
.end method

.method public static final acosh(D)D
    .registers 8
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 28
    add-double v0, p0, p0

    mul-double v2, p0, p0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, p0

    div-double v2, v4, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final asinh(D)D
    .registers 8
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 24
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_f

    neg-double v0, p0

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v0

    neg-double v0, v0

    :goto_e
    return-wide v0

    :cond_f
    add-double v0, p0, p0

    mul-double v2, p0, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, p0

    div-double v2, v4, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v0

    goto :goto_e
.end method

.method public static final atanh(D)D
    .registers 10
    .parameter

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 32
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_f

    neg-double v0, p0

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v0

    neg-double v0, v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/high16 v0, 0x3fe0

    add-double v2, p0, p0

    sub-double v4, v6, p0

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_e
.end method

.method public static final combinations(DD)D
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x4065400000000000L

    const-wide/high16 v8, 0x3ff0

    const-wide/16 v1, 0x0

    .line 133
    cmpg-double v0, p0, v1

    if-ltz v0, :cond_11

    cmpg-double v0, p2, v1

    if-gez v0, :cond_14

    :cond_11
    const-wide/high16 v0, 0x7ff8

    .line 147
    :goto_13
    return-wide v0

    .line 134
    :cond_14
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1a

    move-wide v0, v1

    goto :goto_13

    .line 135
    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p0

    if-nez v0, :cond_67

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p2

    if-nez v0, :cond_67

    .line 136
    sub-double v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 137
    cmpg-double v2, p0, v4

    if-gtz v2, :cond_50

    const-wide/high16 v2, 0x4028

    cmpg-double v2, v2, v0

    if-gez v2, :cond_50

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_50

    .line 138
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    div-double v0, v2, v0

    goto :goto_13

    .line 140
    :cond_50
    sub-double v2, p0, v0

    move-wide v4, v8

    .line 141
    :goto_53
    const-wide/high16 v6, 0x3fe0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_65

    const-wide/high16 v6, 0x7ff0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_65

    .line 142
    add-double v6, v2, v0

    div-double/2addr v6, v0

    mul-double/2addr v4, v6

    .line 141
    sub-double/2addr v0, v8

    goto :goto_53

    :cond_65
    move-wide v0, v4

    .line 144
    goto :goto_13

    .line 147
    :cond_67
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    sub-double v2, p0, p2

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->exp(D)D

    move-result-wide v0

    goto :goto_13
.end method

.method public static final cos(D)D
    .registers 4
    .parameter

    .prologue
    .line 184
    const-wide v0, 0x3ff921fb54442d18L

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x0

    :goto_f
    return-wide v0

    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_f
.end method

.method public static final factorial(D)D
    .registers 11
    .parameter

    .prologue
    const-wide/high16 v5, 0x3ff0

    .line 110
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_b

    .line 111
    const-wide/high16 v0, 0x7ff8

    .line 129
    :goto_a
    return-wide v0

    .line 113
    :cond_b
    const-wide v0, 0x4065400000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_22

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p0

    if-nez v0, :cond_22

    .line 115
    double-to-int v0, p0

    .line 117
    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_5e

    .line 129
    :cond_22
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->exp(D)D

    move-result-wide v0

    goto :goto_a

    .line 118
    :pswitch_2b
    sub-double v1, p0, v5

    mul-double v3, p0, v1

    move-wide v7, v3

    move-wide v3, v1

    move-wide v1, v7

    .line 119
    :goto_32
    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 120
    :goto_34
    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 121
    :goto_36
    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 122
    :goto_38
    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 123
    :goto_3a
    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 124
    :goto_3c
    sget-object v3, Lorg/javia/arity/MoreMath;->FACT:[D

    shr-int/lit8 v0, v0, 0x3

    aget-wide v3, v3, v0

    mul-double v0, v3, v1

    goto :goto_a

    .line 125
    :pswitch_45
    sget-object v1, Lorg/javia/arity/MoreMath;->FACT:[D

    shr-int/lit8 v0, v0, 0x3

    aget-wide v0, v1, v0

    goto :goto_a

    :pswitch_4c
    move-wide v1, p0

    move-wide v3, p0

    goto :goto_32

    :pswitch_4f
    move-wide v1, p0

    move-wide v3, p0

    goto :goto_34

    :pswitch_52
    move-wide v1, p0

    move-wide v3, p0

    goto :goto_36

    :pswitch_55
    move-wide v1, p0

    move-wide v3, p0

    goto :goto_38

    :pswitch_58
    move-wide v1, p0

    move-wide v3, p0

    goto :goto_3a

    :pswitch_5b
    move-wide v1, p0

    goto :goto_3c

    .line 117
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_2b
    .end packed-switch
.end method

.method public static final gcd(DD)D
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 42
    :cond_18
    const-wide/high16 v0, 0x7ff8

    .line 51
    :goto_1a
    return-wide v0

    .line 44
    :cond_1b
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-wide v6, v2

    move-wide v2, v0

    move-wide v0, v6

    .line 46
    :goto_26
    const-wide v4, 0x430c6bf526340000L

    mul-double/2addr v4, v0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_35

    .line 48
    rem-double/2addr v2, v0

    move-wide v6, v2

    move-wide v2, v0

    move-wide v0, v6

    .line 50
    goto :goto_26

    :cond_35
    move-wide v0, v2

    .line 51
    goto :goto_1a
.end method

.method public static final intExp10(I)D
    .registers 3
    .parameter

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final intLog10(D)I
    .registers 4
    .parameter

    .prologue
    .line 193
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static final isPiMultiple(D)Z
    .registers 6
    .parameter

    .prologue
    .line 175
    const-wide v0, 0x400921fb54442d18L

    div-double v0, p0, v0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static final lgamma(D)D
    .registers 15
    .parameter

    .prologue
    .line 72
    const-wide v0, 0x4014f80000000000L

    add-double/2addr v0, p0

    .line 73
    const-wide v2, 0x3fefffffffffffe6L

    .line 74
    const/4 v4, 0x0

    move-wide v5, p0

    move-wide v11, v2

    move v2, v4

    move-wide v3, v11

    :goto_10
    sget-object v7, Lorg/javia/arity/MoreMath;->GAMMA:[D

    array-length v7, v7

    if-ge v2, v7, :cond_21

    .line 75
    sget-object v7, Lorg/javia/arity/MoreMath;->GAMMA:[D

    aget-wide v7, v7, v2

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v5, v9

    div-double/2addr v7, v5

    add-double/2addr v3, v7

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 78
    :cond_21
    const-wide v5, 0x3fed67f1c864beb5L

    invoke-static {v3, v4}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v2

    add-double/2addr v2, v5

    const-wide v4, 0x4012f80000000000L

    sub-double v4, v0, v4

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public static final log2(D)D
    .registers 6
    .parameter

    .prologue
    .line 170
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3ff71547652b82feL

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static final permutations(DD)D
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide v3, 0x4065400000000000L

    const-wide/high16 v8, 0x3ff0

    const-wide/16 v1, 0x0

    .line 152
    cmpg-double v0, p0, v1

    if-ltz v0, :cond_11

    cmpg-double v0, p2, v1

    if-gez v0, :cond_14

    :cond_11
    const-wide/high16 v0, 0x7ff8

    .line 165
    :goto_13
    return-wide v0

    .line 153
    :cond_14
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1a

    move-wide v0, v1

    goto :goto_13

    .line 154
    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p0

    if-nez v0, :cond_5a

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p2

    if-nez v0, :cond_5a

    .line 155
    cmpg-double v0, p0, v3

    if-gtz v0, :cond_44

    const-wide/high16 v0, 0x4024

    cmpg-double v0, v0, p2

    if-gez v0, :cond_44

    cmpg-double v0, p2, v3

    if-gtz v0, :cond_44

    .line 156
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    sub-double v2, p0, p2

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_13

    .line 158
    :cond_44
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    move-wide v2, p0

    move-wide v4, v8

    .line 159
    :goto_4b
    cmpl-double v6, v2, v0

    if-lez v6, :cond_58

    const-wide/high16 v6, 0x7ff0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_58

    .line 160
    mul-double/2addr v4, v2

    .line 159
    sub-double/2addr v2, v8

    goto :goto_4b

    :cond_58
    move-wide v0, v4

    .line 162
    goto :goto_13

    .line 165
    :cond_5a
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v0

    sub-double v2, p0, p2

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->exp(D)D

    move-result-wide v0

    goto :goto_13
.end method

.method public static final sin(D)D
    .registers 4
    .parameter

    .prologue
    .line 180
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_8
.end method

.method public static final tan(D)D
    .registers 4
    .parameter

    .prologue
    .line 188
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    goto :goto_8
.end method

.method public static final trunc(D)D
    .registers 4
    .parameter

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_b

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_a
.end method
