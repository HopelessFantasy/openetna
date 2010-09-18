.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 390
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .registers 19
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 125
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 129
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 23
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 144
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 148
    if-eqz p9, :cond_c

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_2a

    .line 149
    :cond_c
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 150
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 152
    const/4 v11, 0x1

    .line 164
    .local v11, trust:Z
    :goto_15
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 166
    return-void

    .line 154
    .end local v11           #trust:Z
    :cond_2a
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 160
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 161
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_15
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .registers 3
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 11
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"

    .prologue
    .line 241
    const/16 v0, 0x1f4

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 242
    .local v6, temp:[C
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 243
    .local v4, len:I
    const/4 v1, 0x1

    .line 246
    .local v1, boring:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    :goto_d
    if-ge v3, v4, :cond_71

    .line 247
    add-int/lit16 v0, v3, 0x1f4

    .line 249
    .local v0, j:I
    if-le v0, v4, :cond_14

    .line 250
    move v0, v4

    .line 252
    :cond_14
    const/4 v2, 0x0

    invoke-static {p0, v3, v0, v6, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 254
    sub-int v5, v0, v3

    .line 256
    .local v5, n:I
    const/4 v0, 0x0

    .local v0, a:I
    :goto_1b
    if-ge v0, v5, :cond_68

    .line 257
    aget-char v2, v6, v0

    .line 260
    .local v2, c:C
    const/16 v7, 0xa

    if-eq v2, v7, :cond_3d

    const/16 v7, 0x9

    if-eq v2, v7, :cond_3d

    const/16 v7, 0x590

    if-lt v2, v7, :cond_2f

    const/16 v7, 0x8ff

    if-le v2, v7, :cond_3d

    :cond_2f
    const/16 v7, 0x200f

    if-eq v2, v7, :cond_3d

    const v7, 0xfb1d

    if-lt v2, v7, :cond_65

    const v7, 0xfeff

    if-gt v2, v7, :cond_65

    .line 264
    :cond_3d
    const/4 v0, 0x0

    .line 270
    .end local v1           #boring:Z
    .end local v2           #c:C
    .end local v5           #n:I
    .local v0, boring:Z
    :goto_3e
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 272
    if-eqz v0, :cond_6f

    .line 273
    move-object v5, p2

    .line 274
    .local v5, fm:Landroid/text/BoringLayout$Metrics;
    if-nez v5, :cond_4b

    .line 275
    new-instance v5, Landroid/text/BoringLayout$Metrics;

    .end local v5           #fm:Landroid/text/BoringLayout$Metrics;
    invoke-direct {v5}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 280
    .restart local v5       #fm:Landroid/text/BoringLayout$Metrics;
    :cond_4b
    sget-object p2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local p2
    monitor-enter p2

    .line 281
    :try_start_4e
    sget-object v1, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .end local v3           #i:I
    move-result v4

    .end local v4           #len:I
    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v0           #boring:Z
    move-result p0

    .end local p0
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    .line 283
    .local p0, wid:I
    monitor-exit p2
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_6c

    .line 284
    iput p0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move-object p0, v5

    .line 287
    .end local v5           #fm:Landroid/text/BoringLayout$Metrics;
    .end local p0           #wid:I
    :goto_64
    return-object p0

    .line 256
    .local v0, a:I
    .restart local v1       #boring:Z
    .restart local v2       #c:C
    .restart local v3       #i:I
    .restart local v4       #len:I
    .local v5, n:I
    .local p0, text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 246
    .end local v2           #c:C
    :cond_68
    add-int/lit16 v0, v3, 0x1f4

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    goto :goto_d

    .line 283
    .end local v1           #boring:Z
    .end local v3           #i:I
    .end local v4           #len:I
    .end local p0           #text:Ljava/lang/CharSequence;
    .end local p2
    .local v5, fm:Landroid/text/BoringLayout$Metrics;
    :catchall_6c
    move-exception p0

    :try_start_6d
    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p0

    .line 287
    .end local v5           #fm:Landroid/text/BoringLayout$Metrics;
    .local v0, boring:Z
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_6f
    const/4 p0, 0x0

    goto :goto_64

    .end local v0           #boring:Z
    .restart local v1       #boring:Z
    :cond_71
    move v0, v1

    .end local v1           #boring:Z
    .restart local v0       #boring:Z
    goto :goto_3e
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 17
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 43
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 21
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 54
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 9
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffset"

    .prologue
    .line 362
    iget-object v0, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 365
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_1b

    if-nez p2, :cond_1b

    .line 366
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 370
    :goto_1a
    return-void

    .line 368
    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_1a
.end method

.method public ellipsized(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 376
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 377
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 378
    return-void
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 343
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 348
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 3
    .parameter "line"

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 307
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 330
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .registers 3
    .parameter "line"

    .prologue
    .line 326
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 311
    if-nez p1, :cond_4

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_3
.end method

.method public getLineTop(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 300
    if-nez p1, :cond_4

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_3
    return v0

    :cond_4
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    goto :goto_3
.end method

.method public getParagraphDirection(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .registers 17
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "trustWidth"

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/BoringLayout;->mIsBoring:Z

    .line 179
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4e

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p4, v0, :cond_4e

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 185
    :goto_11
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 187
    if-eqz p8, :cond_52

    .line 188
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v6, v0, v1

    .line 193
    .local v6, spacing:I
    :goto_1b
    const/high16 v0, 0x3f80

    cmpl-float v0, p5, v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-eqz v0, :cond_2d

    .line 194
    :cond_26
    int-to-float v0, v6

    mul-float/2addr v0, p5

    add-float/2addr v0, p6

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 197
    :cond_2d
    iput v6, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 199
    if-eqz p8, :cond_59

    .line 200
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->top:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 205
    :goto_36
    if-eqz p9, :cond_5f

    .line 206
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .line 220
    .end local v6           #spacing:I
    :goto_3d
    if-eqz p8, :cond_4d

    .line 221
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->top:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 222
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 224
    :cond_4d
    return-void

    .line 182
    :cond_4e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_11

    .line 190
    :cond_52
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v6, v0, v1

    .restart local v6       #spacing:I
    goto :goto_1b

    .line 202
    :cond_59
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_36

    .line 213
    :cond_5f
    sget-object v6, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local v6           #spacing:I
    monitor-enter v6

    .line 214
    :try_start_62
    sget-object v1, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .line 217
    monitor-exit v6

    goto :goto_3d

    :catchall_7a
    move-exception v0

    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 19
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 69
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 72
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 76
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 78
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 23
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 95
    if-eqz p9, :cond_9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_2a

    .line 96
    :cond_9
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 99
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 100
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 102
    const/4 v11, 0x1

    .line 113
    .local v11, trust:Z
    :goto_15
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 115
    return-object p0

    .line 104
    .end local v11           #trust:Z
    :cond_2a
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 109
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 110
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_15
.end method
