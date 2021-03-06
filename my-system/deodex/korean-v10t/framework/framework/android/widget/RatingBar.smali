.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 86
    sget-object v4, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 89
    .local v1, numStars:I
    const/4 v4, 0x3

    iget-boolean v5, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    if-nez v5, :cond_4d

    move v5, v9

    :goto_1d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 90
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 91
    .local v2, rating:F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 92
    .local v3, stepSize:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    if-lez v1, :cond_39

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_39

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 98
    :cond_39
    cmpl-float v4, v3, v8

    if-ltz v4, :cond_4f

    .line 99
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 104
    :goto_40
    cmpl-float v4, v2, v8

    if-ltz v4, :cond_47

    .line 105
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 110
    :cond_47
    const v4, 0x3f8ccccd

    iput v4, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    .line 111
    return-void

    .end local v2           #rating:F
    .end local v3           #stepSize:F
    :cond_4d
    move v5, v6

    .line 89
    goto :goto_1d

    .line 101
    .restart local v2       #rating:F
    .restart local v3       #stepSize:F
    :cond_4f
    const/high16 v4, 0x3f00

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_40
.end method

.method private getProgressPerStar()F
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 230
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-lez v0, :cond_11

    .line 231
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 233
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private updateSecondaryProgress(I)V
    .registers 9
    .parameter "progress"

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    .line 265
    .local v1, ratio:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_17

    .line 266
    int-to-float v3, p1

    div-float v0, v3, v1

    .line 267
    .local v0, progressInStars:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 268
    .local v2, secondaryProgress:I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 270
    .end local v0           #progressInStars:F
    .end local v2           #secondaryProgress:I
    :cond_17
    return-void
.end method


# virtual methods
.method dispatchRatingChange(Z)V
    .registers 4
    .parameter "fromUser"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_d

    .line 308
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 311
    :cond_d
    return-void
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 2

    .prologue
    .line 240
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method onKeyChange()V
    .registers 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 304
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 276
    iget-object v1, p0, Landroid/widget/RatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1b

    .line 279
    iget-object v1, p0, Landroid/widget/RatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int v0, v1, v2

    .line 280
    .local v0, width:I
    invoke-static {v0, p1}, Landroid/widget/RatingBar;->resolveSize(II)I

    move-result v1

    iget v2, p0, Landroid/widget/RatingBar;->mMeasuredHeight:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 282
    .end local v0           #width:I
    :cond_1b
    monitor-exit p0

    return-void

    .line 274
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZ)V
    .registers 4
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 248
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    .line 250
    if-nez p2, :cond_10

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 254
    :cond_10
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 288
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 289
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 3

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 295
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_f

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 298
    :cond_f
    return-void
.end method

.method public setIsIndicator(Z)V
    .registers 5
    .parameter "isIndicator"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    if-nez p1, :cond_e

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    .line 146
    if-nez p1, :cond_10

    move v0, v2

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(Z)V

    .line 147
    return-void

    :cond_e
    move v0, v1

    .line 145
    goto :goto_5

    :cond_10
    move v0, v1

    .line 146
    goto :goto_a
.end method

.method public declared-synchronized setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 316
    monitor-enter p0

    if-gtz p1, :cond_5

    .line 321
    :goto_3
    monitor-exit p0

    return-void

    .line 320
    :cond_5
    :try_start_5
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_3

    .line 316
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNumStars(I)V
    .registers 2
    .parameter "numStars"

    .prologue
    .line 164
    if-gtz p1, :cond_3

    .line 172
    :goto_2
    return-void

    .line 168
    :cond_3
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 171
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    goto :goto_2
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 128
    return-void
.end method

.method public setRating(F)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 189
    return-void
.end method

.method public setStepSize(F)V
    .registers 6
    .parameter "stepSize"

    .prologue
    .line 207
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_6

    .line 215
    :goto_5
    return-void

    .line 211
    :cond_6
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v2, v2

    div-float v0, v2, p1

    .line 212
    .local v0, newMax:F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 213
    .local v1, newProgress:I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 214
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    goto :goto_5
.end method
