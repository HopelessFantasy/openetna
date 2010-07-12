.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .registers 4
    .parameter

    .prologue
    .line 2262
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2264
    return-void
.end method

.method private endFling()V
    .registers 3

    .prologue
    .line 2283
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2284
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2285
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)V

    .line 2286
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 2289
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_9

    .line 2352
    :goto_8
    return-void

    .line 2293
    :cond_9
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v8, :cond_17

    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1b

    .line 2294
    :cond_17
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_8

    .line 2298
    :cond_1b
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2299
    .local v6, scroller:Landroid/widget/Scroller;
    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    .line 2300
    .local v3, more:Z
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 2304
    .local v7, y:I
    iget v8, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v8, v7

    .line 2307
    .local v0, delta:I
    if-lez v0, :cond_8c

    .line 2309
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v9, v8, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2310
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2311
    .local v1, firstView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2314
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2327
    .end local v1           #firstView:Landroid/view/View;
    :goto_5b
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)V

    .line 2330
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2331
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_7c

    .line 2334
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    if-eq v8, v9, :cond_7c

    .line 2335
    const/4 v3, 0x0

    .line 2339
    :cond_7c
    if-eqz v3, :cond_c6

    .line 2340
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->invalidate()V

    .line 2341
    iput v7, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2342
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 2317
    .end local v4           #motionView:Landroid/view/View;
    :cond_8c
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    sub-int v5, v8, v10

    .line 2318
    .local v5, offsetToLast:I
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2320
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2321
    .local v2, lastView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2324
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    neg-int v8, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5b

    .line 2344
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_c6
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_8
.end method

.method public start(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 2267
    if-gez p1, :cond_1e

    move v2, v6

    .line 2268
    .local v2, initialY:I
    :goto_7
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2269
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2271
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2272
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2280
    return-void

    .end local v2           #initialY:I
    :cond_1e
    move v2, v1

    .line 2267
    goto :goto_7
.end method
