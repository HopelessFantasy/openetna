.class public Lcom/android/launcher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/android/launcher/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/DragLayer$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DISTANCE_DRAW_SNAG:I = 0x14

.field private static final DRAG_SCALE:F = 24.0f

.field private static final DRAW_TARGET_SNAG:Z = false

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x14

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragCenter:[F

.field private mDragInfo:Ljava/lang/Object;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/android/launcher/DragScroller;

.field private mDragSource:Lcom/android/launcher/DragSource;

.field private mDragging:Z

.field private mDrawEstimated:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mEstimatedCenter:[F

.field private final mEstimatedPaint:Landroid/graphics/Paint;

.field private mEstimatedRect:Landroid/graphics/Rect;

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/android/launcher/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mTriggerHeight:I

.field private mTriggerWidth:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v3, p0, Lcom/android/launcher/DragLayer;->mDragging:Z

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 91
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 92
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mDropCoordinates:[I

    .line 94
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 106
    iput v3, p0, Lcom/android/launcher/DragLayer;->mScrollState:I

    .line 108
    new-instance v2, Lcom/android/launcher/DragLayer$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher/DragLayer$ScrollRunnable;-><init>(Lcom/android/launcher/DragLayer;)V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    .line 115
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mEstimatedRect:Landroid/graphics/Rect;

    .line 126
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mDragCenter:[F

    .line 127
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/launcher/DragLayer;->mEstimatedCenter:[F

    .line 128
    iput-boolean v3, p0, Lcom/android/launcher/DragLayer;->mDrawEstimated:Z

    .line 130
    iput v5, p0, Lcom/android/launcher/DragLayer;->mTriggerWidth:I

    .line 131
    iput v5, p0, Lcom/android/launcher/DragLayer;->mTriggerHeight:I

    .line 146
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/launcher/DragLayer;->mAnimationState:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 160
    .local v1, srcColor:I
    iget-object v2, p0, Lcom/android/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 164
    .local v0, snagColor:I
    iget-object v2, p0, Lcom/android/launcher/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v2, p0, Lcom/android/launcher/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v2, p0, Lcom/android/launcher/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher/DragLayer;)Lcom/android/launcher/DragScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mDragScroller:Lcom/android/launcher/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher/DragLayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/launcher/DragLayer;->mDrawEstimated:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher/DragLayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/launcher/DragLayer;->mScrollState:I

    return p1
.end method

.method private drop(FF)Z
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 513
    invoke-virtual {p0}, Lcom/android/launcher/DragLayer;->invalidate()V

    .line 515
    iget-object v7, p0, Lcom/android/launcher/DragLayer;->mDropCoordinates:[I

    .line 516
    .local v7, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v7}, Lcom/android/launcher/DragLayer;->findDropTarget(II[I)Lcom/android/launcher/DropTarget;

    move-result-object v0

    .line 518
    .local v0, dropTarget:Lcom/android/launcher/DropTarget;
    if-eqz v0, :cond_57

    .line 519
    iget-object v1, p0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/DropTarget;->onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V

    .line 521
    iget-object v1, p0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/DropTarget;->acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 523
    iget-object v1, p0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/DropTarget;->onDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V

    .line 525
    iget-object v1, p0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/android/launcher/DropTarget;
    invoke-interface {v1, v0, v8}, Lcom/android/launcher/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 532
    :goto_4d
    return v1

    .line 528
    .restart local v0       #dropTarget:Lcom/android/launcher/DropTarget;
    :cond_4e
    iget-object v1, p0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/android/launcher/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/android/launcher/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 529
    goto :goto_4d

    .restart local v0       #dropTarget:Lcom/android/launcher/DropTarget;
    :cond_57
    move v1, v9

    .line 532
    goto :goto_4d
.end method

.method private endDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-boolean v0, p0, Lcom/android/launcher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_22

    .line 307
    iput-boolean v1, p0, Lcom/android/launcher/DragLayer;->mDragging:Z

    .line 308
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 309
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    :cond_10
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 312
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_19
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mListener:Lcom/android/launcher/DragController$DragListener;

    if-eqz v0, :cond_22

    .line 315
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mListener:Lcom/android/launcher/DragController$DragListener;

    invoke-interface {v0}, Lcom/android/launcher/DragController$DragListener;->onDragEnd()V

    .line 318
    :cond_22
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/android/launcher/DropTarget;
    .registers 25
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 541
    .local v16, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 542
    .local v13, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int v17, p2, v6

    .line 543
    .local v17, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    add-int v18, p3, v6

    .line 544
    .local v18, scrolledY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    move-object v15, v0

    .line 546
    .local v15, ignoredDropTarget:Landroid/view/View;
    const/4 v6, 0x1

    sub-int v14, v13, v6

    .end local v13           #count:I
    .local v14, i:I
    :goto_1e
    if-ltz v14, :cond_90

    .line 547
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 548
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8d

    if-eq v12, v15, :cond_8d

    .line 549
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 550
    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 551
    const/16 v19, 0x0

    .line 552
    .local v19, target:Lcom/android/launcher/DropTarget;
    instance-of v6, v12, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5e

    .line 553
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int p2, v17, v6

    .line 554
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int p3, v18, v6

    .line 555
    move-object v0, v12

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/android/launcher/DropTarget;

    move-result-object v19

    .line 557
    :cond_5e
    if-nez v19, :cond_8a

    .line 558
    instance-of v6, v12, Lcom/android/launcher/DropTarget;

    if-eqz v6, :cond_8d

    .line 560
    move-object v0, v12

    check-cast v0, Lcom/android/launcher/DropTarget;

    move-object v5, v0

    .line 561
    .local v5, childTarget:Lcom/android/launcher/DropTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v5 .. v11}, Lcom/android/launcher/DropTarget;->acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 562
    const/4 v6, 0x0

    aput p2, p4, v6

    .line 563
    const/4 v6, 0x1

    aput p3, p4, v6

    .line 564
    check-cast v12, Lcom/android/launcher/DropTarget;

    .end local v12           #child:Landroid/view/View;
    move-object v6, v12

    .line 576
    .end local v5           #childTarget:Lcom/android/launcher/DropTarget;
    .end local v19           #target:Lcom/android/launcher/DropTarget;
    :goto_87
    return-object v6

    .line 566
    .restart local v5       #childTarget:Lcom/android/launcher/DropTarget;
    .restart local v12       #child:Landroid/view/View;
    .restart local v19       #target:Lcom/android/launcher/DropTarget;
    :cond_88
    const/4 v6, 0x0

    goto :goto_87

    .end local v5           #childTarget:Lcom/android/launcher/DropTarget;
    :cond_8a
    move-object/from16 v6, v19

    .line 570
    goto :goto_87

    .line 546
    .end local v19           #target:Lcom/android/launcher/DropTarget;
    :cond_8d
    add-int/lit8 v14, v14, -0x1

    goto :goto_1e

    .line 576
    .end local v12           #child:Landroid/view/View;
    :cond_90
    const/4 v6, 0x0

    goto :goto_87
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

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 262
    iget-boolean v3, p0, Lcom/android/launcher/DragLayer;->mDragging:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_49

    .line 263
    iget v3, p0, Lcom/android/launcher/DragLayer;->mAnimationState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher/DragLayer;->mAnimationStartTime:J

    .line 265
    iput v5, p0, Lcom/android/launcher/DragLayer;->mAnimationState:I

    .line 268
    :cond_1e
    iget v3, p0, Lcom/android/launcher/DragLayer;->mAnimationState:I

    if-ne v3, v5, :cond_8d

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/launcher/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/android/launcher/DragLayer;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 271
    .local v1, normalized:F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_36

    .line 272
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/launcher/DragLayer;->mAnimationState:I

    .line 274
    :cond_36
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 275
    iget v3, p0, Lcom/android/launcher/DragLayer;->mAnimationFrom:F

    iget v4, p0, Lcom/android/launcher/DragLayer;->mAnimationTo:F

    iget v5, p0, Lcom/android/launcher/DragLayer;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 277
    .local v2, value:F
    iget v3, p0, Lcom/android/launcher/DragLayer;->mAnimationType:I

    packed-switch v3, :pswitch_data_b0

    .line 303
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_49
    :goto_49
    return-void

    .line 279
    .restart local v1       #normalized:F
    .restart local v2       #value:F
    :pswitch_4a
    iget-object v0, p0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 280
    .local v0, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 281
    iget v3, p0, Lcom/android/launcher/DragLayer;->mScrollX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher/DragLayer;->mLastMotionX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher/DragLayer;->mBitmapOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher/DragLayer;->mScrollY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher/DragLayer;->mLastMotionY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/DragLayer;->mBitmapOffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
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

    .line 285
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 286
    iget-object v3, p0, Lcom/android/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_49

    .line 298
    .end local v0           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_8d
    iget-object v3, p0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/launcher/DragLayer;->mScrollX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher/DragLayer;->mLastMotionX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/DragLayer;->mBitmapOffsetX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/DragLayer;->mScrollY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher/DragLayer;->mLastMotionY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher/DragLayer;->mBitmapOffsetY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_49

    .line 277
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
    .line 255
    iget-boolean v0, p0, Lcom/android/launcher/DragLayer;->mDragging:Z

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

.method findDropTarget(II[I)Lcom/android/launcher/DropTarget;
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 536
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/launcher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/android/launcher/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 324
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 325
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 327
    .local v2, y:F
    packed-switch v0, :pswitch_data_2c

    .line 347
    :goto_f
    :pswitch_f
    iget-boolean v3, p0, Lcom/android/launcher/DragLayer;->mDragging:Z

    return v3

    .line 333
    :pswitch_12
    iput v1, p0, Lcom/android/launcher/DragLayer;->mLastMotionX:F

    .line 334
    iput v2, p0, Lcom/android/launcher/DragLayer;->mLastMotionY:F

    .line 335
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    goto :goto_f

    .line 340
    :pswitch_1a
    iget-boolean v3, p0, Lcom/android/launcher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_27

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 341
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher/DragLayer;->mShouldDrop:Z

    .line 343
    :cond_27
    invoke-direct {p0}, Lcom/android/launcher/DragLayer;->endDrag()V

    goto :goto_f

    .line 327
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
    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/DragLayer;->mDragging:Z

    move v6, v0

    if-nez v6, :cond_9

    .line 353
    const/4 v6, 0x0

    .line 509
    :goto_8
    return v6

    .line 356
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 357
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 358
    .local v30, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    .line 360
    .local v31, y:F
    packed-switch v13, :pswitch_data_2f6

    .line 509
    :cond_18
    :goto_18
    const/4 v6, 0x1

    goto :goto_8

    .line 364
    :pswitch_1a
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mLastMotionX:F

    .line 365
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mLastMotionY:F

    .line 367
    const/high16 v6, 0x41a0

    cmpg-float v6, v30, v6

    if-ltz v6, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_4d

    .line 368
    :cond_38
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mScrollState:I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 371
    :cond_4d
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mScrollState:I

    goto :goto_18

    .line 376
    :pswitch_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mScrollX:I

    move/from16 v24, v0

    .line 377
    .local v24, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mScrollY:I

    move/from16 v25, v0

    .line 379
    .local v25, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    move/from16 v27, v0

    .line 380
    .local v27, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    move/from16 v28, v0

    .line 382
    .local v28, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mBitmapOffsetX:I

    move/from16 v20, v0

    .line 383
    .local v20, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mBitmapOffsetY:I

    move/from16 v21, v0

    .line 385
    .local v21, offsetY:I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mLastMotionX:F

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

    .line 386
    .local v19, left:I
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mLastMotionY:F

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

    .line 388
    .local v26, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 389
    .local v15, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 390
    .local v29, width:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 392
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 393
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

    .line 395
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mLastMotionX:F

    .line 396
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mLastMotionY:F

    .line 398
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

    .line 399
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

    .line 402
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

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragCenter:[F

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragCenter:[F

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDropCoordinates:[I

    move-object v14, v0

    .line 413
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

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/DragLayer;->findDropTarget(II[I)Lcom/android/launcher/DropTarget;

    move-result-object v5

    .line 414
    .local v5, dropTarget:Lcom/android/launcher/DropTarget;
    if-eqz v5, :cond_22f

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    move-object v6, v0

    if-ne v6, v5, :cond_1e3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/android/launcher/DropTarget;->onDragOver(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V

    .line 434
    :cond_169
    :goto_169
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mDrawEstimated:Z

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 459
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    .line 461
    const/16 v17, 0x0

    .line 462
    .local v17, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-eqz v6, :cond_1b5

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    .line 464
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

    .line 465
    .local v18, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_25c

    if-eqz v18, :cond_25c

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 467
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mEnteredRegion:Z

    .line 468
    const/16 v17, 0x1

    .line 475
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_1b5
    :goto_1b5
    if-nez v17, :cond_273

    const/high16 v6, 0x41a0

    cmpg-float v6, v30, v6

    if-gez v6, :cond_273

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_18

    .line 477
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mScrollState:I

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_18

    .line 419
    .end local v17           #inDragRegion:Z
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_20e

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/android/launcher/DropTarget;->onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V

    .line 423
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/android/launcher/DropTarget;->onDragEnter(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_169

    .line 427
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_169

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mLastDropTarget:Lcom/android/launcher/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/android/launcher/DropTarget;->onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_169

    .line 469
    .restart local v17       #inDragRegion:Z
    .restart local v18       #inRegion:Z
    .restart local v23       #region:Landroid/graphics/RectF;
    :cond_25c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-eqz v6, :cond_1b5

    if-nez v18, :cond_1b5

    .line 470
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 471
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_1b5

    .line 481
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_273
    if-nez v17, :cond_2a7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_2a7

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_18

    .line 483
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mScrollState:I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_18

    .line 488
    :cond_2a7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mScrollState:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    .line 489
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mScrollState:I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_18

    .line 497
    .end local v5           #dropTarget:Lcom/android/launcher/DropTarget;
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
    :pswitch_2cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mScrollRunnable:Lcom/android/launcher/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/DragLayer;->mShouldDrop:Z

    move v6, v0

    if-eqz v6, :cond_2ec

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/DragLayer;->drop(FF)Z

    .line 500
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mShouldDrop:Z

    .line 502
    :cond_2ec
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->endDrag()V

    goto/16 :goto_18

    .line 506
    :pswitch_2f1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->endDrag()V

    goto/16 :goto_18

    .line 360
    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_2cb
        :pswitch_54
        :pswitch_2f1
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher/DragController$DragListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/DragLayer;->mListener:Lcom/android/launcher/DragController$DragListener;

    .line 589
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "region"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/launcher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 608
    return-void
.end method

.method public setDragListener(Lcom/android/launcher/DragController$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/launcher/DragLayer;->mListener:Lcom/android/launcher/DragController$DragListener;

    .line 585
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher/DragScroller;)V
    .registers 2
    .parameter "scroller"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/launcher/DragLayer;->mDragScroller:Lcom/android/launcher/DragScroller;

    .line 581
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/launcher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 599
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher/DragSource;Ljava/lang/Object;I)V
    .registers 22
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    if-nez v6, :cond_18

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 180
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mListener:Lcom/android/launcher/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_3d

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mListener:Lcom/android/launcher/DragController$DragListener;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/android/launcher/DragSource;Ljava/lang/Object;I)V

    .line 186
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object v14, v0

    .line 187
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mLastMotionX:F

    move v6, v0

    iget v7, v14, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mTouchOffsetX:F

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/DragLayer;->mLastMotionY:F

    move v6, v0

    iget v7, v14, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mTouchOffsetY:F

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 194
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v16

    .line 197
    .local v16, willNotCache:Z
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v12

    .line 202
    .local v12, color:I
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 204
    if-eqz v12, :cond_98

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 207
    :cond_98
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 209
    .local v5, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 210
    .local v8, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 212
    .local v9, height:I
    mul-int/lit8 v6, v8, 0x2

    div-int/lit8 v6, v6, 0x3

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mTriggerWidth:I

    .line 213
    mul-int/lit8 v6, v9, 0x2

    div-int/lit8 v6, v6, 0x3

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mTriggerHeight:I

    .line 215
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v10, scale:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v15, v6

    .line 217
    .local v15, scaleFactor:F
    const/high16 v6, 0x41c0

    add-float/2addr v6, v15

    div-float v15, v6, v15

    .line 218
    invoke-virtual {v10, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 220
    const/high16 v6, 0x3f80

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mAnimationTo:F

    .line 221
    const/high16 v6, 0x3f80

    div-float/2addr v6, v15

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mAnimationFrom:F

    .line 222
    const/16 v6, 0x6e

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mAnimationDuration:I

    .line 223
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mAnimationState:I

    .line 224
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mAnimationType:I

    .line 226
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 228
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 229
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v13, v0

    .line 232
    .local v13, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mBitmapOffsetX:I

    .line 233
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/DragLayer;->mBitmapOffsetY:I

    .line 235
    if-nez p4, :cond_130

    .line 236
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_130
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 240
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mDragging:Z

    .line 241
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mShouldDrop:Z

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mOriginator:Landroid/view/View;

    .line 243
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mDragSource:Lcom/android/launcher/DragSource;

    .line 244
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    move-object v6, v0

    const-wide/16 v7, 0x23

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 248
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/DragLayer;->mEnteredRegion:Z

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/DragLayer;->invalidate()V

    .line 251
    return-void
.end method
