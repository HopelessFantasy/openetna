.class public Lcom/android/internal/widget/VerticalTextSpinner;
.super Landroid/view/View;
.source "VerticalTextSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_INTERVAL_MS:J = 0x190L

.field private static final MIN_ANIMATIONS:I = 0x4

.field private static final SCROLL_DISTANCE:I = 0x28

.field private static final SCROLL_MODE_DOWN:I = 0x2

.field private static final SCROLL_MODE_NONE:I = 0x0

.field private static final SCROLL_MODE_UP:I = 0x1

.field private static final SELECTOR_ARROW_HEIGHT:I = 0xf

.field private static final TEXT1_Y:I = -0x12

.field private static final TEXT2_Y:I = 0x16

.field private static final TEXT3_Y:I = 0x3e

.field private static final TEXT4_Y:I = 0x66

.field private static final TEXT5_Y:I = 0x8e

.field private static final TEXT_MARGIN_RIGHT:I = 0x19

.field private static final TEXT_SIZE:I = 0x16

.field private static final TEXT_SPACING:I = 0x12


# instance fields
.field private isDraggingSelector:Z

.field private final mBackgroundFocused:Landroid/graphics/drawable/Drawable;

.field private mCurrentSelectedPos:I

.field private mDelayBetweenAnimations:J

.field private mDistanceOfEachAnimation:I

.field private mDownY:I

.field private mIsAnimationRunning:Z

.field private mListener:Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;

.field private mNumberOfAnimations:I

.field private mScrollInterval:J

.field private mScrollMode:I

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private final mSelectorDefaultY:I

.field private final mSelectorFocused:Landroid/graphics/drawable/Drawable;

.field private final mSelectorHeight:I

.field private final mSelectorMaxY:I

.field private final mSelectorMinY:I

.field private final mSelectorNormal:Landroid/graphics/drawable/Drawable;

.field private mSelectorY:I

.field private mStopAnimation:Z

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mText3:Ljava/lang/String;

.field private mText4:Ljava/lang/String;

.field private mText5:Ljava/lang/String;

