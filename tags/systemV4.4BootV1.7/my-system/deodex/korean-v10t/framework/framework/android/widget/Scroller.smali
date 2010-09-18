.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 6
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Scroller;->mCoeffX:F

    .line 58
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/widget/Scroller;->mCoeffY:F

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 80
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 82
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 86
    return-void
.end method

.method private viscousFluid(F)F
    .registers 6
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 337
    iget v1, p0, Landroid/widget/Scroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 338
    cmpg-float v1, p1, v3

    if-gez v1, :cond_17

    .line 339
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 345
    :goto_13
    iget v1, p0, Landroid/widget/Scroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 346
    return p1

    .line 341
    :cond_17
    const v0, 0x3ebc5ab2

    .line 342
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 343
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_13
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 354
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 356
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 176
    iget-boolean v4, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v4, :cond_7

    .line 177
    const/4 v4, 0x0

    .line 225
    :goto_6
    return v4

    .line 180
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 182
    .local v1, timePassed:I
    iget v4, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v1, v4, :cond_b6

    .line 183
    iget v4, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v4, :pswitch_data_c2

    :cond_18
    :goto_18
    move v4, v8

    .line 225
    goto :goto_6

    .line 185
    :pswitch_1a
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v3, v4, v5

    .line 187
    .local v3, x:F
    iget-object v4, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_4e

    .line 188
    invoke-direct {p0, v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 192
    :goto_27
    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    iget v5, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 193
    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    iget v5, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 194
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v4, v5, :cond_18

    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v4, v5, :cond_18

    .line 195
    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    goto :goto_18

    .line 190
    :cond_4e
    iget-object v4, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_27

    .line 199
    .end local v3           #x:F
    :pswitch_55
    int-to-float v4, v1

    const/high16 v5, 0x447a

    div-float v2, v4, v5

    .line 200
    .local v2, timePassedSeconds:F
    iget v4, p0, Landroid/widget/Scroller;->mVelocity:F

    mul-float/2addr v4, v2

    iget v5, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 203
    .local v0, distance:F
    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    iget v5, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 205
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 206
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 208
    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    iget v5, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 210
    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 211
    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 213
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v4, v5, :cond_18

    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v4, v5, :cond_18

    .line 214
    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_18

    .line 221
    .end local v0           #distance:F
    .end local v2           #timePassedSeconds:F
    :cond_b6
    iget v4, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 222
    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 223
    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_18

    .line 183
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_55
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 5
    .parameter "extend"

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 366
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 367
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 369
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 15
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 299
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/Scroller;->mMode:I

    .line 300
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 302
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 304
    .local v1, velocity:F
    iput v1, p0, Landroid/widget/Scroller;->mVelocity:F

    .line 305
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/Scroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Scroller;->mDuration:I

    .line 307
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 308
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 309
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 311
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_84

    const/high16 v2, 0x3f80

    :goto_29
    iput v2, p0, Landroid/widget/Scroller;->mCoeffX:F

    .line 312
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_87

    const/high16 v2, 0x3f80

    :goto_32
    iput v2, p0, Landroid/widget/Scroller;->mCoeffY:F

    .line 314
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 316
    .local v0, totalDistance:I
    iput p5, p0, Landroid/widget/Scroller;->mMinX:I

    .line 317
    iput p6, p0, Landroid/widget/Scroller;->mMaxX:I

    .line 318
    iput p7, p0, Landroid/widget/Scroller;->mMinY:I

    .line 319
    iput p8, p0, Landroid/widget/Scroller;->mMaxY:I

    .line 322
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 324
    iget v2, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v3, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 325
    iget v2, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v3, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 327
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 329
    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 330
    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 331
    return-void

    .line 311
    .end local v0           #totalDistance:I
    :cond_84
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_29

    .line 312
    :cond_87
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_32
.end method

.method public final forceFinished(Z)V
    .registers 2
    .parameter "finished"

    .prologue
    .line 104
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 105
    return-void
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .registers 4
    .parameter "newX"

    .prologue
    .line 376
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 377
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 379
    return-void
.end method

.method public setFinalY(I)V
    .registers 4
    .parameter "newY"

    .prologue
    .line 382
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 383
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 385
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 243
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 244
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 9
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 260
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 261
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 262
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 263
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 264
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 265
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 266
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 267
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 268
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 269
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 270
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 272
    const/high16 v0, 0x4100

    iput v0, p0, Landroid/widget/Scroller;->mViscousFluidScale:F

    .line 274
    iput v2, p0, Landroid/widget/Scroller;->mViscousFluidNormalize:F

    .line 275
    invoke-direct {p0, v2}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/Scroller;->mViscousFluidNormalize:F

    .line 276
    return-void
.end method

.method public timePassed()I
    .registers 5

    .prologue
    .line 372
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
