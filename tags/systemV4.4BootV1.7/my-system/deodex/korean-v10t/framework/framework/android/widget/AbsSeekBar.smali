.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 48
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 48
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 48
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 64
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 70
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 338
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 340
    :cond_a
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 14
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 218
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 219
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 220
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 221
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 224
    iget v7, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 226
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 229
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_2b

    .line 230
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 231
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 232
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 239
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_25
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    return-void

    .line 234
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_2b
    move v6, p4

    .line 235
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_25
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 308
    .local v4, width:I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 309
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 311
    .local v5, x:I
    const/4 v2, 0x0

    .line 312
    .local v2, progress:F
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_2a

    .line 313
    const/4 v3, 0x0

    .line 321
    .local v3, scale:F
    :goto_17
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 322
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 323
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3e

    .line 324
    const/4 v2, 0x0

    .line 329
    :cond_24
    :goto_24
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 330
    return-void

    .line 314
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_2a
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_33

    .line 315
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_17

    .line 317
    .end local v3           #scale:F
    :cond_33
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 318
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_17

    .line 325
    .restart local v1       #max:I
    :cond_3e
    int-to-float v6, v1

    cmpl-float v6, v2, v6

    if-lez v6, :cond_24

    .line 326
    int-to-float v2, v1

    goto :goto_24
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 152
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 154
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    :cond_14
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 158
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 159
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    .end local v1           #state:[I
    :cond_29
    return-void

    .line 154
    :cond_2a
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumbOffset()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1f

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 253
    :cond_1f
    monitor-exit p0

    return-void

    .line 244
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .registers 1

    .prologue
    .line 359
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 363
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 365
    .local v0, progress:I
    packed-switch p1, :pswitch_data_2c

    .line 379
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_c
    return v1

    .line 367
    :pswitch_d
    if-lez v0, :cond_8

    .line 368
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 369
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    move v1, v2

    .line 370
    goto :goto_c

    .line 373
    :pswitch_1b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 374
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 375
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    move v1, v2

    .line 376
    goto :goto_c

    .line 365
    :pswitch_data_2c
    .packed-switch 0x15
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 259
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4c

    const/4 v4, 0x0

    move v3, v4

    .line 260
    .local v3, thumbHeight:I
    :goto_b
    const/4 v2, 0x0

    .line 261
    .local v2, dw:I
    const/4 v1, 0x0

    .line 262
    .local v1, dh:I
    if-eqz v0, :cond_33

    .line 263
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 264
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 265
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 267
    :cond_33
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 268
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 270
    invoke-static {v2, p1}, Landroid/widget/AbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Landroid/widget/AbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_54

    .line 272
    monitor-exit p0

    return-void

    .line 259
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_4c
    :try_start_4c
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_54

    move-result v4

    move v3, v4

    goto :goto_b

    .line 257
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .registers 6
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 166
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    .line 167
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 173
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 175
    :cond_10
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 18
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 182
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_47

    const/4 v8, 0x0

    move v6, v8

    .line 185
    .local v6, thumbHeight:I
    :goto_a
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v9, p2, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 187
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 188
    .local v3, max:I
    if-lez v3, :cond_4d

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    move v4, v8

    .line 190
    .local v4, scale:F
    :goto_25
    if-le v6, v7, :cond_50

    .line 191
    if-eqz v5, :cond_2d

    .line 192
    const/4 v8, 0x0

    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 194
    :cond_2d
    sub-int v8, v6, v7

    div-int/lit8 v2, v8, 0x2

    .line 195
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_46

    .line 197
    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    .end local v2           #gapForCenteringTrack:I
    :cond_46
    :goto_46
    return-void

    .line 182
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_47
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move v6, v8

    goto :goto_a

    .line 188
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_4d
    const/4 v8, 0x0

    move v4, v8

    goto :goto_25

    .line 202
    .restart local v4       #scale:F
    :cond_50
    if-eqz v0, :cond_65

    .line 204
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    :cond_65
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 208
    .local v1, gap:I
    if-eqz v5, :cond_46

    .line 209
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_46
.end method

.method onStartTrackingTouch()V
    .registers 1

    .prologue
    .line 346
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 1

    .prologue
    .line 353
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 276
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    move v0, v1

    .line 303
    :goto_d
    return v0

    .line 280
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    :goto_15
    move v0, v2

    .line 303
    goto :goto_d

    .line 282
    :pswitch_17
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 284
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_15

    .line 288
    :pswitch_21
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 289
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_15

    .line 293
    :pswitch_28
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 294
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 295
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_15

    .line 299
    :pswitch_32
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 300
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_15

    .line 280
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_28
        :pswitch_21
        :pswitch_32
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .registers 3
    .parameter "increment"

    .prologue
    .line 117
    if-gez p1, :cond_6

    neg-int v0, p1

    :goto_3
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 118
    return-void

    :cond_6
    move v0, p1

    .line 117
    goto :goto_3
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .parameter "max"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 136
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_27

    .line 139
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 141
    :cond_27
    monitor-exit p0

    return-void

    .line 134
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "thumb"

    .prologue
    .line 85
    if-eqz p1, :cond_5

    .line 86
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    :cond_5
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 90
    return-void
.end method

.method public setThumbOffset(I)V
    .registers 2
    .parameter "thumbOffset"

    .prologue
    .line 106
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 107
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 108
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 145
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
