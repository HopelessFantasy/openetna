.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 38
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 39
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 46
    invoke-direct {p0}, Landroid/widget/ViewAnimator;->initViewAnimator()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v3, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 38
    iput-boolean v4, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 39
    iput-boolean v4, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 52
    sget-object v2, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 54
    .local v1, resource:I
    if-lez v1, :cond_1a

    .line 55
    invoke-virtual {p0, p1, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 58
    :cond_1a
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 59
    if-lez v1, :cond_23

    .line 60
    invoke-virtual {p0, p1, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 62
    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {p0}, Landroid/widget/ViewAnimator;->initViewAnimator()V

    .line 65
    return-void
.end method

.method private initViewAnimator()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mMeasureAllChildren:Z

    .line 69
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_e
    return-void

    .line 146
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    goto :goto_e
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 155
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 160
    .local v0, index:I
    if-ltz v0, :cond_9

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 163
    :cond_9
    return-void
.end method

.method public removeViewAt(I)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 169
    .local v0, childCount:I
    if-nez v0, :cond_10

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 171
    iput-boolean v2, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 179
    :cond_f
    :goto_f
    return-void

    .line 172
    :cond_10
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v1, v0, :cond_1a

    .line 174
    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_f

    .line 175
    :cond_1a
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-ne v1, p1, :cond_f

    .line 177
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_f
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public removeViews(II)V
    .registers 5
    .parameter "start"
    .parameter "count"

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 194
    :cond_f
    :goto_f
    return-void

    .line 190
    :cond_10
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_f

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 192
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_f
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    .line 198
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .registers 2
    .parameter "animate"

    .prologue
    .line 293
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 294
    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 6
    .parameter "whichChild"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 78
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1f

    .line 79
    iput v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 83
    :cond_c
    :goto_c
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_29

    move v0, v3

    .line 85
    .local v0, hasFocus:Z
    :goto_13
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    .line 86
    if-eqz v0, :cond_1e

    .line 88
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    .line 90
    :cond_1e
    return-void

    .line 80
    .end local v0           #hasFocus:Z
    :cond_1f
    if-gez p1, :cond_c

    .line 81
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    goto :goto_c

    :cond_29
    move v0, v2

    .line 83
    goto :goto_13
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 269
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 270
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "inAnimation"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 233
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 282
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 283
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "outAnimation"

    .prologue
    .line 256
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 257
    return-void
.end method

.method public showNext()V
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 104
    return-void
.end method

.method showOnly(I)V
    .registers 8
    .parameter "childIndex"

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    .line 122
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v1, :cond_48

    .line 123
    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, child:Landroid/view/View;
    if-ne v2, p1, :cond_27

    .line 125
    iget-boolean v3, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v3, :cond_16

    iget-boolean v3, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v3, :cond_1f

    :cond_16
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1f

    .line 126
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :cond_1f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 122
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 131
    :cond_27
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3c

    .line 132
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    :cond_36
    :goto_36
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 133
    :cond_3c
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_36

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_36

    .line 138
    .end local v0           #child:Landroid/view/View;
    :cond_48
    return-void
.end method

.method public showPrevious()V
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 111
    return-void
.end method
