.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field mCycleFlip:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMore:Z

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 98
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 104
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 110
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 116
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 122
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 127
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 149
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 154
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 161
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 178
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 179
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 181
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 183
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 184
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 191
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 98
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 104
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 110
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 116
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 122
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 127
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 132
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 149
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 154
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 161
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 178
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 179
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 181
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 182
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 183
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 184
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 202
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 207
    const/16 v2, 0x8

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 208
    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 209
    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 211
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 212
    .local v1, resID:I
    if-lez v1, :cond_7c

    .line 213
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 216
    :cond_7c
    const/4 v2, 0x5

    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 217
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 219
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 221
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 781
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 229
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 230
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 231
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 232
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 233
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .registers 5

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method protected ensureInterpolator()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_b

    .line 654
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 656
    :cond_b
    return-void
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 545
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .registers 2

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .registers 2

    .prologue
    .line 587
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .registers 16
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "invalidate"
    .parameter "transformation"

    .prologue
    const/high16 v8, -0x4080

    .line 820
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 821
    .local v2, tempRegion:Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 823
    .local v0, previousRegion:Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 824
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 826
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 827
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 828
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 830
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 832
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 833
    .local v3, tempTransformation:Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 835
    .local v1, previousTransformation:Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 836
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 837
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 838
    return-void
.end method

