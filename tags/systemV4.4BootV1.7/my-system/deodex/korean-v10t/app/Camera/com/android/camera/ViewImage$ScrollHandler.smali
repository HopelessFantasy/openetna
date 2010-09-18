.class Lcom/android/camera/ViewImage$ScrollHandler;
.super Landroid/widget/LinearLayout;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollHandler"
.end annotation


# instance fields
.field private mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

.field private mScrollerHelper:Landroid/widget/Scroller;

.field private mViewImage:Lcom/android/camera/ViewImage;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mWidth:I

    .line 441
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mScrollerHelper:Landroid/widget/Scroller;

    .line 442
    check-cast p1, Lcom/android/camera/ViewImage;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mViewImage:Lcom/android/camera/ViewImage;

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mWidth:I

    .line 447
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mScrollerHelper:Landroid/widget/Scroller;

    .line 448
    check-cast p1, Lcom/android/camera/ViewImage;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mViewImage:Lcom/android/camera/ViewImage;

    .line 449
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mScrollerHelper:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 473
    iget-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mScrollerHelper:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mScrollerHelper:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ViewImage$ScrollHandler;->scrollTo(II)V

    .line 474
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ScrollHandler;->postInvalidate()V

    .line 476
    :cond_1a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 480
    sub-int v4, p4, p2

    .line 481
    .local v4, width:I
    const/4 v5, 0x0

    .line 482
    .local v5, x:I
    const/4 v6, 0x3

    new-array v0, v6, [Landroid/view/View;

    const/4 v6, 0x0

    const v7, 0x7f0b0048

    invoke-virtual {p0, v7}, Lcom/android/camera/ViewImage$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const v7, 0x7f0b004a

    invoke-virtual {p0, v7}, Lcom/android/camera/ViewImage$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const v7, 0x7f0b004c

    invoke-virtual {p0, v7}, Lcom/android/camera/ViewImage$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_26
    if-ge v1, v2, :cond_36

    aget-object v3, v0, v1

    .line 486
    .local v3, v:Landroid/view/View;
    const/4 v6, 0x0

    add-int v7, v5, v4

    invoke-virtual {v3, v5, v6, v7, p5}, Landroid/view/View;->layout(IIII)V

    .line 487
    add-int/lit8 v6, v4, 0x14

    add-int/2addr v5, v6

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 490
    .end local v3           #v:Landroid/view/View;
    :cond_36
    const v6, 0x7f0b0049

    invoke-virtual {p0, v6}, Lcom/android/camera/ViewImage$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x14

    invoke-virtual {v6, v4, v7, v8, p5}, Landroid/view/View;->layout(IIII)V

    .line 491
    const v6, 0x7f0b004b

    invoke-virtual {p0, v6}, Lcom/android/camera/ViewImage$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v7, v4, 0x14

    add-int/2addr v7, v4

    const/4 v8, 0x0

    add-int/lit8 v9, v4, 0x14

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, 0x14

    invoke-virtual {v6, v7, v8, v9, p5}, Landroid/view/View;->layout(IIII)V

    .line 494
    if-eqz p1, :cond_63

    .line 495
    iget-object v6, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/camera/ViewImage;->access$1602(Lcom/android/camera/ViewImage;Z)Z

    .line 496
    iget-object v6, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$1700(Lcom/android/camera/ViewImage;)V

    .line 498
    :cond_63
    return-void
.end method

.method public startScrollTo(II)V
    .registers 11
    .parameter "newX"
    .parameter "newY"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ScrollHandler;->getScrollX()I

    move-result v1

    .line 453
    .local v1, oldX:I
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ScrollHandler;->getScrollY()I

    move-result v2

    .line 455
    .local v2, oldY:I
    sub-int v3, p1, v1

    .line 456
    .local v3, deltaX:I
    sub-int v4, p2, v2

    .line 458
    .local v4, deltaY:I
    iget v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mWidth:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1e

    .line 459
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/android/camera/ViewImage$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mWidth:I

    .line 461
    :cond_1e
    iget v6, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mWidth:I

    .line 463
    .local v6, viewWidth:I
    if-lez v6, :cond_33

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, v6

    move v5, v0

    .line 466
    .local v5, duration:I
    :goto_2a
    iget-object v0, p0, Lcom/android/camera/ViewImage$ScrollHandler;->mScrollerHelper:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 467
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ScrollHandler;->invalidate()V

    .line 468
    return-void

    .line 463
    .end local v5           #duration:I
    :cond_33
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2a
.end method