.field private mTextList:[Ljava/lang/String;

.field private final mTextPaintDark:Landroid/text/TextPaint;

.field private final mTextPaintLight:Landroid/text/TextPaint;

.field private mTotalAnimatedDistance:I

.field private mWrapAround:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x41b0

    const/4 v3, 0x1

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10801d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10801d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10801d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorHeight:I

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorDefaultY:I

    .line 114
    iput v5, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorMinY:I

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorMaxY:I

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 118
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    .line 120
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    iput v5, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 129
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollInterval:J

    .line 130
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->calculateAnimationValues()V

    .line 131
    return-void
.end method

.method private calculateAnimationValues()V
    .registers 5

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x4

    .line 447
    iget-wide v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollInterval:J

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 448
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mNumberOfAnimations:I

    if-ge v0, v2, :cond_1b

    .line 449
    iput v2, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 450
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int v0, v3, v0

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 451
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mDelayBetweenAnimations:J

    .line 456
    :goto_1a
    return-void

    .line 453
    :cond_1b
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int v0, v3, v0

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 454
    iget-wide v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollInterval:J

    iget v2, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mNumberOfAnimations:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mDelayBetweenAnimations:J

    goto :goto_1a
.end method

.method private calculateTextPositions()V
    .registers 2

    .prologue
    .line 404
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mText1:Ljava/lang/String;

    .line 405
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mText2:Ljava/lang/String;

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mText3:Ljava/lang/String;

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mText4:Ljava/lang/String;

    .line 408
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mText5:Ljava/lang/String;

    .line 409
    return-void
.end method

.method private canScrollDown()Z
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private canScrollUp()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 183
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    iget-object v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v0, :cond_f

    :cond_d
    move v0, v2

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V
    .registers 9
    .parameter "canvas"
    .parameter "text"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 459
    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    .line 460
    .local v0, width:I
    invoke-virtual {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0x19

    sub-int v1, v2, v3

    .line 461
    .local v1, x:I
    int-to-float v2, v1

    int-to-float v3, p3

    invoke-virtual {p1, p2, v2, v3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    return-void
.end method

.method private getNewIndex(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 420
    iget v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    add-int v0, v1, p1

    .line 421
    .local v0, index:I
    if-gez v0, :cond_13

    .line 422
    iget-boolean v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v1, :cond_11

    .line 423
    iget-object v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    move v1, v0

    .line 434
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 425
    goto :goto_10

    .line 427
    :cond_13
    iget-object v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 428
    iget-boolean v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v1, :cond_21

    .line 429
    iget-object v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_f

    :cond_21
    move v1, v2

    .line 431
    goto :goto_10
.end method

.method private getTextToDraw(I)Ljava/lang/String;
    .registers 4
    .parameter "offset"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerticalTextSpinner;->getNewIndex(I)I

    move-result v0

    .line 413
    .local v0, index:I
    if-gez v0, :cond_9

    .line 414
    const-string v1, ""

    .line 416
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_8
.end method

.method private scroll()V
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mIsAnimationRunning:Z

    if-eqz v0, :cond_5

    .line 444
    :goto_4
    return-void

    .line 441
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->invalidate()V

    goto :goto_4
.end method


# virtual methods
.method public getCurrentSelectedPos()I
    .registers 2

    .prologue
    .line 465
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 33
    .parameter "canvas"

    .prologue
    .line 250
    const/4 v13, 0x0

    .line 251
    .local v13, selectorLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    move v15, v0

    .line 252
    .local v15, selectorTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mMeasuredWidth:I

    move v14, v0

    .line 253
    .local v14, selectorRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorHeight:I

    move/from16 v28, v0

    add-int v12, v27, v28

    .line 256
    .local v12, selectorBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move v2, v15

    move v3, v14

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_41

    .line 396
    :cond_40
    :goto_40
    return-void

    .line 265
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .line 266
    .local v21, textPaintDark:Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/VerticalTextSpinner;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_28b

    .line 269
    const/16 v24, 0x0

    .line 270
    .local v24, topLeft:I
    const/16 v26, 0x0

    .line 271
    .local v26, topTop:I
    move/from16 v25, v14

    .line 272
    .local v25, topRight:I
    add-int/lit8 v23, v15, 0xf

    .line 275
    .local v23, topBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mText1:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 276
    .local v16, text1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mText2:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 277
    .local v17, text2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mText3:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 278
    .local v18, text3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mText4:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 279
    .local v19, text4:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mText5:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 280
    .local v20, text5:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    .line 286
    .local v22, textPaintLight:Landroid/text/TextPaint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 287
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x3e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 301
    const/16 v27, 0x0

    add-int/lit8 v28, v15, 0xf

    const/16 v29, 0xf

    sub-int v29, v12, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move v3, v14

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x3e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    const/4 v6, 0x0

    .line 313
    .local v6, bottomLeft:I
    const/16 v27, 0xf

    sub-int v8, v12, v27

    .line 314
    .local v8, bottomTop:I
    move v7, v14

    .line 315
    .local v7, bottomRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mMeasuredHeight:I

    move v5, v0

    .line 321
    .local v5, bottomBottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x3e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x8e

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 334
    .end local v5           #bottomBottom:I
    .end local v6           #bottomLeft:I
    .end local v7           #bottomRight:I
    .end local v8           #bottomTop:I
    .end local v16           #text1:Ljava/lang/String;
    .end local v17           #text2:Ljava/lang/String;
    .end local v18           #text3:Ljava/lang/String;
    .end local v19           #text4:Ljava/lang/String;
    .end local v20           #text5:Ljava/lang/String;
    .end local v22           #textPaintLight:Landroid/text/TextPaint;
    .end local v23           #topBottom:I
    .end local v24           #topLeft:I
    .end local v25           #topRight:I
    .end local v26           #topTop:I
    :goto_188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mIsAnimationRunning:Z

    move/from16 v27, v0

    if-eqz v27, :cond_40

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    const/16 v28, 0x28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_305

    .line 336
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2a2

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    move v10, v0

    .line 339
    .local v10, oldPos:I
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerticalTextSpinner;->getNewIndex(I)I

    move-result v9

    .line 340
    .local v9, newPos:I
    if-ltz v9, :cond_1fc

    .line 341
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mListener:Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1fc

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mListener:Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/android/internal/widget/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 346
    :cond_1fc
    if-ltz v9, :cond_21a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    sub-int v27, v27, v28

    move v0, v9

    move/from16 v1, v27

    if-lt v0, v1, :cond_222

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    move/from16 v27, v0

    if-nez v27, :cond_222

    .line 347
    :cond_21a
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 349
    :cond_222
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/VerticalTextSpinner;->calculateTextPositions()V

    .line 364
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_225
    :goto_225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_270

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    move v11, v0

    .line 370
    .local v11, previousScrollMode:I
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 371
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 372
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 377
    const-string v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_270

    .line 378
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/VerticalTextSpinner;->scroll()V

    .line 380
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 390
    .end local v11           #previousScrollMode:I
    :cond_270
    :goto_270
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mDelayBetweenAnimations:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-lez v27, :cond_34d

    .line 391
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mDelayBetweenAnimations:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/VerticalTextSpinner;->postInvalidateDelayed(J)V

    goto/16 :goto_40

    .line 332
    :cond_28b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mText3:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_188

    .line 350
    :cond_2a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_225

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    move v10, v0

    .line 352
    .restart local v10       #oldPos:I
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerticalTextSpinner;->getNewIndex(I)I

    move-result v9

    .line 353
    .restart local v9       #newPos:I
    if-ltz v9, :cond_2ec

    .line 354
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mListener:Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2ec

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mListener:Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/android/internal/widget/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 359
    :cond_2ec
    if-ltz v9, :cond_2f8

    if-nez v9, :cond_300

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    move/from16 v27, v0

    if-nez v27, :cond_300

    .line 360
    :cond_2f8
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 362
    :cond_300
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/VerticalTextSpinner;->calculateTextPositions()V

    goto/16 :goto_225

    .line 384
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_329

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto/16 :goto_270

    .line 386
    :cond_329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_270

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto/16 :goto_270

    .line 393
    :cond_34d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/VerticalTextSpinner;->invalidate()V

    goto/16 :goto_40
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 189
    if-eqz p1, :cond_c

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 197
    :goto_b
    return-void

    .line 193
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 195
    iget v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 164
    const/16 v0, 0x13

    if-ne p1, v0, :cond_15

    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 165
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 166
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->scroll()V

    .line 167
    iput-boolean v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    move v0, v1

    .line 175
    :goto_14
    return v0

    .line 169
    :cond_15
    const/16 v0, 0x14

    if-ne p1, v0, :cond_28

    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 170
    iput v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 171
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->scroll()V

    .line 172
    iput-boolean v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    move v0, v1

    .line 173
    goto :goto_14

    .line 175
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 204
    .local v2, y:I
    packed-switch v0, :pswitch_data_78

    .line 238
    :pswitch_f
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    .line 239
    iput-boolean v5, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->invalidate()V

    .line 243
    :cond_18
    :goto_18
    return v5

    .line 206
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->requestFocus()Z

    .line 207
    iput v2, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mDownY:I

    .line 208
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    if-lt v2, v3, :cond_31

    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    iget-object v4, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_31

    move v3, v5

    :goto_2e
    iput-boolean v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->isDraggingSelector:Z

    goto :goto_18

    :cond_31
    move v3, v6

    goto :goto_2e

    .line 212
    :pswitch_33
    iget-boolean v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->isDraggingSelector:Z

    if-eqz v3, :cond_18

    .line 213
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorDefaultY:I

    iget v4, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mDownY:I

    sub-int v4, v2, v4

    add-int v1, v3, v4

    .line 214
    .local v1, top:I
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorMinY:I

    if-gt v1, v3, :cond_59

    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 215
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorMinY:I

    iput v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    .line 216
    iput-boolean v6, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 217
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    if-eq v3, v7, :cond_18

    .line 218
    iput v7, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 219
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->scroll()V

    goto :goto_18

    .line 221
    :cond_59
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorMaxY:I

    if-lt v1, v3, :cond_73

    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 222
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorMaxY:I

    iput v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    .line 223
    iput-boolean v6, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    .line 224
    iget v3, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    if-eq v3, v5, :cond_18

    .line 225
    iput v5, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollMode:I

    .line 226
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->scroll()V

    goto :goto_18

    .line 229
    :cond_73
    iput v1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mSelectorY:I

    .line 230
    iput-boolean v5, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mStopAnimation:Z

    goto :goto_18

    .line 204
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_19
        :pswitch_f
        :pswitch_33
    .end packed-switch
.end method

.method public setItems([Ljava/lang/String;)V
    .registers 2
    .parameter "textList"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->calculateTextPositions()V

    .line 140
    return-void
.end method

.method public setOnChangeListener(Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mListener:Lcom/android/internal/widget/VerticalTextSpinner$OnChangedListener;

    .line 135
    return-void
.end method

.method public setScrollInterval(J)V
    .registers 3
    .parameter "interval"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mScrollInterval:J

    .line 150
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->calculateAnimationValues()V

    .line 151
    return-void
.end method

.method public setSelectedPos(I)V
    .registers 2
    .parameter "selectedPos"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->calculateTextPositions()V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/VerticalTextSpinner;->postInvalidate()V

    .line 146
    return-void
.end method

.method public setWrapAround(Z)V
    .registers 2
    .parameter "wrap"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/internal/widget/VerticalTextSpinner;->mWrapAround:Z

    .line 155
    return-void
.end method
