.class public Llge/android/buttonflicking/temp;
.super Landroid/widget/FrameLayout;
.source "temp.java"


# static fields
.field private static final ANIM_DURATION:I = 0x190

.field private static final LEFT:I = 0x8

.field private static final MAJOR_MOVE:I = 0x3c

.field private static final NONE:I = 0x1

.field private static final RIGHT:I = 0x9


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

    iput v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Llge/android/buttonflicking/temp$1;

    invoke-direct {v1, p0}, Llge/android/buttonflicking/temp$1;-><init>(Llge/android/buttonflicking/temp;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Llge/android/buttonflicking/temp;->mGestureDetector:Landroid/view/GestureDetector;

    .line 73
    return-void
.end method


# virtual methods
.method getCurrentIndex()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    return v0
.end method

.method moveLeft()V
    .registers 4

    .prologue
    .line 139
    iget v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    iget-object v1, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3e

    .line 141
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/temp;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/temp;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    .line 149
    :cond_3e
    return-void
.end method

.method moveRight()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 153
    iget v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    if-lez v0, :cond_37

    .line 155
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/temp;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/temp;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    sub-int/2addr v0, v2

    iput v0, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    .line 163
    :cond_37
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 116
    invoke-virtual {p0}, Llge/android/buttonflicking/temp;->getChildCount()I

    move-result v0

    .line 117
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_23

    .line 119
    iget-object v2, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    invoke-virtual {p0, v1}, Llge/android/buttonflicking/temp;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 120
    iget v2, p0, Llge/android/buttonflicking/temp;->mCurrentView:I

    if-eq v1, v2, :cond_20

    .line 121
    iget-object v2, p0, Llge/android/buttonflicking/temp;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 124
    :cond_23
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 134
    iget-object v0, p0, Llge/android/buttonflicking/temp;->mGestureDetector:Landroid/view/GestureDetector;

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

    .line 103
    iput p1, p0, Llge/android/buttonflicking/temp;->mWidth:I

    .line 104
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/temp;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/temp;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 105
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/temp;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/temp;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 106
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/temp;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/temp;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 107
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/temp;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/temp;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 109
    iget-object v0, p0, Llge/android/buttonflicking/temp;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 110
    iget-object v0, p0, Llge/android/buttonflicking/temp;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 111
    iget-object v0, p0, Llge/android/buttonflicking/temp;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 112
    iget-object v0, p0, Llge/android/buttonflicking/temp;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 113
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 128
    iget-object v0, p0, Llge/android/buttonflicking/temp;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method