.method public getRepeatCount()I
    .registers 2

    .prologue
    .line 576
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 565
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 555
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 535
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 15
    .parameter "currentTime"
    .parameter "outTransformation"

    .prologue
    .line 679
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    .line 680
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 683
    :cond_a
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    .line 684
    .local v5, startOffset:J
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 686
    .local v0, duration:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_a3

    .line 687
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v7, v5

    sub-long v7, p1, v7

    long-to-float v7, v7

    long-to-float v8, v0

    div-float v4, v7, v8

    .line 694
    .local v4, normalizedTime:F
    :goto_1f
    const/high16 v7, 0x3f80

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_b1

    const/4 v7, 0x1

    move v2, v7

    .line 695
    .local v2, expired:Z
    :goto_27
    if-nez v2, :cond_b5

    const/4 v7, 0x1

    :goto_2a
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 697
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v7, :cond_3b

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 699
    :cond_3b
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-gez v7, :cond_44

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v7, :cond_7e

    :cond_44
    const/high16 v7, 0x3f80

    cmpg-float v7, v4, v7

    if-lez v7, :cond_4e

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v7, :cond_7e

    .line 700
    :cond_4e
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v7, :cond_5e

    .line 701
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_5b

    .line 702
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 704
    :cond_5b
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 707
    :cond_5e
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v7, :cond_6d

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 709
    :cond_6d
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_75

    .line 710
    const/high16 v7, 0x3f80

    sub-float v4, v7, v4

    .line 713
    :cond_75
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 714
    .local v3, interpolatedTime:F
    invoke-virtual {p0, v3, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 717
    .end local v3           #interpolatedTime:F
    :cond_7e
    if-eqz v2, :cond_96

    .line 718
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v8, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-ne v7, v8, :cond_b8

    .line 719
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v7, :cond_96

    .line 720
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_93

    .line 721
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 723
    :cond_93
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 743
    :cond_96
    :goto_96
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v7, :cond_e1

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v7, :cond_e1

    .line 744
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 745
    const/4 v7, 0x1

    .line 748
    :goto_a2
    return v7

    .line 691
    .end local v2           #expired:Z
    .end local v4           #normalizedTime:F
    :cond_a3
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v7, p1, v7

    if-gez v7, :cond_ad

    const/4 v7, 0x0

    move v4, v7

    .restart local v4       #normalizedTime:F
    :goto_ab
    goto/16 :goto_1f

    .end local v4           #normalizedTime:F
    :cond_ad
    const/high16 v7, 0x3f80

    move v4, v7

    goto :goto_ab

    .line 694
    .restart local v4       #normalizedTime:F
    :cond_b1
    const/4 v7, 0x0

    move v2, v7

    goto/16 :goto_27

    .line 695
    .restart local v2       #expired:Z
    :cond_b5
    const/4 v7, 0x0

    goto/16 :goto_2a

    .line 726
    :cond_b8
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v7, :cond_c2

    .line 727
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 730
    :cond_c2
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_ce

    .line 731
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-nez v7, :cond_df

    const/4 v7, 0x1

    :goto_cc
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 734
    :cond_ce
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 735
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 737
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_96

    .line 738
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_96

    .line 731
    :cond_df
    const/4 v7, 0x0

    goto :goto_cc

    .line 748
    :cond_e1
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    goto :goto_a2
.end method

.method public getZAdjustment()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasEnded()Z
    .registers 2

    .prologue
    .line 766
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 757
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 279
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v6, -0x4080

    .line 849
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 850
    .local v1, region:Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 852
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 853
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v2, :cond_18

    .line 854
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 855
    .local v0, previousTransformation:Landroid/view/animation/Transformation;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 857
    .end local v0           #previousTransformation:Landroid/view/animation/Transformation;
    :cond_18
    return-void
.end method

.method public isFillEnabled()Z
    .registers 2

    .prologue
    .line 454
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 243
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 244
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 245
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 246
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 247
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 248
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 249
    return-void
.end method

.method protected resolveSize(IFII)F
    .registers 6
    .parameter "type"
    .parameter "value"
    .parameter "size"
    .parameter "parentSize"

    .prologue
    .line 795
    packed-switch p1, :pswitch_data_e

    move v0, p2

    .line 803
    :goto_4
    return v0

    :pswitch_5
    move v0, p2

    .line 797
    goto :goto_4

    .line 799
    :pswitch_7
    int-to-float v0, p3

    mul-float/2addr v0, p2

    goto :goto_4

    .line 801
    :pswitch_a
    int-to-float v0, p4

    mul-float/2addr v0, p2

    goto :goto_4

    .line 795
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .registers 12
    .parameter "durationMillis"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 344
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_10

    .line 345
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 346
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 347
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 374
    :cond_f
    :goto_f
    return-void

    .line 351
    :cond_10
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long v0, v2, v4

    .line 352
    .local v0, dur:J
    cmp-long v2, v0, p1

    if-lez v2, :cond_21

    .line 353
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 354
    move-wide v0, p1

    .line 357
    :cond_21
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2c

    .line 358
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 359
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_f

    .line 365
    :cond_2c
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v2, :cond_3f

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3f

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_f

    .line 369
    :cond_3f
    div-long v2, p1, v0

    long-to-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 370
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v2, :cond_f

    .line 371
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_f
.end method

.method public scaleCurrentDuration(F)V
    .registers 4
    .parameter "scale"

    .prologue
    .line 382
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 383
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 645
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 646
    return-void
.end method

.method public setDuration(J)V
    .registers 5
    .parameter "durationMillis"

    .prologue
    .line 327
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_e
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 331
    return-void
.end method

.method public setFillAfter(Z)V
    .registers 2
    .parameter "fillAfter"

    .prologue
    .line 503
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 504
    return-void
.end method

.method public setFillBefore(Z)V
    .registers 2
    .parameter "fillBefore"

    .prologue
    .line 486
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 487
    return-void
.end method

.method public setFillEnabled(Z)V
    .registers 2
    .parameter "fillEnabled"

    .prologue
    .line 469
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 470
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 290
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 291
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .parameter "i"

    .prologue
    .line 301
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 302
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2
    .parameter "repeatCount"

    .prologue
    .line 441
    if-gez p1, :cond_3

    .line 442
    const/4 p1, -0x1

    .line 444
    :cond_3
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 445
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2
    .parameter "repeatMode"

    .prologue
    .line 428
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 429
    return-void
.end method

.method public setStartOffset(J)V
    .registers 3
    .parameter "startOffset"

    .prologue
    .line 314
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 315
    return-void
.end method

.method public setStartTime(J)V
    .registers 4
    .parameter "startTimeMillis"

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 397
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 398
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 399
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 401
    return-void
.end method

.method public setZAdjustment(I)V
    .registers 2
    .parameter "zAdjustment"

    .prologue
    .line 514
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 515
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 408
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 409
    return-void
.end method

.method public startNow()V
    .registers 3

    .prologue
    .line 416
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 417
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method
