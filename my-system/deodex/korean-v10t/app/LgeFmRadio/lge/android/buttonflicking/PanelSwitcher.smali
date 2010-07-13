.class public Llge/android/buttonflicking/PanelSwitcher;
.super Landroid/widget/FrameLayout;
.source "PanelSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x190

.field private static final LEFT:I = 0x8

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"

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

.field private mUpdateChannelSwingCallback:Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;

.field private mWidth:I

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    .line 61
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Llge/android/buttonflicking/PanelSwitcher$1;

    invoke-direct {v1, p0}, Llge/android/buttonflicking/PanelSwitcher$1;-><init>(Llge/android/buttonflicking/PanelSwitcher;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 85
    return-void
.end method


# virtual methods
.method getCurrentIndex()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    return v0
.end method

.method moveLeft()V
    .registers 4

    .prologue
    .line 166
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_10

    .line 168
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mUpdateChannelSwingCallback:Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    invoke-interface {v0, v1}, Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;->onUpdate(I)V

    .line 182
    :goto_f
    return-void

    .line 171
    :cond_10
    iget v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4e

    .line 173
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    .line 181
    :cond_4e
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mUpdateChannelSwingCallback:Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    invoke-interface {v0, v1}, Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;->onUpdate(I)V

    goto :goto_f
.end method

.method moveRight()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_11

    .line 188
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mUpdateChannelSwingCallback:Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    invoke-interface {v0, v1}, Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;->onUpdate(I)V

    .line 202
    :goto_10
    return-void

    .line 191
    :cond_11
    iget v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    if-lez v0, :cond_47

    .line 193
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v0, v2

    iput v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    .line 201
    :cond_47
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mUpdateChannelSwingCallback:Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    invoke-interface {v0, v1}, Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;->onUpdate(I)V

    goto :goto_10
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 143
    invoke-virtual {p0}, Llge/android/buttonflicking/PanelSwitcher;->getChildCount()I

    move-result v0

    .line 144
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_23

    .line 146
    iget-object v2, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    invoke-virtual {p0, v1}, Llge/android/buttonflicking/PanelSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 147
    iget v2, p0, Llge/android/buttonflicking/PanelSwitcher;->mCurrentView:I

    if-eq v1, v2, :cond_20

    .line 148
    iget-object v2, p0, Llge/android/buttonflicking/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 151
    :cond_23
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 161
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

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

    .line 130
    iput p1, p0, Llge/android/buttonflicking/PanelSwitcher;->mWidth:I

    .line 131
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 132
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 133
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Llge/android/buttonflicking/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 136
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 137
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 138
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 139
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 155
    iget-object v0, p0, Llge/android/buttonflicking/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallBack(Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 115
    iput-object p1, p0, Llge/android/buttonflicking/PanelSwitcher;->mUpdateChannelSwingCallback:Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;

    .line 116
    return-void
.end method
