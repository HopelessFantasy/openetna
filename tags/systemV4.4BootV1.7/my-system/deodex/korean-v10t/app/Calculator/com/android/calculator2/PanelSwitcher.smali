.class Lcom/android/calculator2/PanelSwitcher;
.super Landroid/widget/FrameLayout;
.source "PanelSwitcher.java"


# static fields
.field private static final ANIM_DURATION:I = 0x190

.field private static final LEFT:I = 0x2

.field private static final MAJOR_MOVE:I = 0x3c

.field private static final NONE:I = 0x1

.field private static final RIGHT:I = 0x3


# instance fields
.field private children:[Landroid/view/View;

.field private inLeft:Landroid/view/animation/TranslateAnimation;

.field private inRight:Landroid/view/animation/TranslateAnimation;

.field private mChild:Landroid/view/View;

.field private mCurrentView:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHistoryView:Landroid/view/View;

.field private mPreviousMove:I

.field private mWidth:I

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calculator2/PanelSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/calculator2/PanelSwitcher$1;-><init>(Lcom/android/calculator2/PanelSwitcher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 73
    return-void
.end method


# virtual methods
.method getCurrentIndex()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    return v0
.end method

.method moveLeft()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 113
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_45

    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    if-eq v0, v3, :cond_45

    .line 114
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 120
    iput v3, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    .line 122
    :cond_45
    return-void
.end method

.method moveRight()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 126
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    if-lez v0, :cond_3e

    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    if-eq v0, v3, :cond_3e

    .line 127
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 133
    iput v3, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    .line 135
    :cond_3e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/calculator2/PanelSwitcher;->getChildCount()I

    move-result v0

    .line 91
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    .line 92
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_23

    .line 93
    iget-object v2, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/PanelSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 94
    iget v2, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    if-eq v1, v2, :cond_20

    .line 95
    iget-object v2, p0, Lcom/android/calculator2/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 98
    :cond_23
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v3, 0x190

    const/4 v2, 0x0

    .line 77
    iput p1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    .line 78
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 79
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 80
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 81
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 83
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 84
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 85
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 86
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    const/4 v0, 0x1

    return v0
.end method
