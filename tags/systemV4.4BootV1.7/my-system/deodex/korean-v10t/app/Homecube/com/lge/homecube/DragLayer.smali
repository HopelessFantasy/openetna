.class public Lcom/lge/homecube/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/lge/homecube/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/DragLayer$ScrollRunnable;,
        Lcom/lge/homecube/DragLayer$ScrollTimerTask;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DRAG_SCALE:F = 24.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x14

.field static final TAG:Ljava/lang/String; = "DragLayer"

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private isMoveDownoward:Z

.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/lge/homecube/DragScroller;

.field private mDragSource:Lcom/lge/homecube/DragSource;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/lge/homecube/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/lge/homecube/Launcher;

.field private mListener:Lcom/lge/homecube/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private final mVibrator:Landroid/os/Vibrator;

.field private needToScroll:Z

.field private numColumns:I

.field private scrollTimer:Ljava/util/Timer;

.field private scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v6, p0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    .line 68
    iput-object v4, p0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 87
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 99
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 100
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mDropCoordinates:[I

    .line 102
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 114
    iput v6, p0, Lcom/lge/homecube/DragLayer;->mScrollState:I

    .line 116
    new-instance v3, Lcom/lge/homecube/DragLayer$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/lge/homecube/DragLayer$ScrollRunnable;-><init>(Lcom/lge/homecube/DragLayer;)V

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    .line 123
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 137
    const/4 v3, 0x3

    iput v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationState:I

    .line 147
    iput-object v4, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    .line 148
    iput-object v4, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    .line 149
    iput-boolean v6, p0, Lcom/lge/homecube/DragLayer;->needToScroll:Z

    .line 150
    iput-boolean v7, p0, Lcom/lge/homecube/DragLayer;->isMoveDownoward:Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 168
    .local v2, srcColor:I
    iget-object v3, p0, Lcom/lge/homecube/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 172
    sget-object v3, Lcom/lge/homecube/R$styleable;->DragLayer:[I

    invoke-virtual {p1, p2, v3, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/lge/homecube/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_73

    move v1, v7

    .line 177
    .local v1, isLandscape:Z
    :goto_69
    if-nez v1, :cond_75

    .line 178
    const/4 v3, 0x4

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/lge/homecube/DragLayer;->numColumns:I

    .line 185
    :goto_72
    return-void

    .end local v1           #isLandscape:Z
    :cond_73
    move v1, v6

    .line 174
    goto :goto_69

    .line 180
    .restart local v1       #isLandscape:Z
    :cond_75
    const/4 v3, 0x6

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/lge/homecube/DragLayer;->numColumns:I

    goto :goto_72
.end method

.method static synthetic access$000(Lcom/lge/homecube/DragLayer;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    return v0
.end method

.method static synthetic access$100(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/homecube/DragLayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/homecube/DragLayer;->needToScroll:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lge/homecube/DragLayer;Lcom/lge/homecube/DragLayer$ScrollTimerTask;)Lcom/lge/homecube/DragLayer$ScrollTimerTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    return-object p1
.end method

.method static synthetic access$402(Lcom/lge/homecube/DragLayer;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/DragScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mDragScroller:Lcom/lge/homecube/DragScroller;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/homecube/DragLayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/lge/homecube/DragLayer;->mScrollState:I

    return p1
.end method

.method private drop(FF)Z
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 536
    invoke-virtual {p0}, Lcom/lge/homecube/DragLayer;->invalidate()V

    .line 538
    iget-object v7, p0, Lcom/lge/homecube/DragLayer;->mDropCoordinates:[I

    .line 541
    .local v7, coordinates:[I
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1}, Lcom/lge/homecube/Launcher;->isDrawerUp()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 542
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    iget-object v2, p0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/homecube/DragSource;->DropOnMenu(FFLjava/lang/Object;)Z

    move v1, v8

    .line 563
    :goto_17
    return v1

    .line 547
    :cond_18
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v7}, Lcom/lge/homecube/DragLayer;->findDropTarget(II[I)Lcom/lge/homecube/DropTarget;

    move-result-object v0

    .line 549
    .local v0, dropTarget:Lcom/lge/homecube/DropTarget;
    if-eqz v0, :cond_68

    .line 550
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/lge/homecube/DropTarget;->onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V

    .line 552
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/lge/homecube/DropTarget;->acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 554
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/lge/homecube/DropTarget;->onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V

    .line 556
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/lge/homecube/DropTarget;
    invoke-interface {v1, v0, v8}, Lcom/lge/homecube/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 557
    goto :goto_17

    .line 559
    .restart local v0       #dropTarget:Lcom/lge/homecube/DropTarget;
    :cond_5f
    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/lge/homecube/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/lge/homecube/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 560
    goto :goto_17

    .restart local v0       #dropTarget:Lcom/lge/homecube/DropTarget;
    :cond_68
    move v1, v9

    .line 563
    goto :goto_17
.end method

.method private endDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-boolean v0, p0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    if-eqz v0, :cond_22

    .line 356
    iput-boolean v1, p0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    .line 357
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 358
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 360
    :cond_10
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 361
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_19
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    if-eqz v0, :cond_22

    .line 364
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    invoke-interface {v0}, Lcom/lge/homecube/DragController$DragListener;->onDragEnd()V

    .line 367
    :cond_22
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/lge/homecube/DropTarget;
    .registers 15
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 575
    iget-object v5, p0, Lcom/lge/homecube/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 576
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 577
    .local v2, count:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v9

    add-int v6, p2, v9

    .line 578
    .local v6, scrolledX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v9

    add-int v7, p3, v9

    .line 579
    .local v7, scrolledY:I
    iget-object v4, p0, Lcom/lge/homecube/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 582
    .local v4, ignoredDropTarget:Landroid/view/View;
    iget-object v9, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v9, v9, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_31

    .line 583
    invoke-direct {p0}, Lcom/lge/homecube/DragLayer;->scrollGridView()V

    .line 584
    iget-boolean v9, p0, Lcom/lge/homecube/DragLayer;->needToScroll:Z

    if-eqz v9, :cond_31

    .line 585
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/homecube/DragLayer;->needToScroll:Z

    .line 586
    invoke-direct {p0}, Lcom/lge/homecube/DragLayer;->moveScrollPos()V

    .line 587
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    .line 588
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    .line 592
    :cond_31
    const/4 v9, 0x1

    sub-int v3, v2, v9

    .end local v2           #count:I
    .local v3, i:I
    :goto_34
    if-ltz v3, :cond_79

    .line 593
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 594
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_76

    if-eq v1, v4, :cond_76

    .line 595
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 596
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 597
    const/4 v8, 0x0

    .line 598
    .local v8, target:Lcom/lge/homecube/DropTarget;
    instance-of v9, v1, Landroid/view/ViewGroup;

    if-eqz v9, :cond_64

    .line 599
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int p2, v6, v9

    .line 600
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int p3, v7, v9

    .line 601
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/lge/homecube/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/lge/homecube/DropTarget;

    move-result-object v8

    .line 603
    :cond_64
    if-nez v8, :cond_74

    .line 604
    instance-of v9, v1, Lcom/lge/homecube/DropTarget;

    if-eqz v9, :cond_76

    .line 605
    const/4 v9, 0x0

    aput p2, p4, v9

    .line 606
    const/4 v9, 0x1

    aput p3, p4, v9

    .line 607
    check-cast v1, Lcom/lge/homecube/DropTarget;

    .end local v1           #child:Landroid/view/View;
    move-object v9, v1

    .line 616
    .end local v8           #target:Lcom/lge/homecube/DropTarget;
    :goto_73
    return-object v9

    .restart local v1       #child:Landroid/view/View;
    .restart local v8       #target:Lcom/lge/homecube/DropTarget;
    :cond_74
    move-object v9, v8

    .line 610
    goto :goto_73

    .line 592
    .end local v8           #target:Lcom/lge/homecube/DropTarget;
    :cond_76
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 616
    .end local v1           #child:Landroid/view/View;
    :cond_79
    const/4 v9, 0x0

    goto :goto_73
.end method

.method private moveScrollPos()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 696
    iget-boolean v0, p0, Lcom/lge/homecube/DragLayer;->isMoveDownoward:Z

    if-eqz v0, :cond_f

    .line 697
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 702
    :goto_e
    return-void

    .line 700
    :cond_f
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, -0x5a

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_e
.end method

.method private scrollGridView()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x1f4

    .line 658
    iget v0, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    const/16 v2, 0x24

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4a

    iget v0, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    const/16 v2, 0x1e

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 659
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    if-nez v0, :cond_34

    new-instance v0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    invoke-direct {v0, p0}, Lcom/lge/homecube/DragLayer$ScrollTimerTask;-><init>(Lcom/lge/homecube/DragLayer;)V

    iput-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    .line 660
    :cond_34
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    if-nez v0, :cond_49

    .line 661
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    .line 662
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/DragLayer;->isMoveDownoward:Z

    .line 674
    :cond_49
    :goto_49
    return-void

    .line 666
    :cond_4a
    iget v0, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    const/high16 v1, -0x3e10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_49

    iget v0, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    const/high16 v1, 0x4270

    cmpg-float v0, v0, v1

    if-gez v0, :cond_49

    .line 667
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    if-nez v0, :cond_65

    new-instance v0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    invoke-direct {v0, p0}, Lcom/lge/homecube/DragLayer$ScrollTimerTask;-><init>(Lcom/lge/homecube/DragLayer;)V

    iput-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    .line 668
    :cond_65
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    if-nez v0, :cond_49

    .line 669
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    .line 670
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/DragLayer;->isMoveDownoward:Z

    goto :goto_49
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 316
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 318
    iget-boolean v3, p0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_49

    .line 319
    iget v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationStartTime:J

    .line 321
    iput v5, p0, Lcom/lge/homecube/DragLayer;->mAnimationState:I

    .line 324
    :cond_1e
    iget v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationState:I

    if-ne v3, v5, :cond_8d

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lge/homecube/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 327
    .local v1, normalized:F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_36

    .line 328
    const/4 v3, 0x3

    iput v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationState:I

    .line 330
    :cond_36
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 331
    iget v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationFrom:F

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mAnimationTo:F

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 333
    .local v2, value:F
    iget v3, p0, Lcom/lge/homecube/DragLayer;->mAnimationType:I

    packed-switch v3, :pswitch_data_b0

    .line 352
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_49
    :goto_49
    return-void

    .line 335
    .restart local v1       #normalized:F
    .restart local v2       #value:F
    :pswitch_4a
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 336
    .local v0, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 337
    iget v3, p0, Lcom/lge/homecube/DragLayer;->mScrollX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mBitmapOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mScrollY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mBitmapOffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 342
    iget-object v3, p0, Lcom/lge/homecube/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_49

    .line 347
    .end local v0           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_8d
    iget-object v3, p0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/lge/homecube/DragLayer;->mScrollX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mBitmapOffsetX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/DragLayer;->mScrollY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lge/homecube/DragLayer;->mBitmapOffsetY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/lge/homecube/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_49

    .line 333
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_4a
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method findDropTarget(II[I)Lcom/lge/homecube/DropTarget;
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 570
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/lge/homecube/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/lge/homecube/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public getNumCoumns()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/lge/homecube/DragLayer;->numColumns:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 373
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 374
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 376
    .local v2, y:F
    packed-switch v0, :pswitch_data_2c

    .line 396
    :goto_f
    :pswitch_f
    iget-boolean v3, p0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    return v3

    .line 382
    :pswitch_12
    iput v1, p0, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    .line 383
    iput v2, p0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    .line 384
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    goto :goto_f

    .line 389
    :pswitch_1a
    iget-boolean v3, p0, Lcom/lge/homecube/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_27

    invoke-direct {p0, v1, v2}, Lcom/lge/homecube/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 390
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/homecube/DragLayer;->mShouldDrop:Z

    .line 392
    :cond_27
    invoke-direct {p0}, Lcom/lge/homecube/DragLayer;->endDrag()V

    goto :goto_f

    .line 376
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1a
        :pswitch_f
        :pswitch_1a
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 34
    .parameter "ev"

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/DragLayer;->mDragging:Z

    move v6, v0

    if-nez v6, :cond_9

    .line 402
    const/4 v6, 0x0

    .line 532
    :goto_8
    return v6

    .line 405
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 406
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 407
    .local v30, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    .line 409
    .local v31, y:F
    packed-switch v13, :pswitch_data_2f6

    .line 532
    :cond_18
    :goto_18
    const/4 v6, 0x1

    goto :goto_8

    .line 413
    :pswitch_1a
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    .line 414
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    .line 416
    const/high16 v6, 0x41a0

    cmpg-float v6, v30, v6

    if-ltz v6, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_4d

    .line 417
    :cond_38
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mScrollState:I

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 420
    :cond_4d
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mScrollState:I

    goto :goto_18

    .line 425
    :pswitch_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mScrollX:I

    move/from16 v24, v0

    .line 426
    .local v24, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mScrollY:I

    move/from16 v25, v0

    .line 428
    .local v25, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    move/from16 v27, v0

    .line 429
    .local v27, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    move/from16 v28, v0

    .line 431
    .local v28, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mBitmapOffsetX:I

    move/from16 v20, v0

    .line 432
    .local v20, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mBitmapOffsetY:I

    move/from16 v21, v0

    .line 434
    .local v21, offsetY:I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v27

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 435
    .local v19, left:I
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v26, v0

    .line 437
    .local v26, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 438
    .local v15, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 439
    .local v29, width:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 441
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 442
    .local v22, rect:Landroid/graphics/Rect;
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v26, v7

    add-int v8, v19, v29

    add-int/lit8 v8, v8, 0x1

    add-int v9, v26, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    .line 445
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    .line 447
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v30

    sub-float v6, v6, v27

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 448
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v31

    sub-float v6, v6, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v26, v0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    move-object v6, v0

    iget-object v6, v6, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v6}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_119

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    move v8, v0

    invoke-virtual {v6, v7, v8}, Lcom/lge/homecube/Launcher;->updateMoveSelectionBackgoundItem(FF)V

    .line 455
    :cond_119
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v26, v7

    add-int v8, v19, v29

    add-int/lit8 v8, v8, 0x1

    add-int v9, v26, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/homecube/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDropCoordinates:[I

    move-object v14, v0

    .line 460
    .local v14, coordinates:[I
    move/from16 v0, v30

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/DragLayer;->findDropTarget(II[I)Lcom/lge/homecube/DropTarget;

    move-result-object v5

    .line 462
    .local v5, dropTarget:Lcom/lge/homecube/DropTarget;
    if-eqz v5, :cond_22e

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    move-object v6, v0

    if-ne v6, v5, :cond_1e2

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/lge/homecube/DropTarget;->onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V

    .line 480
    :cond_175
    :goto_175
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    .line 484
    const/16 v17, 0x0

    .line 485
    .local v17, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-eqz v6, :cond_1b4

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    .line 487
    .local v23, region:Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v18

    .line 488
    .local v18, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_25b

    if-eqz v18, :cond_25b

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 490
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/DragLayer;->mEnteredRegion:Z

    .line 491
    const/16 v17, 0x1

    .line 498
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_1b4
    :goto_1b4
    if-nez v17, :cond_272

    const/high16 v6, 0x41a0

    cmpg-float v6, v30, v6

    if-gez v6, :cond_272

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_18

    .line 500
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mScrollState:I

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/homecube/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_18

    .line 467
    .end local v17           #inDragRegion:Z
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_20d

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/lge/homecube/DropTarget;->onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V

    .line 471
    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/lge/homecube/DropTarget;->onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_175

    .line 475
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_175

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mLastDropTarget:Lcom/lge/homecube/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/lge/homecube/DropTarget;->onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_175

    .line 492
    .restart local v17       #inDragRegion:Z
    .restart local v18       #inRegion:Z
    .restart local v23       #region:Landroid/graphics/RectF;
    :cond_25b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-eqz v6, :cond_1b4

    if-nez v18, :cond_1b4

    .line 493
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 494
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_1b4

    .line 504
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_272
    if-nez v17, :cond_2a6

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_2a6

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_18

    .line 506
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mScrollState:I

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/homecube/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_18

    .line 511
    :cond_2a6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mScrollState:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    .line 512
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mScrollState:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/homecube/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_18

    .line 520
    .end local v5           #dropTarget:Lcom/lge/homecube/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v16           #height:I
    .end local v17           #inDragRegion:Z
    .end local v19           #left:I
    .end local v20           #offsetX:I
    .end local v21           #offsetY:I
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v24           #scrollX:I
    .end local v25           #scrollY:I
    .end local v26           #top:I
    .end local v27           #touchX:F
    .end local v28           #touchY:F
    .end local v29           #width:I
    :pswitch_2ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mScrollRunnable:Lcom/lge/homecube/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 521
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/DragLayer;->mShouldDrop:Z

    move v6, v0

    if-eqz v6, :cond_2eb

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/DragLayer;->drop(FF)Z

    .line 523
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/DragLayer;->mShouldDrop:Z

    .line 525
    :cond_2eb
    invoke-direct/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->endDrag()V

    goto/16 :goto_18

    .line 529
    :pswitch_2f0
    invoke-direct/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->endDrag()V

    goto/16 :goto_18

    .line 409
    nop

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_2ca
        :pswitch_54
        :pswitch_2f0
    .end packed-switch
.end method

.method public removeDragListener(Lcom/lge/homecube/DragController$DragListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    .line 629
    return-void
.end method

.method public setDefaultScrollValeus()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 704
    iget-object v0, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/DragLayer;->isMoveDownoward:Z

    .line 706
    iput-object v2, p0, Lcom/lge/homecube/DragLayer;->scrollTimerTask:Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    .line 707
    iput-object v2, p0, Lcom/lge/homecube/DragLayer;->scrollTimer:Ljava/util/Timer;

    .line 708
    iput-boolean v1, p0, Lcom/lge/homecube/DragLayer;->needToScroll:Z

    .line 709
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "region"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 648
    return-void
.end method

.method public setDragListener(Lcom/lge/homecube/DragController$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    .line 625
    return-void
.end method

.method public setDragScoller(Lcom/lge/homecube/DragScroller;)V
    .registers 2
    .parameter "scroller"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->mDragScroller:Lcom/lge/homecube/DragScroller;

    .line 621
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 639
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/lge/homecube/DragLayer;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 653
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V
    .registers 26
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    if-nez v6, :cond_18

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 213
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 217
    const/4 v13, 0x0

    .line 218
    .local v13, FLAG_Widget:Z
    const/4 v14, 0x0

    .line 219
    .local v14, LAW:Lcom/lge/homecube/LauncherAppWidgetHostView;
    const/4 v12, 0x0

    .line 221
    .local v12, AWP:Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_28
    move-object/from16 v0, p1

    check-cast v0, Lcom/lge/homecube/LauncherAppWidgetHostView;

    move-object v14, v0

    .line 222
    invoke-virtual {v14}, Lcom/lge/homecube/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    .line 223
    iget-object v6, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 224
    const-string v6, "SOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View-name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v6, "SOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View-name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v6, "SOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View-name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_90} :catch_1d8

    .line 228
    const/4 v13, 0x1

    .line 233
    :goto_91
    new-instance v15, Landroid/content/ComponentName;

    const-string v6, "com.lge.cbwidget"

    const-string v7, "com.lge.cbwidget.CBWidgetProvider"

    invoke-direct {v15, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v15, cbName:Landroid/content/ComponentName;
    if-eqz v13, :cond_1de

    .line 236
    iget-object v6, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_bc

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/homecube/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V

    .line 253
    :cond_bc
    :goto_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 254
    .local v18, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v18

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/homecube/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mLastMotionX:F

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mTouchOffsetX:F

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/DragLayer;->mLastMotionY:F

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mTouchOffsetY:F

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 261
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v20

    .line 264
    .local v20, willNotCache:Z
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 268
    .local v5, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 269
    .local v8, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 271
    .local v9, height:I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 272
    .local v10, scale:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 273
    .local v19, scaleFactor:F
    const/high16 v6, 0x41c0

    add-float v6, v6, v19

    div-float v19, v6, v19

    .line 274
    move-object v0, v10

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 276
    const/high16 v6, 0x3f80

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mAnimationTo:F

    .line 277
    const/high16 v6, 0x3f80

    div-float v6, v6, v19

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mAnimationFrom:F

    .line 278
    const/16 v6, 0x6e

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mAnimationDuration:I

    .line 279
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mAnimationState:I

    .line 280
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mAnimationType:I

    .line 282
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 284
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    .line 287
    .local v16, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mBitmapOffsetX:I

    .line 288
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/DragLayer;->mBitmapOffsetY:I

    .line 290
    if-nez p4, :cond_1a0

    .line 291
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_1a0
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 296
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/DragLayer;->mDragging:Z

    .line 297
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/DragLayer;->mShouldDrop:Z

    .line 298
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mOriginator:Landroid/view/View;

    .line 299
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mDragSource:Lcom/lge/homecube/DragSource;

    .line 300
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/homecube/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mVibrator:Landroid/os/Vibrator;

    move-object v6, v0

    const-wide/16 v7, 0x23

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 304
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/DragLayer;->mEnteredRegion:Z

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/DragLayer;->invalidate()V

    .line 307
    return-void

    .line 229
    .end local v5           #viewBitmap:Landroid/graphics/Bitmap;
    .end local v8           #width:I
    .end local v9           #height:I
    .end local v10           #scale:Landroid/graphics/Matrix;
    .end local v15           #cbName:Landroid/content/ComponentName;
    .end local v16           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v19           #scaleFactor:F
    .end local v20           #willNotCache:Z
    :catch_1d8
    move-exception v6

    move-object/from16 v17, v6

    .line 230
    .local v17, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto/16 :goto_91

    .line 243
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #cbName:Landroid/content/ComponentName;
    :cond_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_bc

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/DragLayer;->mListener:Lcom/lge/homecube/DragController$DragListener;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/homecube/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_bc
.end method
