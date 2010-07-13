.class public Lcom/android/server/status/ExpandedView;
.super Landroid/widget/LinearLayout;
.source "ExpandedView.java"


# instance fields
.field final mDisplay:Landroid/view/Display;

.field mMaxHeight:I

.field mPrevHeight:I

.field mService:Lcom/android/server/status/StatusBarService;

.field mStartX:I

.field mStartY:I

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/status/ExpandedView;->mMaxHeight:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/status/ExpandedView;->mPrevHeight:I

    .line 23
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/ExpandedView;->mDisplay:Landroid/view/Display;

    .line 25
    return-void
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 30
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 47
    sub-int v0, p5, p3

    .line 48
    .local v0, height:I
    iget v1, p0, Lcom/android/server/status/ExpandedView;->mPrevHeight:I

    if-eq v0, v1, :cond_12

    .line 50
    iput v0, p0, Lcom/android/server/status/ExpandedView;->mPrevHeight:I

    .line 51
    iget-object v1, p0, Lcom/android/server/status/ExpandedView;->mService:Lcom/android/server/status/StatusBarService;

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 53
    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/status/ExpandedView;->mMaxHeight:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42
    return-void
.end method

.method setMaxHeight(I)V
    .registers 3
    .parameter "h"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/status/ExpandedView;->mMaxHeight:I

    if-eq p1, v0, :cond_9

    .line 57
    iput p1, p0, Lcom/android/server/status/ExpandedView;->mMaxHeight:I

    .line 58
    invoke-virtual {p0}, Lcom/android/server/status/ExpandedView;->requestLayout()V

    .line 60
    :cond_9
    return-void
.end method
