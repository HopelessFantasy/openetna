.class public Lcom/android/server/status/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarView"


# instance fields
.field mBackground:Lcom/android/server/status/FixedSizeDrawable;

.field mDate:Landroid/view/View;

.field public mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/server/status/StatusBarService;

.field mStartX:I

.field mStartY:I

.field public mStatusIcons:Landroid/view/ViewGroup;

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .registers 10
    .parameter "g"
    .parameter "w"
    .parameter "offset"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 106
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_20

    .line 107
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 108
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    .line 109
    .local v2, l:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    .line 110
    .local v3, r:I
    if-lt p2, v2, :cond_1d

    if-gt p2, v3, :cond_1d

    move v5, v3

    .line 114
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :goto_1c
    return v5

    .line 106
    .restart local v2       #l:I
    .restart local v3       #r:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 114
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :cond_20
    const/4 v5, -0x1

    goto :goto_1c
.end method

.method private getViewOffset(Landroid/view/View;)I
    .registers 8
    .parameter "v"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, offset:I
    :goto_1
    if-eq p1, p0, :cond_32

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 95
    .local v2, p:Landroid/view/ViewParent;
    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_15

    .line 96
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_1

    .line 98
    :cond_15
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a child of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    .end local v2           #p:Landroid/view/ViewParent;
    :cond_32
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->onBarViewAttached()V

    .line 48
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 35
    const v0, 0x10201d1

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 36
    const v0, 0x10201d2

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 37
    const v0, 0x1020058

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/android/server/status/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/status/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    .line 40
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/server/status/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 41
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 61
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 64
    .local v3, oldDateRight:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/status/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/server/status/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/status/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 66
    .local v1, newDateRight:I
    if-gez v1, :cond_20

    .line 67
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    .line 68
    .local v2, offset:I
    if-ge v3, v2, :cond_58

    .line 69
    move v1, v3

    .line 77
    .end local v2           #offset:I
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    .line 78
    .local v0, max:I
    if-le v1, v0, :cond_29

    .line 79
    move v1, v0

    .line 82
    :cond_29
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    .line 83
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/status/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 84
    return-void

    .line 71
    .end local v0           #max:I
    .restart local v2       #offset:I
    :cond_58
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/status/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 72
    if-gez v1, :cond_20

    .line 73
    move v1, p4

    goto :goto_20
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 53
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 54
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    :cond_b
    const/4 v0, 0x1

    return v0
.end method
