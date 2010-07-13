.class public final Lorg/apache/harmony/luni/util/NumberConverter;
.super Ljava/lang/Object;
.source "NumberConverter.java"


# static fields
.field private static final TEN_TO_THE:[J

.field private static final invLogOfTenBaseTwo:D


# instance fields
.field private firstK:I

.field private getCount:I

.field private setCount:I

.field private uArray:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    .line 31
    const-wide/high16 v3, 0x4000

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    sput-wide v3, Lorg/apache/harmony/luni/util/NumberConverter;->invLogOfTenBaseTwo:D

    .line 34
    const/16 v3, 0x14

    new-array v3, v3, [J

    sput-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    .line 37
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    aput-wide v5, v3, v4

    .line 38
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1e
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    array-length v3, v3

    if-ge v0, v3, :cond_36

    .line 39
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    sub-int v4, v0, v8

    aget-wide v1, v3, v4

    .line 40
    .local v1, previous:J
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    shl-long v4, v1, v8

    const/4 v6, 0x3

    shl-long v6, v1, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 42
    .end local v1           #previous:J
    :cond_36
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    return-void
.end method

.method private native bigIntDigitGeneratorInstImpl(JIZZI)V
.end method

.method public static convert(D)Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 49
    invoke-static {}, Lorg/apache/harmony/luni/util/NumberConverter;->getConverter()Lorg/apache/harmony/luni/util/NumberConverter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/harmony/luni/util/NumberConverter;->convertD(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(F)Ljava/lang/String;
    .registers 2
    .parameter "input"

    .prologue
    .line 53
    invoke-static {}, Lorg/apache/harmony/luni/util/NumberConverter;->getConverter()Lorg/apache/harmony/luni/util/NumberConverter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/harmony/luni/util/NumberConverter;->convertF(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private freeFormat()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x0

    const/16 v10, 0x30

    const/4 v9, -0x1

    .line 187
    const/16 v6, 0x19

    new-array v3, v6, [C

    .line 190
    .local v3, formattedDecimal:[C
    const/4 v1, 0x0

    .line 191
    .local v1, charPos:I
    iget v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 192
    .local v5, k:I
    if-gez v5, :cond_24

    .line 193
    aput-char v10, v3, v11

    .line 194
    const/4 v6, 0x1

    aput-char v12, v3, v6

    .line 195
    add-int/lit8 v1, v1, 0x2

    .line 196
    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    move v2, v1

    .end local v1           #charPos:I
    .local v2, charPos:I
    :goto_19
    if-gez v4, :cond_23

    .line 197
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    aput-char v10, v3, v2

    .line 196
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    goto :goto_19

    :cond_23
    move v1, v2

    .line 200
    .end local v2           #charPos:I
    .end local v4           #i:I
    .restart local v1       #charPos:I
    :cond_24
    iget-object v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v0, v6, v7

    .local v0, U:I
    move v2, v1

    .line 202
    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    :goto_2f
    if-eq v0, v9, :cond_5c

    .line 203
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    aput-char v6, v3, v2

    move v2, v1

    .line 207
    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    :cond_39
    :goto_39
    if-nez v5, :cond_68

    .line 208
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    aput-char v12, v3, v2

    .line 210
    :goto_3f
    add-int/lit8 v5, v5, -0x1

    .line 211
    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    iget v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    if-ge v6, v7, :cond_64

    iget-object v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v6, v6, v7

    move v0, v6

    .line 212
    :goto_52
    if-ne v0, v9, :cond_66

    if-ge v5, v9, :cond_66

    .line 213
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v11, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 204
    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    :cond_5c
    if-lt v5, v9, :cond_39

    .line 205
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    aput-char v10, v3, v2

    move v2, v1

    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    goto :goto_39

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    :cond_64
    move v0, v9

    .line 211
    goto :goto_52

    :cond_66
    move v2, v1

    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    goto :goto_2f

    :cond_68
    move v1, v2

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    goto :goto_3f
.end method

.method private freeFormatExponential()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 161
    const/16 v5, 0x19

    new-array v3, v5, [C

    .line 162
    .local v3, formattedDecimal:[C
    iget-object v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v8

    .line 163
    const/16 v5, 0x2e

    aput-char v5, v3, v9

    .line 166
    const/4 v0, 0x2

    .line 168
    .local v0, charPos:I
    iget v4, p0, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 169
    .local v4, k:I
    move v2, v4

    .line 171
    .local v2, expt:I
    :goto_1d
    add-int/lit8 v4, v4, -0x1

    .line 172
    iget v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    if-lt v5, v6, :cond_51

    .line 178
    sub-int v5, v2, v9

    if-ne v4, v5, :cond_30

    .line 179
    add-int/lit8 v1, v0, 0x1

    .end local v0           #charPos:I
    .local v1, charPos:I
    const/16 v5, 0x30

    aput-char v5, v3, v0

    move v0, v1

    .line 180
    .end local v1           #charPos:I
    .restart local v0       #charPos:I
    :cond_30
    add-int/lit8 v1, v0, 0x1

    .end local v0           #charPos:I
    .restart local v1       #charPos:I
    const/16 v5, 0x45

    aput-char v5, v3, v0

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v8, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 175
    .end local v1           #charPos:I
    .restart local v0       #charPos:I
    :cond_51
    add-int/lit8 v1, v0, 0x1

    .end local v0           #charPos:I
    .restart local v1       #charPos:I
    iget-object v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v0

    move v0, v1

    .end local v1           #charPos:I
    .restart local v0       #charPos:I
    goto :goto_1d
.end method

.method private static getConverter()Lorg/apache/harmony/luni/util/NumberConverter;
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/harmony/luni/util/NumberConverter;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/NumberConverter;-><init>()V

    return-object v0
.end method

.method private longDigitGenerator(JIZZI)V
    .registers 29
    .parameter "f"
    .parameter "e"
    .parameter "isDenormalized"
    .parameter "mantissaIsZero"
    .parameter "p"

    .prologue
    .line 222
    if-ltz p3, :cond_8f

    .line 223
    const-wide/16 v18, 0x1

    shl-long v2, v18, p3

    .line 224
    .local v2, M:J
    if-nez p5, :cond_88

    .line 225
    add-int/lit8 v18, p3, 0x1

    shl-long v4, p1, v18

    .line 226
    .local v4, R:J
    const-wide/16 v6, 0x2

    .line 242
    .local v6, S:J
    :goto_e
    add-int v18, p3, p6

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sget-wide v20, Lorg/apache/harmony/luni/util/NumberConverter;->invLogOfTenBaseTwo:D

    mul-double v18, v18, v20

    const-wide v20, 0x3ddb7cdfd9d7bdbbL

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v12, v0

    .line 244
    .local v12, k:I
    if-lez v12, :cond_b1

    .line 245
    sget-object v18, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    aget-wide v18, v18, v12

    mul-long v6, v6, v18

    .line 252
    :cond_34
    :goto_34
    add-long v18, v4, v2

    cmp-long v18, v18, v6

    if-lez v18, :cond_cc

    .line 253
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 260
    :goto_3f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    .line 263
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object v8, v0

    const/16 v18, 0x0

    aput-wide v6, v8, v18

    const/16 v18, 0x1

    const/16 v19, 0x1

    shl-long v19, v6, v19

    aput-wide v19, v8, v18

    const/16 v18, 0x2

    const/16 v19, 0x2

    shl-long v19, v6, v19

    aput-wide v19, v8, v18

    const/16 v18, 0x3

    const/16 v19, 0x3

    shl-long v19, v6, v19

    aput-wide v19, v8, v18

    .line 269
    .local v8, Si:[J
    :goto_70
    const/4 v9, 0x0

    .line 271
    .local v9, U:I
    const/4 v11, 0x3

    .local v11, i:I
    :goto_72
    if-ltz v11, :cond_e0

    .line 272
    aget-wide v18, v8, v11

    sub-long v14, v4, v18

    .line 273
    .local v14, remainder:J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-ltz v18, :cond_85

    .line 274
    move-wide v4, v14

    .line 275
    const/16 v18, 0x1

    shl-int v18, v18, v11

    add-int v9, v9, v18

    .line 271
    :cond_85
    add-int/lit8 v11, v11, -0x1

    goto :goto_72

    .line 228
    .end local v4           #R:J
    .end local v6           #S:J
    .end local v8           #Si:[J
    .end local v9           #U:I
    .end local v11           #i:I
    .end local v12           #k:I
    .end local v14           #remainder:J
    :cond_88
    add-int/lit8 v18, p3, 0x2

    shl-long v4, p1, v18

    .line 229
    .restart local v4       #R:J
    const-wide/16 v6, 0x4

    .restart local v6       #S:J
    goto :goto_e

    .line 232
    .end local v2           #M:J
    .end local v4           #R:J
    .end local v6           #S:J
    :cond_8f
    const-wide/16 v2, 0x1

    .line 233
    .restart local v2       #M:J
    if-nez p4, :cond_95

    if-nez p5, :cond_a3

    .line 234
    :cond_95
    const/16 v18, 0x1

    shl-long v4, p1, v18

    .line 235
    .restart local v4       #R:J
    const-wide/16 v18, 0x1

    const/16 v20, 0x1

    sub-int v20, v20, p3

    shl-long v6, v18, v20

    .restart local v6       #S:J
    goto/16 :goto_e

    .line 237
    .end local v4           #R:J
    .end local v6           #S:J
    :cond_a3
    const/16 v18, 0x2

    shl-long v4, p1, v18

    .line 238
    .restart local v4       #R:J
    const-wide/16 v18, 0x1

    const/16 v20, 0x2

    sub-int v20, v20, p3

    shl-long v6, v18, v20

    .restart local v6       #S:J
    goto/16 :goto_e

    .line 246
    .restart local v12       #k:I
    :cond_b1
    if-gez v12, :cond_34

    .line 247
    sget-object v18, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    move v0, v12

    neg-int v0, v0

    move/from16 v19, v0

    aget-wide v16, v18, v19

    .line 248
    .local v16, scale:J
    mul-long v4, v4, v16

    .line 249
    const-wide/16 v18, 0x1

    cmp-long v18, v2, v18

    if-nez v18, :cond_c7

    move-wide/from16 v2, v16

    :goto_c5
    goto/16 :goto_34

    :cond_c7
    mul-long v18, v2, v16

    move-wide/from16 v2, v18

    goto :goto_c5

    .line 255
    .end local v16           #scale:J
    :cond_cc
    const/16 v18, 0x1

    sub-int v18, v12, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 256
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    .line 257
    const-wide/16 v18, 0xa

    mul-long v2, v2, v18

    goto/16 :goto_3f

    .line 279
    .restart local v8       #Si:[J
    .restart local v9       #U:I
    .restart local v11       #i:I
    :cond_e0
    cmp-long v18, v4, v2

    if-gez v18, :cond_111

    const/16 v18, 0x1

    move/from16 v13, v18

    .line 280
    .local v13, low:Z
    :goto_e8
    add-long v18, v4, v2

    cmp-long v18, v18, v6

    if-lez v18, :cond_116

    const/16 v18, 0x1

    move/from16 v10, v18

    .line 282
    .local v10, high:Z
    :goto_f2
    if-nez v13, :cond_f6

    if-eqz v10, :cond_11b

    .line 289
    :cond_f6
    if-eqz v13, :cond_13b

    if-nez v10, :cond_13b

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    aput v9, v18, v19

    .line 297
    :goto_110
    return-void

    .line 279
    .end local v10           #high:Z
    .end local v13           #low:Z
    :cond_111
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_e8

    .line 280
    .restart local v13       #low:Z
    :cond_116
    const/16 v18, 0x0

    move/from16 v10, v18

    goto :goto_f2

    .line 285
    .restart local v10       #high:Z
    :cond_11b
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    .line 286
    const-wide/16 v18, 0xa

    mul-long v2, v2, v18

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    aput v9, v18, v19

    goto/16 :goto_70

    .line 291
    :cond_13b
    if-eqz v10, :cond_158

    if-nez v13, :cond_158

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    add-int/lit8 v20, v9, 0x1

    aput v20, v18, v19

    goto :goto_110

    .line 293
    :cond_158
    const/16 v18, 0x1

    shl-long v18, v4, v18

    cmp-long v18, v18, v6

    if-gez v18, :cond_177

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    aput v9, v18, v19

    goto :goto_110

    .line 296
    :cond_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    add-int/lit8 v20, v9, 0x1

    aput v20, v18, v19

    goto :goto_110
.end method


# virtual methods
.method public convertD(D)Ljava/lang/String;
    .registers 29
    .parameter "inputNumber"

    .prologue
    .line 57
    const/16 v18, 0x433

    .line 58
    .local v18, p:I
    const-wide/high16 v19, -0x8000

    .line 60
    .local v19, signMask:J
    const-wide/high16 v10, 0x7ff0

    .line 61
    .local v10, eMask:J
    const-wide v12, 0xfffffffffffffL

    .line 64
    .local v12, fMask:J
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v16

    .line 66
    .local v16, inputNumberBits:J
    and-long v22, v16, v19

    const-wide/16 v24, 0x0

    cmp-long v2, v22, v24

    if-nez v2, :cond_4f

    const-string v2, ""

    move-object/from16 v21, v2

    .line 68
    .local v21, signString:Ljava/lang/String;
    :goto_1b
    and-long v22, v16, v10

    const/16 v2, 0x34

    shr-long v22, v22, v2

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v9, v0

    .line 70
    .local v9, e:I
    and-long v3, v16, v12

    .line 71
    .local v3, f:J
    const-wide/16 v22, 0x0

    cmp-long v2, v3, v22

    if-nez v2, :cond_54

    const/4 v2, 0x1

    move v7, v2

    .line 72
    .local v7, mantissaIsZero:Z
    :goto_2f
    const/4 v5, 0x0

    .local v5, pow:I
    const/16 v8, 0x34

    .line 74
    .local v8, numBits:I
    const/16 v2, 0x7ff

    if-ne v9, v2, :cond_5a

    .line 75
    if-eqz v7, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Infinity"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    :goto_4e
    return-object v2

    .line 66
    .end local v3           #f:J
    .end local v5           #pow:I
    .end local v7           #mantissaIsZero:Z
    .end local v8           #numBits:I
    .end local v9           #e:I
    .end local v21           #signString:Ljava/lang/String;
    :cond_4f
    const-string v2, "-"

    move-object/from16 v21, v2

    goto :goto_1b

    .line 71
    .restart local v3       #f:J
    .restart local v9       #e:I
    .restart local v21       #signString:Ljava/lang/String;
    :cond_54
    const/4 v2, 0x0

    move v7, v2

    goto :goto_2f

    .line 75
    .restart local v5       #pow:I
    .restart local v7       #mantissaIsZero:Z
    .restart local v8       #numBits:I
    :cond_57
    const-string v2, "NaN"

    goto :goto_4e

    .line 76
    :cond_5a
    if-nez v9, :cond_a5

    .line 77
    if-eqz v7, :cond_75

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "0.0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    .line 79
    :cond_75
    const-wide/16 v22, 0x1

    cmp-long v2, v3, v22

    if-nez v2, :cond_92

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "4.9E-324"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    .line 83
    :cond_92
    const/4 v2, 0x1

    sub-int v5, v2, v18

    .line 84
    move-wide v14, v3

    .line 85
    .local v14, ff:J
    :goto_96
    const-wide/high16 v22, 0x10

    and-long v22, v22, v14

    const-wide/16 v24, 0x0

    cmp-long v2, v22, v24

    if-nez v2, :cond_ab

    .line 86
    const/4 v2, 0x1

    shl-long/2addr v14, v2

    .line 87
    add-int/lit8 v8, v8, -0x1

    goto :goto_96

    .line 92
    .end local v14           #ff:J
    :cond_a5
    const-wide/high16 v22, 0x10

    or-long v3, v3, v22

    .line 93
    sub-int v5, v9, v18

    .line 96
    :cond_ab
    const/16 v2, -0x3b

    if-ge v2, v5, :cond_b2

    const/4 v2, 0x6

    if-lt v5, v2, :cond_b8

    :cond_b2
    const/16 v2, -0x3b

    if-ne v5, v2, :cond_102

    if-nez v7, :cond_102

    .line 97
    :cond_b8
    if-nez v9, :cond_ff

    const/4 v2, 0x1

    move v6, v2

    :goto_bc
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/luni/util/NumberConverter;->longDigitGenerator(JIZZI)V

    .line 102
    :goto_c1
    const-wide v22, 0x416312d000000000L

    cmpl-double v2, p1, v22

    if-gez v2, :cond_e5

    const-wide v22, -0x3e9ced3000000000L

    cmpg-double v2, p1, v22

    if-lez v2, :cond_e5

    const-wide v22, -0x40af9db22d0e5604L

    cmpl-double v2, p1, v22

    if-lez v2, :cond_10f

    const-wide v22, 0x3f50624dd2f1a9fcL

    cmpg-double v2, p1, v22

    if-gez v2, :cond_10f

    .line 104
    :cond_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormatExponential()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4e

    .line 97
    :cond_ff
    const/4 v2, 0x0

    move v6, v2

    goto :goto_bc

    .line 99
    :cond_102
    if-nez v9, :cond_10c

    const/4 v2, 0x1

    move v6, v2

    :goto_106
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/luni/util/NumberConverter;->bigIntDigitGeneratorInstImpl(JIZZI)V

    goto :goto_c1

    :cond_10c
    const/4 v2, 0x0

    move v6, v2

    goto :goto_106

    .line 106
    :cond_10f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4e
.end method

.method public convertF(F)Ljava/lang/String;
    .registers 18
    .parameter "inputNumber"

    .prologue
    .line 110
    const/16 v13, 0x96

    .line 111
    .local v13, p:I
    const/high16 v14, -0x8000

    .line 112
    .local v14, signMask:I
    const/high16 v8, 0x7f80

    .line 113
    .local v8, eMask:I
    const v10, 0x7fffff

    .line 115
    .local v10, fMask:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v12

    .line 117
    .local v12, inputNumberBits:I
    and-int v0, v12, v14

    if-nez v0, :cond_3b

    const-string v0, ""

    move-object v15, v0

    .line 119
    .local v15, signString:Ljava/lang/String;
    :goto_14
    and-int v0, v12, v8

    shr-int/lit8 v7, v0, 0x17

    .line 121
    .local v7, e:I
    and-int v9, v12, v10

    .line 122
    .local v9, f:I
    if-nez v9, :cond_3f

    const/4 v0, 0x1

    move v5, v0

    .line 123
    .local v5, mantissaIsZero:Z
    :goto_1e
    const/4 v3, 0x0

    .local v3, pow:I
    const/16 v6, 0x17

    .line 125
    .local v6, numBits:I
    const/16 v0, 0xff

    if-ne v7, v0, :cond_45

    .line 126
    if-eqz v5, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_3a
    return-object v0

    .line 117
    .end local v3           #pow:I
    .end local v5           #mantissaIsZero:Z
    .end local v6           #numBits:I
    .end local v7           #e:I
    .end local v9           #f:I
    .end local v15           #signString:Ljava/lang/String;
    :cond_3b
    const-string v0, "-"

    move-object v15, v0

    goto :goto_14

    .line 122
    .restart local v7       #e:I
    .restart local v9       #f:I
    .restart local v15       #signString:Ljava/lang/String;
    :cond_3f
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1e

    .line 126
    .restart local v3       #pow:I
    .restart local v5       #mantissaIsZero:Z
    .restart local v6       #numBits:I
    :cond_42
    const-string v0, "NaN"

    goto :goto_3a

    .line 127
    :cond_45
    if-nez v7, :cond_73

    .line 128
    if-eqz v5, :cond_5d

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 130
    :cond_5d
    const/4 v0, 0x1

    sub-int v3, v0, v13

    .line 131
    const/16 v0, 0x8

    if-ge v9, v0, :cond_68

    .line 132
    shl-int/lit8 v9, v9, 0x2

    .line 133
    add-int/lit8 v3, v3, -0x2

    .line 135
    :cond_68
    move v11, v9

    .line 136
    .local v11, ff:I
    :goto_69
    const/high16 v0, 0x80

    and-int/2addr v0, v11

    if-nez v0, :cond_78

    .line 137
    shl-int/lit8 v11, v11, 0x1

    .line 138
    add-int/lit8 v6, v6, -0x1

    goto :goto_69

    .line 143
    .end local v11           #ff:I
    :cond_73
    const/high16 v0, 0x80

    or-int/2addr v9, v0

    .line 144
    sub-int v3, v7, v13

    .line 147
    :cond_78
    const/16 v0, -0x3b

    if-ge v0, v3, :cond_80

    const/16 v0, 0x23

    if-lt v3, v0, :cond_86

    :cond_80
    const/16 v0, -0x3b

    if-ne v3, v0, :cond_c6

    if-nez v5, :cond_c6

    .line 148
    :cond_86
    int-to-long v1, v9

    if-nez v7, :cond_c3

    const/4 v0, 0x1

    move v4, v0

    :goto_8b
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/luni/util/NumberConverter;->longDigitGenerator(JIZZI)V

    .line 152
    :goto_90
    const v0, 0x4b189680

    cmpl-float v0, p1, v0

    if-gez v0, :cond_ac

    const v0, -0x34e76980

    cmpg-float v0, p1, v0

    if-lez v0, :cond_ac

    const v0, -0x457ced91

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d4

    const v0, 0x3a83126f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d4

    .line 154
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormatExponential()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 148
    :cond_c3
    const/4 v0, 0x0

    move v4, v0

    goto :goto_8b

    .line 150
    :cond_c6
    int-to-long v1, v9

    if-nez v7, :cond_d1

    const/4 v0, 0x1

    move v4, v0

    :goto_cb
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/luni/util/NumberConverter;->bigIntDigitGeneratorInstImpl(JIZZI)V

    goto :goto_90

    :cond_d1
    const/4 v0, 0x0

    move v4, v0

    goto :goto_cb

    .line 156
    :cond_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a
.end method
