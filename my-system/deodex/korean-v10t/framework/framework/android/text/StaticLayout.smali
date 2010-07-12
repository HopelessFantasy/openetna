.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_MASK:I = -0x40000000

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final FIRST_CJK:C = '\u2e80'

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mChdirs:[B

.field private mChs:[C

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mTopPadding:I

.field private mWidths:[F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 59
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 29
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 69
    if-nez p10, :cond_a3

    move-object/from16 v3, p1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1593
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 84
    if-eqz p10, :cond_c0

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Layout$Ellipsizer;

    .line 87
    .local v16, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 88
    move/from16 v0, p11

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 89
    move-object/from16 v0, p10

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 90
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 92
    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 98
    .end local v16           #e:Landroid/text/Layout$Ellipsizer;
    :goto_43
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 102
    if-eqz p10, :cond_ce

    const/4 v2, 0x1

    move v13, v2

    :goto_6b
    move/from16 v0, p11

    int-to-float v0, v0

    move v14, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v2 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 106
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 107
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 108
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 109
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 110
    return-void

    .line 69
    :cond_a3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_b5

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_b5
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    .line 94
    :cond_c0
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 95
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_43

    .line 102
    :cond_ce
    const/4 v2, 0x0

    move v13, v2

    goto :goto_6b
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)V
    .registers 25
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "isHint"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1593
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 137
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 138
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 140
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/StaticLayout;->mIsHint:Z

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 145
    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p7

    invoke-virtual/range {v2 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 149
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 150
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 151
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 152
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 153
    return-void
.end method

.method constructor <init>(Z)V
    .registers 9
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 113
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1593
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 116
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 117
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 119
    return-void
.end method

.method private calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .registers 29
    .parameter "linestart"
    .parameter "lineend"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1401
    sub-int v8, p2, p1

    .line 1403
    .local v8, len:I
    cmpg-float v15, p9, p6

    if-gtz v15, :cond_2d

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1477
    :goto_2c
    return-void

    .line 1410
    :cond_2d
    const-string v15, "\u2026"

    move-object/from16 v0, p10

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1413
    .local v4, ellipsiswid:F
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_7c

    .line 1414
    const/4 v13, 0x0

    .line 1417
    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_3f
    if-ltz v5, :cond_53

    .line 1418
    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1420
    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_78

    .line 1427
    .end local v14           #w:F
    :cond_53
    const/4 v3, 0x0

    .line 1428
    .local v3, ellipsisStart:I
    move v2, v5

    .line 1475
    .end local v5           #i:I
    .end local v13           #sum:F
    .local v2, ellipsisCount:I
    :goto_55
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    aput v3, v15, v16

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    aput v2, v15, v16

    goto :goto_2c

    .line 1424
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v5       #i:I
    .restart local v13       #sum:F
    .restart local v14       #w:F
    :cond_78
    add-float/2addr v13, v14

    .line 1417
    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    .line 1429
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_7c
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-eq v0, v1, :cond_8a

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_a5

    .line 1430
    :cond_8a
    const/4 v13, 0x0

    .line 1433
    .restart local v13       #sum:F
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_8c
    if-ge v5, v8, :cond_9d

    .line 1434
    add-int v15, v5, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1436
    .restart local v14       #w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_a1

    .line 1443
    .end local v14           #w:F
    :cond_9d
    move v3, v5

    .line 1444
    .restart local v3       #ellipsisStart:I
    sub-int v2, v8, v5

    .line 1445
    .restart local v2       #ellipsisCount:I
    goto :goto_55

    .line 1440
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v14       #w:F
    :cond_a1
    add-float/2addr v13, v14

    .line 1433
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 1446
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_a5
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .line 1447
    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .line 1449
    .local v11, right:I
    sub-float v15, p6, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .line 1450
    .local v10, ravail:F
    move v11, v8

    :goto_b0
    if-ltz v11, :cond_c3

    .line 1451
    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1453
    .restart local v14       #w:F
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_dd

    .line 1460
    .end local v14           #w:F
    :cond_c3
    sub-float v15, p6, v4

    sub-float v6, v15, v12

    .line 1461
    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_c8
    if-ge v7, v11, :cond_d8

    .line 1462
    add-int v15, v7, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1464
    .restart local v14       #w:F
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_e1

    .line 1471
    .end local v14           #w:F
    :cond_d8
    move v3, v7

    .line 1472
    .restart local v3       #ellipsisStart:I
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I
    goto/16 :goto_55

    .line 1457
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .end local v6           #lavail:F
    .restart local v14       #w:F
    :cond_dd
    add-float/2addr v12, v14

    .line 1450
    add-int/lit8 v11, v11, -0x1

    goto :goto_b0

    .line 1468
    .restart local v6       #lavail:F
    :cond_e1
    add-float/2addr v9, v14

    .line 1461
    add-int/lit8 v7, v7, 0x1

    goto :goto_c8
.end method

.method private static getFit(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIF)I
    .registers 16
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "wid"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1228
    add-int/lit8 v8, p4, 0x1

    .local v8, high:I
    sub-int v9, p3, v6

    .line 1230
    .local v9, low:I
    :goto_6
    sub-int v0, v8, v9

    if-le v0, v6, :cond_1f

    .line 1231
    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .local v4, guess:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    .line 1233
    invoke-static/range {v0 .. v7}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_1d

    .line 1235
    move v8, v4

    goto :goto_6

    .line 1237
    :cond_1d
    move v9, v4

    goto :goto_6

    .line 1240
    .end local v4           #guess:I
    :cond_1f
    if-ge v9, p3, :cond_23

    move v0, p3

    .line 1243
    :goto_22
    return v0

    :cond_23
    move v0, v9

    goto :goto_22
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1131
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_c

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_c

    move v0, v1

    .line 1208
    :goto_b
    return v0

    .line 1134
    :cond_c
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_12

    move v0, v1

    .line 1135
    goto :goto_b

    .line 1137
    :cond_12
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_23

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_23

    .line 1138
    if-nez p1, :cond_1f

    .line 1139
    sparse-switch p0, :sswitch_data_88

    :cond_1f
    move v0, v1

    .line 1159
    goto :goto_b

    :sswitch_21
    move v0, v2

    .line 1156
    goto :goto_b

    .line 1161
    :cond_23
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_34

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_34

    .line 1162
    if-nez p1, :cond_30

    .line 1163
    sparse-switch p0, :sswitch_data_ca

    :cond_30
    move v0, v1

    .line 1184
    goto :goto_b

    :sswitch_32
    move v0, v2

    .line 1181
    goto :goto_b

    .line 1186
    :cond_34
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_3e

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_3e

    move v0, v1

    .line 1187
    goto :goto_b

    .line 1189
    :cond_3e
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_49

    const v0, 0x9fbb

    if-gt p0, v0, :cond_49

    move v0, v1

    .line 1190
    goto :goto_b

    .line 1192
    :cond_49
    const v0, 0xf900

    if-lt p0, v0, :cond_55

    const v0, 0xfad9

    if-gt p0, v0, :cond_55

    move v0, v1

    .line 1193
    goto :goto_b

    .line 1195
    :cond_55
    const v0, 0xa000

    if-lt p0, v0, :cond_61

    const v0, 0xa48f

    if-gt p0, v0, :cond_61

    move v0, v1

    .line 1196
    goto :goto_b

    .line 1198
    :cond_61
    const v0, 0xa490

    if-lt p0, v0, :cond_6d

    const v0, 0xa4cf

    if-gt p0, v0, :cond_6d

    move v0, v1

    .line 1199
    goto :goto_b

    .line 1201
    :cond_6d
    const v0, 0xfe62

    if-lt p0, v0, :cond_79

    const v0, 0xfe66

    if-gt p0, v0, :cond_79

    move v0, v1

    .line 1202
    goto :goto_b

    .line 1204
    :cond_79
    const v0, 0xff10

    if-lt p0, v0, :cond_85

    const v0, 0xff19

    if-gt p0, v0, :cond_85

    move v0, v1

    .line 1205
    goto :goto_b

    :cond_85
    move v0, v2

    .line 1208
    goto :goto_b

    .line 1139
    nop

    :sswitch_data_88
    .sparse-switch
        0x3041 -> :sswitch_21
        0x3043 -> :sswitch_21
        0x3045 -> :sswitch_21
        0x3047 -> :sswitch_21
        0x3049 -> :sswitch_21
        0x3063 -> :sswitch_21
        0x3083 -> :sswitch_21
        0x3085 -> :sswitch_21
        0x3087 -> :sswitch_21
        0x308e -> :sswitch_21
        0x3095 -> :sswitch_21
        0x3096 -> :sswitch_21
        0x309b -> :sswitch_21
        0x309c -> :sswitch_21
        0x309d -> :sswitch_21
        0x309e -> :sswitch_21
    .end sparse-switch

    .line 1163
    :sswitch_data_ca
    .sparse-switch
        0x30a0 -> :sswitch_32
        0x30a1 -> :sswitch_32
        0x30a3 -> :sswitch_32
        0x30a5 -> :sswitch_32
        0x30a7 -> :sswitch_32
        0x30a9 -> :sswitch_32
        0x30c3 -> :sswitch_32
        0x30e3 -> :sswitch_32
        0x30e5 -> :sswitch_32
        0x30e7 -> :sswitch_32
        0x30ee -> :sswitch_32
        0x30f5 -> :sswitch_32
        0x30f6 -> :sswitch_32
        0x30fb -> :sswitch_32
        0x30fc -> :sswitch_32
        0x30fd -> :sswitch_32
        0x30fe -> :sswitch_32
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .registers 61
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseht"
    .parameter "choosehtv"
    .parameter "fm"
    .parameter "tab"
    .parameter "needMultiply"
    .parameter "pstart"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "last"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "ellipsize"
    .parameter "ellipsiswidth"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v13, v0

    .line 1258
    .local v13, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v29, v13, v5

    .line 1259
    .local v29, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v29

    add-int/lit8 v30, v5, 0x1

    .line 1260
    .local v30, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v27, v0

    .line 1264
    .local v27, lines:[I
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move/from16 v0, v30

    move v1, v5

    if-lt v0, v1, :cond_6a

    .line 1265
    add-int/lit8 v5, v30, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v28

    .line 1266
    .local v28, nlen:I
    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1267
    .local v20, grow:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v27

    move v1, v5

    move-object/from16 v2, v20

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 1269
    move-object/from16 v27, v20

    .line 1271
    move/from16 v0, v28

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v21, v0

    .line 1272
    .local v21, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v8, v0

    array-length v8, v8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v21

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1277
    .end local v20           #grow:[I
    .end local v21           #grow2:[Landroid/text/Layout$Directions;
    .end local v28           #nlen:I
    :cond_6a
    if-eqz p11, :cond_d7

    .line 1278
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1279
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1280
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1281
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1283
    const/16 v23, 0x0

    .local v23, i:I
    :goto_86
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_bf

    .line 1284
    aget-object v5, p11, v23

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_ad

    .line 1285
    aget-object v5, p11, v23

    check-cast v5, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v9, p12, v23

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p29

    invoke-interface/range {v5 .. v12}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1283
    :goto_aa
    add-int/lit8 v23, v23, 0x1

    goto :goto_86

    .line 1289
    :cond_ad
    aget-object v5, p11, v23

    aget v9, p12, v23

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_aa

    .line 1293
    :cond_bf
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1294
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1295
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1296
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1299
    .end local v23           #i:I
    :cond_d7
    if-nez v13, :cond_e6

    .line 1300
    if-eqz p22, :cond_e2

    .line 1301
    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1304
    :cond_e2
    if-eqz p21, :cond_e6

    .line 1305
    move/from16 p4, p6

    .line 1308
    :cond_e6
    if-eqz p20, :cond_f5

    .line 1309
    if-eqz p22, :cond_f1

    .line 1310
    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1313
    :cond_f1
    if-eqz p21, :cond_f5

    .line 1314
    move/from16 p5, p7

    .line 1320
    :cond_f5
    if-eqz p15, :cond_167

    .line 1321
    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v19, v0

    .line 1327
    .local v19, extra:I
    :goto_109
    add-int/lit8 v5, v29, 0x0

    aput p2, v27, v5

    .line 1328
    add-int/lit8 v5, v29, 0x1

    aput p8, v27, v5

    .line 1329
    add-int/lit8 v5, v29, 0x2

    add-int v6, p5, v19

    aput v6, v27, v5

    .line 1331
    sub-int v5, p5, p4

    add-int v5, v5, v19

    add-int p8, p8, v5

    .line 1332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v29

    add-int/lit8 v5, v5, 0x0

    aput p3, v27, v5

    .line 1333
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v29

    add-int/lit8 v5, v5, 0x1

    aput p8, v27, v5

    .line 1335
    if-eqz p14, :cond_13e

    .line 1336
    add-int/lit8 v5, v29, 0x0

    aget v6, v27, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v27, v5

    .line 1339
    :cond_13e
    add-int/lit8 v5, v29, 0x0

    aget v6, v27, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v27, v5

    .line 1341
    const/16 v18, 0x0

    .line 1342
    .local v18, cur:I
    const/16 v16, 0x0

    .line 1344
    .local v16, count:I
    if-nez p19, :cond_16a

    .line 1345
    move/from16 v24, p2

    .local v24, k:I
    :goto_14f
    move/from16 v0, v24

    move/from16 v1, p3

    if-ge v0, v1, :cond_16a

    .line 1346
    sub-int v5, v24, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_164

    .line 1347
    add-int/lit8 v16, v16, 0x1

    .line 1348
    sub-int v5, v24, p16

    aget-byte v18, p17, v5

    .line 1345
    :cond_164
    add-int/lit8 v24, v24, 0x1

    goto :goto_14f

    .line 1324
    .end local v16           #count:I
    .end local v18           #cur:I
    .end local v19           #extra:I
    .end local v24           #k:I
    :cond_167
    const/16 v19, 0x0

    .restart local v19       #extra:I
    goto :goto_109

    .line 1355
    .restart local v16       #count:I
    .restart local v18       #cur:I
    :cond_16a
    if-nez v16, :cond_1a4

    .line 1356
    sget-object v26, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1383
    .local v26, linedirs:Landroid/text/Layout$Directions;
    :goto_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v26, v5, v13

    .line 1386
    if-eqz p26, :cond_197

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p26

    move-object v1, v5

    if-ne v0, v1, :cond_180

    if-eqz v13, :cond_197

    :cond_180
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p23

    move/from16 v9, p24

    move/from16 v10, p25

    move/from16 v11, p27

    move-object/from16 v12, p26

    move/from16 v14, p28

    move-object/from16 v15, p29

    .line 1387
    invoke-direct/range {v5 .. v15}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 1393
    :cond_197
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 1394
    return p8

    .line 1358
    .end local v26           #linedirs:Landroid/text/Layout$Directions;
    :cond_1a4
    add-int/lit8 v5, v16, 0x1

    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v25, v0

    .line 1360
    .local v25, ld:[S
    const/16 v18, 0x0

    .line 1361
    const/16 v16, 0x0

    .line 1362
    move/from16 v22, p2

    .line 1364
    .local v22, here:I
    move/from16 v24, p2

    .restart local v24       #k:I
    move/from16 v17, v16

    .end local v16           #count:I
    .local v17, count:I
    :goto_1b5
    move/from16 v0, v24

    move/from16 v1, p3

    if-ge v0, v1, :cond_1d6

    .line 1365
    sub-int v5, v24, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f8

    .line 1368
    add-int/lit8 v16, v17, 0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    sub-int v5, v24, v22

    int-to-short v5, v5

    aput-short v5, v25, v17

    .line 1369
    sub-int v5, v24, p16

    aget-byte v18, p17, v5

    .line 1370
    move/from16 v22, v24

    .line 1364
    :goto_1d1
    add-int/lit8 v24, v24, 0x1

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_1b5

    .line 1374
    :cond_1d6
    sub-int v5, p3, v22

    int-to-short v5, v5

    aput-short v5, v25, v17

    .line 1376
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_1eb

    const/4 v5, 0x0

    aget-short v5, v25, v5

    if-nez v5, :cond_1eb

    .line 1377
    sget-object v26, Landroid/text/StaticLayout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .restart local v26       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_16e

    .line 1379
    .end local v16           #count:I
    .end local v26           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_1eb
    new-instance v26, Landroid/text/Layout$Directions;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    .restart local v26       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto/16 :goto_16e

    .end local v16           #count:I
    .end local v26           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_1f8
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_1d1
.end method


# virtual methods
.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 182
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    .line 163
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 165
    const/16 v20, 0x0

    .line 166
    .local v20, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_fb

    :cond_13
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 168
    .local v27, needMultiply:Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .line 169
    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .line 171
    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v145

    .line 172
    .local v145, end:I
    if-ltz v145, :cond_100

    sub-int v5, v145, p2

    move/from16 v137, v5

    .line 173
    .local v137, bufsiz:I
    :goto_30
    const/16 v146, 0x1

    .line 175
    .local v146, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_62

    .line 176
    add-int/lit8 v5, v137, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 177
    add-int/lit8 v5, v137, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 178
    add-int/lit8 v5, v137, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 181
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .line 182
    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v139, v0

    .line 183
    .local v139, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .line 185
    .local v10, widths:[F
    const/16 v132, 0x0

    .line 186
    .local v132, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .line 189
    .local v7, spanned:Landroid/text/Spanned;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/StaticLayout;->mIsBoring:Z

    .line 193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/StaticLayout;->mIsHint:Z

    move v5, v0

    if-nez v5, :cond_ab

    sget-boolean v5, Landroid/text/Layout;->mIsRTLanguage:Z

    if-eqz v5, :cond_97

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/StaticLayout;->mTextEditable:Z

    move v5, v0

    if-eqz v5, :cond_97

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object v5, v0

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_a4

    :cond_97
    sget-boolean v5, Landroid/text/Layout;->mIsRTLanguage:Z

    if-eqz v5, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object v5, v0

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_ab

    .line 194
    :cond_a4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 197
    :cond_ab
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_b7

    .line 198
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 200
    :cond_b7
    const/16 v117, 0x1

    .line 202
    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_bb
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_937

    .line 203
    if-eqz v146, :cond_106

    .line 204
    const/16 v146, 0x0

    .line 208
    :goto_c5
    if-gez v145, :cond_114

    .line 209
    move/from16 v145, p3

    .line 213
    :goto_c9
    move/from16 v147, p5

    .line 214
    .local v147, firstwidth:I
    move/from16 v158, p5

    .line 216
    .local v158, restwidth:I
    const/16 v23, 0x0

    .line 218
    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_16e

    .line 221
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v145

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v159

    check-cast v159, [Landroid/text/style/LeadingMarginSpan;

    .line 222
    .local v159, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_e0
    move-object/from16 v0, v159

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_117

    .line 223
    aget-object v5, v159, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v147, v147, v5

    .line 224
    aget-object v5, v159, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v158, v158, v5

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto :goto_e0

    .line 166
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #i:I
    .end local v10           #widths:[F
    .end local v11           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v24           #choosehtv:[I
    .end local v27           #needMultiply:Z
    .end local v28           #start:I
    .end local v29           #chdirs:[B
    .end local v117           #DEFAULT_DIR:I
    .end local v132           #alter:Landroid/text/AlteredCharSequence;
    .end local v137           #bufsiz:I
    .end local v139           #chs:[C
    .end local v145           #end:I
    .end local v146           #first:Z
    .end local v147           #firstwidth:I
    .end local v158           #restwidth:I
    .end local v159           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_fb
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_16

    .line 172
    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v24       #choosehtv:[I
    .restart local v27       #needMultiply:Z
    .restart local v145       #end:I
    :cond_100
    sub-int v5, p3, p2

    move/from16 v137, v5

    goto/16 :goto_30

    .line 206
    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v10       #widths:[F
    .restart local v28       #start:I
    .restart local v29       #chdirs:[B
    .restart local v117       #DEFAULT_DIR:I
    .restart local v132       #alter:Landroid/text/AlteredCharSequence;
    .restart local v137       #bufsiz:I
    .restart local v139       #chs:[C
    .restart local v146       #first:Z
    :cond_106
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v28

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v145

    goto :goto_c5

    .line 211
    :cond_114
    add-int/lit8 v145, v145, 0x1

    goto :goto_c9

    .line 227
    .restart local v8       #i:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v147       #firstwidth:I
    .restart local v158       #restwidth:I
    .restart local v159       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_117
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v145

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    check-cast v23, [Landroid/text/style/LineHeightSpan;

    .line 229
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_16e

    .line 230
    if-eqz v24, :cond_137

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_144

    .line 232
    :cond_137
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 236
    :cond_144
    const/4 v8, 0x0

    :goto_145
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_16e

    .line 237
    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v155

    .line 239
    .local v155, o:I
    move/from16 v0, v155

    move/from16 v1, v28

    if-ge v0, v1, :cond_16b

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    .line 236
    :goto_168
    add-int/lit8 v8, v8, 0x1

    goto :goto_145

    .line 247
    :cond_16b
    aput v20, v24, v8

    goto :goto_168

    .line 253
    .end local v8           #i:I
    .end local v155           #o:I
    .end local v159           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_16e
    sub-int v5, v145, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_187

    .line 254
    sub-int v5, v145, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 255
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 257
    :cond_187
    sub-int v5, v145, v28

    move-object/from16 v0, v139

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_1a0

    .line 258
    sub-int v5, v145, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v139, v0

    .line 259
    move-object/from16 v0, v139

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 261
    :cond_1a0
    sub-int v5, v145, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_1b6

    .line 262
    sub-int v5, v145, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    .line 263
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 266
    :cond_1b6
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v145

    move-object/from16 v3, v139

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 267
    sub-int v154, v145, v28

    .line 269
    .local v154, n:I
    const/16 v31, 0x1

    .line 270
    .local v31, easy:Z
    const/16 v133, 0x0

    .line 271
    .local v133, altered:Z
    move/from16 v30, v117

    .line 274
    .local v30, dir:I
    const/16 v161, 0x1

    .line 278
    .local v161, str_dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1ce
    move v0, v8

    move/from16 v1, v154

    if-ge v0, v1, :cond_1db

    .line 279
    aget-char v5, v139, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_20f

    .line 280
    const/16 v31, 0x0

    .line 287
    :cond_1db
    sget-boolean v5, Landroid/text/Layout;->mIsRTLanguage:Z

    if-eqz v5, :cond_1f0

    invoke-static {}, Landroid/text/StaticLayout;->isCursorDirRight()Z

    move-result v5

    if-eqz v5, :cond_1f0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/StaticLayout;->mTextEditable:Z

    move v5, v0

    if-eqz v5, :cond_1f0

    .line 288
    const/16 v117, -0x1

    .line 289
    move/from16 v30, v117

    .line 294
    :cond_1f0
    if-nez v31, :cond_62b

    .line 295
    sub-int v5, v145, v28

    move-object/from16 v0, v139

    move-object/from16 v1, v29

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 298
    const/16 v152, 0x0

    .local v152, j:I
    :goto_1fe
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_212

    .line 299
    aget-byte v5, v29, v152

    const/4 v6, 0x2

    if-ne v5, v6, :cond_20c

    .line 300
    const/4 v5, 0x1

    aput-byte v5, v29, v152

    .line 298
    :cond_20c
    add-int/lit8 v152, v152, 0x1

    goto :goto_1fe

    .line 278
    .end local v152           #j:I
    :cond_20f
    add-int/lit8 v8, v8, 0x1

    goto :goto_1ce

    .line 313
    .restart local v152       #j:I
    :cond_212
    move/from16 v152, v28

    :goto_214
    move/from16 v0, v152

    move/from16 v1, v145

    if-ge v0, v1, :cond_222

    .line 314
    sub-int v5, v152, v28

    aget-byte v142, v29, v5

    .line 316
    .local v142, d:I
    if-nez v142, :cond_241

    .line 317
    const/16 v161, 0x1

    .line 336
    .end local v142           #d:I
    :cond_222
    :goto_222
    move/from16 v30, v161

    .line 369
    const/4 v5, 0x1

    move/from16 v0, v161

    move v1, v5

    if-ne v0, v1, :cond_253

    const/4 v5, 0x0

    move/from16 v129, v5

    .line 377
    .local v129, SOR:B
    :goto_22d
    const/16 v152, 0x0

    :goto_22f
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_25f

    .line 378
    aget-byte v5, v29, v152

    const/4 v6, 0x6

    if-ne v5, v6, :cond_23e

    .line 379
    if-nez v152, :cond_257

    .line 380
    aput-byte v129, v29, v152

    .line 377
    :cond_23e
    :goto_23e
    add-int/lit8 v152, v152, 0x1

    goto :goto_22f

    .line 320
    .end local v129           #SOR:B
    .restart local v142       #d:I
    :cond_241
    const/4 v5, 0x1

    move/from16 v0, v142

    move v1, v5

    if-eq v0, v1, :cond_24d

    const/4 v5, 0x2

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_250

    .line 324
    :cond_24d
    const/16 v161, -0x1

    .line 325
    goto :goto_222

    .line 313
    :cond_250
    add-int/lit8 v152, v152, 0x1

    goto :goto_214

    .line 369
    .end local v142           #d:I
    :cond_253
    const/4 v5, 0x1

    move/from16 v129, v5

    goto :goto_22d

    .line 382
    .restart local v129       #SOR:B
    :cond_257
    const/4 v5, 0x1

    sub-int v5, v152, v5

    aget-byte v5, v29, v5

    aput-byte v5, v29, v152

    goto :goto_23e

    .line 389
    :cond_25f
    move/from16 v141, v129

    .line 434
    .local v141, cur:B
    const/16 v152, 0x1

    :goto_263
    const/4 v5, 0x1

    sub-int v5, v154, v5

    move/from16 v0, v152

    move v1, v5

    if-ge v0, v1, :cond_2aa

    .line 435
    aget-byte v142, v29, v152

    .line 436
    .local v142, d:B
    const/4 v5, 0x1

    sub-int v5, v152, v5

    aget-byte v157, v29, v5

    .line 437
    .local v157, prev:B
    add-int/lit8 v5, v152, 0x1

    aget-byte v9, v29, v5

    .line 439
    .local v9, next:B
    const/4 v5, 0x4

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_28b

    .line 440
    const/4 v5, 0x3

    move/from16 v0, v157

    move v1, v5

    if-ne v0, v1, :cond_288

    const/4 v5, 0x3

    if-ne v9, v5, :cond_288

    .line 442
    const/4 v5, 0x3

    aput-byte v5, v29, v152

    .line 434
    :cond_288
    :goto_288
    add-int/lit8 v152, v152, 0x1

    goto :goto_263

    .line 443
    :cond_28b
    const/4 v5, 0x7

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_288

    .line 444
    const/4 v5, 0x3

    move/from16 v0, v157

    move v1, v5

    if-ne v0, v1, :cond_29d

    const/4 v5, 0x3

    if-ne v9, v5, :cond_29d

    .line 446
    const/4 v5, 0x3

    aput-byte v5, v29, v152

    .line 447
    :cond_29d
    const/4 v5, 0x6

    move/from16 v0, v157

    move v1, v5

    if-ne v0, v1, :cond_288

    const/4 v5, 0x6

    if-ne v9, v5, :cond_288

    .line 449
    const/4 v5, 0x6

    aput-byte v5, v29, v152

    goto :goto_288

    .line 456
    .end local v9           #next:B
    .end local v142           #d:B
    .end local v157           #prev:B
    :cond_2aa
    const/16 v131, 0x0

    .line 461
    .local v131, adjacent:Z
    const/16 v140, -0x1

    .line 462
    .local v140, cnt:I
    const/16 v156, -0x1

    .line 463
    .local v156, pos:I
    const/16 v152, 0x0

    :goto_2b2
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_316

    .line 464
    aget-byte v142, v29, v152

    .line 466
    .restart local v142       #d:B
    const/4 v5, 0x4

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_2e2

    .line 467
    const/4 v5, 0x4

    move/from16 v0, v140

    move v1, v5

    if-le v0, v1, :cond_2d0

    if-ltz v156, :cond_2d0

    .line 468
    const v5, 0xf82b

    aput-char v5, v139, v156

    .line 469
    const/4 v5, 0x3

    aput-byte v5, v29, v156

    .line 475
    :cond_2d0
    aget-char v5, v139, v152

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2dd

    .line 476
    move/from16 v156, v152

    .line 477
    const/16 v140, 0x0

    .line 463
    :cond_2da
    :goto_2da
    add-int/lit8 v152, v152, 0x1

    goto :goto_2b2

    .line 479
    :cond_2dd
    const/16 v140, -0x1

    .line 480
    const/16 v156, -0x1

    goto :goto_2da

    .line 483
    :cond_2e2
    const/4 v5, 0x3

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_301

    .line 484
    if-ltz v140, :cond_2da

    .line 486
    add-int/lit8 v140, v140, 0x1

    .line 487
    const/4 v5, 0x4

    move/from16 v0, v140

    move v1, v5

    if-le v0, v1, :cond_2da

    if-ltz v156, :cond_2da

    .line 488
    const v5, 0xf82b

    aput-char v5, v139, v156

    .line 489
    const/4 v5, 0x3

    aput-byte v5, v29, v156

    .line 494
    const/16 v140, -0x1

    .line 495
    const/16 v156, -0x1

    goto :goto_2da

    .line 499
    :cond_301
    const/4 v5, 0x4

    move/from16 v0, v140

    move v1, v5

    if-le v0, v1, :cond_311

    if-ltz v156, :cond_311

    .line 500
    const v5, 0xf82b

    aput-char v5, v139, v156

    .line 501
    const/4 v5, 0x3

    aput-byte v5, v29, v156

    .line 507
    :cond_311
    const/16 v140, -0x1

    .line 508
    const/16 v156, -0x1

    goto :goto_2da

    .line 515
    .end local v142           #d:B
    :cond_316
    const/16 v152, 0x0

    :goto_318
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_33a

    .line 516
    aget-byte v142, v29, v152

    .line 518
    .restart local v142       #d:B
    const/4 v5, 0x3

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_32b

    .line 519
    const/16 v131, 0x1

    .line 515
    :goto_328
    add-int/lit8 v152, v152, 0x1

    goto :goto_318

    .line 520
    :cond_32b
    const/4 v5, 0x5

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_337

    if-eqz v131, :cond_337

    .line 521
    const/4 v5, 0x3

    aput-byte v5, v29, v152

    goto :goto_328

    .line 523
    :cond_337
    const/16 v131, 0x0

    goto :goto_328

    .line 530
    .end local v142           #d:B
    :cond_33a
    const/16 v131, 0x0

    .line 531
    const/4 v5, 0x1

    sub-int v152, v154, v5

    :goto_33f
    if-ltz v152, :cond_380

    .line 532
    aget-byte v142, v29, v152

    .line 534
    .restart local v142       #d:B
    const/4 v5, 0x3

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_34e

    .line 535
    const/16 v131, 0x1

    .line 531
    :cond_34b
    :goto_34b
    add-int/lit8 v152, v152, -0x1

    goto :goto_33f

    .line 536
    :cond_34e
    const/4 v5, 0x5

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_35f

    .line 537
    if-eqz v131, :cond_35a

    .line 538
    const/4 v5, 0x3

    aput-byte v5, v29, v152

    goto :goto_34b

    .line 540
    :cond_35a
    const/16 v5, 0xd

    aput-byte v5, v29, v152

    goto :goto_34b

    .line 543
    :cond_35f
    const/16 v131, 0x0

    .line 545
    const/4 v5, 0x4

    move/from16 v0, v142

    move v1, v5

    if-eq v0, v1, :cond_37b

    const/4 v5, 0x7

    move/from16 v0, v142

    move v1, v5

    if-eq v0, v1, :cond_37b

    const/16 v5, 0xa

    move/from16 v0, v142

    move v1, v5

    if-eq v0, v1, :cond_37b

    const/16 v5, 0xb

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_34b

    .line 549
    :cond_37b
    const/16 v5, 0xd

    aput-byte v5, v29, v152

    goto :goto_34b

    .line 556
    .end local v142           #d:B
    :cond_380
    move/from16 v141, v129

    .line 637
    const/16 v152, 0x0

    :goto_384
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_3a7

    .line 638
    aget-byte v142, v29, v152

    .line 640
    .restart local v142       #d:B
    move/from16 v0, v142

    move/from16 v1, v129

    if-eq v0, v1, :cond_39a

    if-eqz v142, :cond_39a

    const/4 v5, 0x1

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_39c

    .line 643
    :cond_39a
    move/from16 v141, v142

    .line 645
    :cond_39c
    const/4 v5, 0x3

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_3a4

    .line 646
    aput-byte v141, v29, v152

    .line 637
    :cond_3a4
    add-int/lit8 v152, v152, 0x1

    goto :goto_384

    .line 655
    .end local v142           #d:B
    :cond_3a7
    move/from16 v141, v129

    .line 656
    const/16 v152, 0x0

    :goto_3ab
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_40f

    .line 657
    aget-byte v142, v29, v152

    .line 659
    .restart local v142       #d:B
    if-eqz v142, :cond_3bb

    const/4 v5, 0x1

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_3c0

    .line 661
    :cond_3bb
    move/from16 v141, v142

    .line 656
    :goto_3bd
    add-int/lit8 v152, v152, 0x1

    goto :goto_3ab

    .line 662
    :cond_3c0
    const/4 v5, 0x3

    move/from16 v0, v142

    move v1, v5

    if-eq v0, v1, :cond_3cc

    const/4 v5, 0x6

    move/from16 v0, v142

    move v1, v5

    if-ne v0, v1, :cond_3cf

    .line 664
    :cond_3cc
    const/16 v141, 0x1

    goto :goto_3bd

    .line 666
    :cond_3cf
    move/from16 v143, v129

    .line 669
    .local v143, dd:B
    add-int/lit8 v153, v152, 0x1

    .local v153, k:I
    :goto_3d3
    move/from16 v0, v153

    move/from16 v1, v154

    if-ge v0, v1, :cond_3e3

    .line 670
    aget-byte v143, v29, v153

    .line 672
    if-eqz v143, :cond_3e3

    const/4 v5, 0x1

    move/from16 v0, v143

    move v1, v5

    if-ne v0, v1, :cond_3f6

    .line 683
    :cond_3e3
    :goto_3e3
    move/from16 v167, v152

    .local v167, y:I
    :goto_3e5
    move/from16 v0, v167

    move/from16 v1, v153

    if-ge v0, v1, :cond_40b

    .line 684
    move/from16 v0, v143

    move/from16 v1, v141

    if-ne v0, v1, :cond_408

    .line 685
    aput-byte v141, v29, v167

    .line 683
    :goto_3f3
    add-int/lit8 v167, v167, 0x1

    goto :goto_3e5

    .line 676
    .end local v167           #y:I
    :cond_3f6
    const/4 v5, 0x3

    move/from16 v0, v143

    move v1, v5

    if-eq v0, v1, :cond_402

    const/4 v5, 0x6

    move/from16 v0, v143

    move v1, v5

    if-ne v0, v1, :cond_405

    .line 678
    :cond_402
    const/16 v143, 0x1

    .line 679
    goto :goto_3e3

    .line 669
    :cond_405
    add-int/lit8 v153, v153, 0x1

    goto :goto_3d3

    .line 687
    .restart local v167       #y:I
    :cond_408
    aput-byte v129, v29, v167

    goto :goto_3f3

    .line 690
    :cond_40b
    const/4 v5, 0x1

    sub-int v152, v153, v5

    goto :goto_3bd

    .line 732
    .end local v142           #d:B
    .end local v143           #dd:B
    .end local v153           #k:I
    .end local v167           #y:I
    :cond_40f
    const/16 v152, 0x0

    :goto_411
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_435

    .line 733
    aget-char v138, v139, v152

    .line 735
    .local v138, c:C
    const/16 v5, 0x9

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_430

    const v5, 0xd800

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_432

    const v5, 0xdfff

    move/from16 v0, v138

    move v1, v5

    if-gt v0, v1, :cond_432

    .line 736
    :cond_430
    aput-byte v129, v29, v152

    .line 732
    :cond_432
    add-int/lit8 v152, v152, 0x1

    goto :goto_411

    .line 745
    .end local v138           #c:C
    :cond_435
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_487

    .line 746
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v159, v0

    .line 747
    .local v159, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v159

    move/from16 v1, v28

    move/from16 v2, v145

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v160

    check-cast v160, [Landroid/text/style/ReplacementSpan;

    .line 749
    .local v160, spans:[Landroid/text/style/ReplacementSpan;
    const/16 v167, 0x0

    .restart local v167       #y:I
    :goto_453
    move-object/from16 v0, v160

    array-length v0, v0

    move v5, v0

    move/from16 v0, v167

    move v1, v5

    if-ge v0, v1, :cond_487

    .line 750
    aget-object v5, v160, v167

    move-object/from16 v0, v159

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v130

    .line 751
    .local v130, a:I
    aget-object v5, v160, v167

    move-object/from16 v0, v159

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v134

    .line 753
    .local v134, b:I
    move/from16 v166, v130

    .local v166, x:I
    :goto_470
    move/from16 v0, v166

    move/from16 v1, v134

    if-ge v0, v1, :cond_484

    .line 754
    sub-int v5, v166, v28

    aput-byte v129, v29, v5

    .line 755
    sub-int v5, v166, v28

    const v6, 0xfffc

    aput-char v6, v139, v5

    .line 753
    add-int/lit8 v166, v166, 0x1

    goto :goto_470

    .line 749
    :cond_484
    add-int/lit8 v167, v167, 0x1

    goto :goto_453

    .line 762
    .end local v130           #a:I
    .end local v134           #b:I
    .end local v159           #sp:Landroid/text/Spanned;
    .end local v160           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v166           #x:I
    .end local v167           #y:I
    :cond_487
    const/4 v8, 0x0

    :goto_488
    move v0, v8

    move/from16 v1, v154

    if-ge v0, v1, :cond_4b6

    .line 763
    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4b0

    .line 766
    move/from16 v152, v8

    :goto_494
    move/from16 v0, v152

    move/from16 v1, v154

    if-ge v0, v1, :cond_49f

    .line 767
    aget-byte v5, v29, v152

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4b3

    .line 772
    :cond_49f
    sub-int v5, v152, v8

    move-object/from16 v0, v139

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_4ad

    .line 773
    const/16 v133, 0x1

    .line 775
    :cond_4ad
    const/4 v5, 0x1

    sub-int v8, v152, v5

    .line 762
    :cond_4b0
    add-int/lit8 v8, v8, 0x1

    goto :goto_488

    .line 766
    :cond_4b3
    add-int/lit8 v152, v152, 0x1

    goto :goto_494

    .line 782
    :cond_4b6
    sget-boolean v5, Landroid/text/Layout;->mIsRTLanguage:Z

    if-eqz v5, :cond_4c9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/StaticLayout;->mIsHint:Z

    move v5, v0

    if-eqz v5, :cond_4c9

    invoke-static {}, Landroid/text/StaticLayout;->isCursorDirRight()Z

    move-result v5

    if-eqz v5, :cond_4c9

    .line 783
    const/16 v30, 0x1

    .line 792
    .end local v129           #SOR:B
    .end local v131           #adjacent:Z
    .end local v140           #cnt:I
    .end local v141           #cur:B
    .end local v152           #j:I
    .end local v156           #pos:I
    :cond_4c9
    :goto_4c9
    if-eqz v133, :cond_643

    .line 793
    if-nez v132, :cond_636

    .line 794
    move-object/from16 v0, p1

    move-object/from16 v1, v139

    move/from16 v2, v28

    move/from16 v3, v145

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v132

    .line 798
    :goto_4d9
    move-object/from16 v162, v132

    .line 803
    .local v162, sub:Ljava/lang/CharSequence;
    :goto_4db
    move/from16 v165, v147

    .line 805
    .local v165, width:I
    const/16 v98, 0x0

    .line 806
    .local v98, w:F
    move/from16 v14, v28

    .line 808
    .local v14, here:I
    move/from16 v15, v28

    .line 809
    .local v15, ok:I
    move/from16 v40, v98

    .line 810
    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .line 812
    .local v19, okbottom:I
    move/from16 v44, v28

    .line 813
    .local v44, fit:I
    move/from16 v69, v98

    .line 814
    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .line 816
    .local v48, fitbottom:I
    const/16 v26, 0x0

    .line 819
    .local v26, tab:Z
    move/from16 v8, v28

    :goto_4fd
    move v0, v8

    move/from16 v1, v145

    if-ge v0, v1, :cond_8c3

    .line 820
    if-nez v7, :cond_647

    .line 821
    move/from16 v9, v145

    .line 827
    .local v9, next:I
    :goto_506
    if-nez v7, :cond_654

    .line 828
    move-object/from16 v0, p4

    move-object/from16 v1, v162

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 829
    const/4 v5, 0x0

    sub-int v6, v145, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 851
    :goto_523
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v151, v0

    .line 852
    .local v151, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v149, v0

    .line 853
    .local v149, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v148, v0

    .line 854
    .local v148, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v150, v0

    .line 866
    .local v150, fmdescent:I
    move/from16 v152, v8

    .restart local v152       #j:I
    :goto_539
    move/from16 v0, v152

    move v1, v9

    if-ge v0, v1, :cond_8c0

    .line 867
    sub-int v5, v152, v28

    aget-char v138, v139, v5

    .line 868
    .restart local v138       #c:C
    move/from16 v135, v98

    .line 870
    .local v135, before:F
    const/16 v5, 0xa

    move/from16 v0, v138

    move v1, v5

    if-ne v0, v1, :cond_6ae

    .line 910
    :goto_54b
    move/from16 v0, v165

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_743

    .line 911
    move/from16 v69, v98

    .line 912
    add-int/lit8 v44, v152, 0x1

    .line 914
    move/from16 v0, v151

    move/from16 v1, v47

    if-ge v0, v1, :cond_55f

    .line 915
    move/from16 v47, v151

    .line 916
    :cond_55f
    move/from16 v0, v148

    move/from16 v1, v45

    if-ge v0, v1, :cond_567

    .line 917
    move/from16 v45, v148

    .line 918
    :cond_567
    move/from16 v0, v150

    move/from16 v1, v46

    if-le v0, v1, :cond_56f

    .line 919
    move/from16 v46, v150

    .line 920
    :cond_56f
    move/from16 v0, v149

    move/from16 v1, v48

    if-le v0, v1, :cond_577

    .line 921
    move/from16 v48, v149

    .line 939
    :cond_577
    const/16 v5, 0x20

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_603

    const/16 v5, 0x9

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_603

    const/16 v5, 0x2e

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_5a1

    const/16 v5, 0x2c

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_5a1

    const/16 v5, 0x3a

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_5a1

    const/16 v5, 0x3b

    move/from16 v0, v138

    move v1, v5

    if-ne v0, v1, :cond_5c3

    :cond_5a1
    const/4 v5, 0x1

    sub-int v5, v152, v5

    if-lt v5, v14, :cond_5b3

    const/4 v5, 0x1

    sub-int v5, v152, v5

    sub-int v5, v5, v28

    aget-char v5, v139, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_5c3

    :cond_5b3
    add-int/lit8 v5, v152, 0x1

    if-ge v5, v9, :cond_603

    add-int/lit8 v5, v152, 0x1

    sub-int v5, v5, v28

    aget-char v5, v139, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_603

    :cond_5c3
    const/16 v5, 0x2f

    move/from16 v0, v138

    move v1, v5

    if-eq v0, v1, :cond_5d1

    const/16 v5, 0x2d

    move/from16 v0, v138

    move v1, v5

    if-ne v0, v1, :cond_5e1

    :cond_5d1
    add-int/lit8 v5, v152, 0x1

    if-ge v5, v9, :cond_603

    add-int/lit8 v5, v152, 0x1

    sub-int v5, v5, v28

    aget-char v5, v139, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_603

    :cond_5e1
    const/16 v5, 0x2e80

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_627

    const/4 v5, 0x1

    move/from16 v0, v138

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_627

    add-int/lit8 v5, v152, 0x1

    if-ge v5, v9, :cond_627

    add-int/lit8 v5, v152, 0x1

    sub-int v5, v5, v28

    aget-char v5, v139, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_627

    .line 947
    :cond_603
    move/from16 v40, v98

    .line 948
    add-int/lit8 v15, v152, 0x1

    .line 950
    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_60f

    .line 951
    move/from16 v18, v47

    .line 952
    :cond_60f
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_617

    .line 953
    move/from16 v16, v45

    .line 954
    :cond_617
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_61f

    .line 955
    move/from16 v17, v46

    .line 956
    :cond_61f
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_627

    .line 957
    move/from16 v19, v48

    .line 866
    :cond_627
    :goto_627
    add-int/lit8 v152, v152, 0x1

    goto/16 :goto_539

    .line 785
    .end local v9           #next:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v26           #tab:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v135           #before:F
    .end local v138           #c:C
    .end local v148           #fmascent:I
    .end local v149           #fmbottom:I
    .end local v150           #fmdescent:I
    .end local v151           #fmtop:I
    .end local v152           #j:I
    .end local v162           #sub:Ljava/lang/CharSequence;
    .end local v165           #width:I
    :cond_62b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/StaticLayout;->mTextEditable:Z

    move v5, v0

    if-eqz v5, :cond_4c9

    .line 786
    const/16 v30, 0x1

    goto/16 :goto_4c9

    .line 796
    :cond_636
    move-object/from16 v0, v132

    move-object/from16 v1, v139

    move/from16 v2, v28

    move/from16 v3, v145

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->update([CII)V

    goto/16 :goto_4d9

    .line 800
    :cond_643
    move-object/from16 v162, p1

    .restart local v162       #sub:Ljava/lang/CharSequence;
    goto/16 :goto_4db

    .line 823
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v26       #tab:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v165       #width:I
    :cond_647
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v7

    move v1, v8

    move/from16 v2, v145

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .restart local v9       #next:I
    goto/16 :goto_506

    .line 834
    :cond_654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 839
    const/4 v5, 0x0

    sub-int v6, v145, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_694

    .line 843
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 844
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_523

    .line 846
    :cond_694
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 847
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_523

    .line 872
    .restart local v135       #before:F
    .restart local v138       #c:C
    .restart local v148       #fmascent:I
    .restart local v149       #fmbottom:I
    .restart local v150       #fmdescent:I
    .restart local v151       #fmtop:I
    .restart local v152       #j:I
    :cond_6ae
    const/16 v5, 0x9

    move/from16 v0, v138

    move v1, v5

    if-ne v0, v1, :cond_6c7

    .line 873
    const/4 v5, 0x0

    move-object/from16 v0, v162

    move/from16 v1, v28

    move/from16 v2, v145

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    .line 874
    const/16 v26, 0x1

    goto/16 :goto_54b

    .line 875
    :cond_6c7
    const v5, 0xd800

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_738

    const v5, 0xdfff

    move/from16 v0, v138

    move v1, v5

    if-gt v0, v1, :cond_738

    add-int/lit8 v5, v152, 0x1

    if-ge v5, v9, :cond_738

    .line 876
    sub-int v5, v152, v28

    move-object/from16 v0, v139

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v144

    .line 878
    .local v144, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v144

    move v1, v5

    if-lt v0, v1, :cond_72d

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v144

    move v1, v5

    if-gt v0, v1, :cond_72d

    .line 879
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v144

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v136

    .line 882
    .local v136, bm:Landroid/graphics/Bitmap;
    if-eqz v136, :cond_722

    .line 885
    if-nez v7, :cond_71b

    .line 886
    move-object/from16 v163, p4

    .line 891
    .local v163, whichPaint:Landroid/graphics/Paint;
    :goto_701
    invoke-virtual/range {v136 .. v136}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v163 .. v163}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v136 .. v136}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v164, v5, v6

    .line 895
    .local v164, wid:F
    add-float v98, v98, v164

    .line 896
    const/16 v26, 0x1

    .line 897
    add-int/lit8 v152, v152, 0x1

    .line 898
    goto/16 :goto_54b

    .line 888
    .end local v163           #whichPaint:Landroid/graphics/Paint;
    .end local v164           #wid:F
    :cond_71b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v163, v0

    .restart local v163       #whichPaint:Landroid/graphics/Paint;
    goto :goto_701

    .line 899
    .end local v163           #whichPaint:Landroid/graphics/Paint;
    :cond_722
    sub-int v5, v152, v28

    sub-int v6, v145, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_54b

    .line 902
    .end local v136           #bm:Landroid/graphics/Bitmap;
    :cond_72d
    sub-int v5, v152, v28

    sub-int v6, v145, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_54b

    .line 905
    .end local v144           #emoji:I
    :cond_738
    sub-int v5, v152, v28

    sub-int v6, v145, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_54b

    .line 959
    :cond_743
    if-eqz p11, :cond_7a7

    .line 960
    if-eq v15, v14, :cond_781

    .line 963
    :goto_747
    if-ge v15, v9, :cond_754

    sub-int v5, v15, v28

    aget-char v5, v139, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_754

    .line 964
    add-int/lit8 v15, v15, 0x1

    goto :goto_747

    .line 967
    :cond_754
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_77d

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_75c
    sub-int v37, v145, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 979
    move v14, v15

    goto/16 :goto_627

    .line 967
    :cond_77d
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_75c

    .line 983
    :cond_781
    move/from16 v69, v98

    .line 984
    add-int/lit8 v44, v152, 0x1

    .line 986
    move/from16 v0, v151

    move/from16 v1, v47

    if-ge v0, v1, :cond_78d

    .line 987
    move/from16 v47, v151

    .line 988
    :cond_78d
    move/from16 v0, v148

    move/from16 v1, v45

    if-ge v0, v1, :cond_795

    .line 989
    move/from16 v45, v148

    .line 990
    :cond_795
    move/from16 v0, v150

    move/from16 v1, v46

    if-le v0, v1, :cond_79d

    .line 991
    move/from16 v46, v150

    .line 992
    :cond_79d
    move/from16 v0, v149

    move/from16 v1, v48

    if-le v0, v1, :cond_627

    .line 993
    move/from16 v48, v149

    goto/16 :goto_627

    .line 996
    :cond_7a7
    if-eq v15, v14, :cond_7ff

    .line 999
    :goto_7a9
    if-ge v15, v9, :cond_7b6

    sub-int v5, v15, v28

    aget-char v5, v139, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_7b6

    .line 1000
    add-int/lit8 v15, v15, 0x1

    goto :goto_7a9

    .line 1003
    :cond_7b6
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_7fb

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_7be
    sub-int v37, v145, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1015
    move v14, v15

    .line 1055
    .end local v98           #w:F
    :goto_7dd
    if-ge v14, v8, :cond_8bb

    .line 1056
    move v9, v14

    move/from16 v152, v14

    .line 1061
    :goto_7e2
    move/from16 v44, v14

    move v15, v14

    .line 1062
    const/16 v98, 0x0

    .line 1063
    .restart local v98       #w:F
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    .line 1064
    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    .line 1066
    move/from16 v165, v158

    goto/16 :goto_627

    .line 1003
    :cond_7fb
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_7be

    .line 1016
    :cond_7ff
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_846

    .line 1018
    move/from16 v0, v44

    move/from16 v1, p3

    if-ne v0, v1, :cond_842

    const/4 v5, 0x1

    move/from16 v61, v5

    :goto_80d
    sub-int v66, v145, v28

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v14

    move/from16 v49, v20

    move/from16 v50, p7

    move/from16 v51, p8

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move-object/from16 v54, v11

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    move/from16 v62, p9

    move/from16 v63, p10

    move-object/from16 v64, v10

    move/from16 v65, v28

    move-object/from16 v67, p13

    move/from16 v68, p12

    move-object/from16 v70, p4

    invoke-direct/range {v41 .. v70}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1031
    move/from16 v14, v44

    goto :goto_7dd

    .line 1018
    :cond_842
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_80d

    .line 1034
    :cond_846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    .line 1038
    add-int/lit8 v73, v14, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v76, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v77, v0

    add-int/lit8 v5, v14, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_8b7

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_87d
    sub-int v95, v145, v28

    sub-int v5, v14, v28

    aget v98, v10, v5

    .end local v98           #w:F
    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1052
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7dd

    .line 1038
    .restart local v98       #w:F
    :cond_8b7
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_87d

    .line 1058
    .end local v98           #w:F
    :cond_8bb
    const/4 v5, 0x1

    sub-int v152, v14, v5

    goto/16 :goto_7e2

    .line 819
    .end local v135           #before:F
    .end local v138           #c:C
    .restart local v98       #w:F
    :cond_8c0
    move v8, v9

    goto/16 :goto_4fd

    .line 1071
    .end local v9           #next:I
    .end local v148           #fmascent:I
    .end local v149           #fmbottom:I
    .end local v150           #fmdescent:I
    .end local v151           #fmtop:I
    .end local v152           #j:I
    :cond_8c3
    move/from16 v0, v145

    move v1, v14

    if-eq v0, v1, :cond_92f

    .line 1072
    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_8ea

    .line 1073
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1075
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    .line 1076
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    .line 1077
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    .line 1078
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    .line 1083
    :cond_8ea
    move/from16 v0, v145

    move/from16 v1, p3

    if-ne v0, v1, :cond_99c

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_8f3
    sub-int v95, v145, v28

    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v73, v145

    move/from16 v74, v45

    move/from16 v75, v46

    move/from16 v76, v47

    move/from16 v77, v48

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1095
    :cond_92f
    move/from16 v28, v145

    .line 1097
    move/from16 v0, v145

    move/from16 v1, p3

    if-ne v0, v1, :cond_9a1

    .line 1101
    .end local v8           #i:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v26           #tab:Z
    .end local v30           #dir:I
    .end local v31           #easy:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v133           #altered:Z
    .end local v147           #firstwidth:I
    .end local v154           #n:I
    .end local v158           #restwidth:I
    .end local v161           #str_dir:I
    .end local v162           #sub:Ljava/lang/CharSequence;
    .end local v165           #width:I
    :cond_937
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_94b

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_99b

    .line 1104
    :cond_94b
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1106
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v113, 0x0

    const/16 v118, 0x1

    const/16 v119, 0x1

    const/16 v124, 0x0

    const/16 v127, 0x0

    move-object/from16 v99, p0

    move-object/from16 v100, p1

    move/from16 v101, p3

    move/from16 v102, p3

    move/from16 v107, v20

    move/from16 v108, p7

    move/from16 v109, p8

    move-object/from16 v112, v11

    move/from16 v114, v27

    move/from16 v115, p3

    move-object/from16 v116, v29

    move/from16 v120, p9

    move/from16 v121, p10

    move-object/from16 v122, v10

    move/from16 v123, p2

    move-object/from16 v125, p13

    move/from16 v126, p12

    move-object/from16 v128, p4

    invoke-direct/range {v99 .. v128}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1117
    :cond_99b
    return-void

    .line 1083
    .restart local v8       #i:I
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v26       #tab:Z
    .restart local v30       #dir:I
    .restart local v31       #easy:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v133       #altered:Z
    .restart local v147       #firstwidth:I
    .restart local v154       #n:I
    .restart local v158       #restwidth:I
    .restart local v161       #str_dir:I
    .restart local v162       #sub:Ljava/lang/CharSequence;
    .restart local v165       #width:I
    :cond_99c
    const/4 v5, 0x0

    move/from16 v90, v5

    goto/16 :goto_8f3

    .line 202
    :cond_9a1
    move/from16 v28, v145

    goto/16 :goto_bb
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 1536
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1541
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1542
    const/4 v0, 0x0

    .line 1545
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1550
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1551
    const/4 v0, 0x0

    .line 1554
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 1559
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .parameter "line"

    .prologue
    .line 1524
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 1504
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1512
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .parameter "vertical"

    .prologue
    .line 1484
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1485
    .local v1, high:I
    const/4 v3, -0x1

    .line 1487
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1488
    .local v2, lines:[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 1489
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1490
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 1491
    move v1, v0

    goto :goto_5

    .line 1493
    :cond_19
    move v3, v0

    goto :goto_5

    .line 1496
    .end local v0           #guess:I
    :cond_1b
    if-gez v3, :cond_1f

    .line 1497
    const/4 v4, 0x0

    .line 1499
    :goto_1e
    return v4

    :cond_1f
    move v4, v3

    goto :goto_1e
.end method

.method public getLineStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1520
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 1532
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
