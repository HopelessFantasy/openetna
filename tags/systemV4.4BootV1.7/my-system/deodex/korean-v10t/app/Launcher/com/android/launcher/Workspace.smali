.class public Lcom/android/launcher/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher/DropTarget;
.implements Lcom/android/launcher/DragSource;
.implements Lcom/android/launcher/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/Workspace$1;,
        Lcom/android/launcher/Workspace$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAllowLongPress:Z

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

.field private mDragger:Lcom/android/launcher/DragController;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field mDrawerContentHeight:I

.field mDrawerContentWidth:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLocked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperHeight:I

.field private mWallpaperLoaded:Z

.field private mWallpaperOffset:F

.field private mWallpaperWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-boolean v3, p0, Lcom/android/launcher/Workspace;->mFirstLayout:Z

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    .line 82
    iput-object v5, p0, Lcom/android/launcher/Workspace;->mTargetCell:[I

    .line 90
    iput v2, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    .line 100
    iput-object v5, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    .line 102
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/launcher/Workspace;->mTempCell:[I

    .line 103
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 136
    sget-object v1, Lcom/android/launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/Workspace;->mDefaultScreen:I

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->initWorkspace()V

    .line 141
    return-void
.end method

.method private clearVacantCache()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_c

    .line 390
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/android/launcher/CellLayout$CellInfo;->clearVacantCells()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    .line 393
    :cond_c
    return-void
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/android/launcher/CellLayout;[I)[I
    .registers 15
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    if-nez v0, :cond_b

    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/android/launcher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/android/launcher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1075
    :cond_b
    iget-object v5, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher/CellLayout;->findNearestVacantArea(IIIILcom/android/launcher/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findSearchWidget(Lcom/android/launcher/CellLayout;)Lcom/android/launcher/Search;
    .registers 6
    .parameter "screen"

    .prologue
    .line 1138
    invoke-virtual {p1}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 1139
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1140
    invoke-virtual {p1, v1}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1141
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher/Search;

    if-eqz v3, :cond_13

    .line 1142
    check-cast v2, Lcom/android/launcher/Search;

    .end local v2           #v:Landroid/view/View;
    move-object v3, v2

    .line 1145
    :goto_12
    return-object v3

    .line 1139
    .restart local v2       #v:Landroid/view/View;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1145
    .end local v2           #v:Landroid/view/View;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method private getCurrentDropLayout()Lcom/android/launcher/CellLayout;
    .registers 3

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v0, v1

    .line 1010
    .local v0, index:I
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher/CellLayout;

    return-object p0

    .line 1009
    .end local v0           #index:I
    .restart local p0
    :cond_12
    iget v1, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    move v0, v1

    goto :goto_b
.end method

.method private initWorkspace()V
    .registers 4

    .prologue
    .line 147
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 148
    iget v1, p0, Lcom/android/launcher/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    .line 149
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-static {v1}, Lcom/android/launcher/Launcher;->setScreen(I)V

    .line 151
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/Workspace;->mPaint:Landroid/graphics/Paint;

    .line 152
    iget-object v1, p0, Lcom/android/launcher/Workspace;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 155
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/Workspace;->mTouchSlop:I

    .line 156
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/Workspace;->mMaximumVelocity:I

    .line 157
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/android/launcher/CellLayout;)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 964
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/android/launcher/CellLayout;Z)V

    .line 965
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/android/launcher/CellLayout;Z)V
    .registers 27
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 970
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/launcher/ItemInfo;

    move-object/from16 v17, v0

    .line 974
    .local v17, info:Lcom/android/launcher/ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher/ItemInfo;->itemType:I

    move v4, v0

    packed-switch v4, :pswitch_data_ec

    .line 989
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher/ItemInfo;->itemType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 977
    :pswitch_2c
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher/ItemInfo;->container:J

    move-wide v4, v0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_44

    .line 979
    new-instance v18, Lcom/android/launcher/ApplicationInfo;

    check-cast v17, Lcom/android/launcher/ApplicationInfo;

    .end local v17           #info:Lcom/android/launcher/ItemInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher/ApplicationInfo;-><init>(Lcom/android/launcher/ApplicationInfo;)V

    .local v18, info:Lcom/android/launcher/ItemInfo;
    move-object/from16 v17, v18

    .line 981
    .end local v18           #info:Lcom/android/launcher/ItemInfo;
    .restart local v17       #info:Lcom/android/launcher/ItemInfo;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v4, v0

    const v5, 0x7f030001

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    move-object/from16 v18, v0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher/ApplicationInfo;)Landroid/view/View;

    move-result-object v9

    .line 992
    .end local p3
    .local v9, view:Landroid/view/View;
    :goto_5c
    if-eqz p5, :cond_e8

    const/4 v4, 0x0

    :goto_5f
    move-object/from16 v0, p4

    move-object v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/CellLayout;->addView(Landroid/view/View;I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v4, v0

    invoke-virtual {v9, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 994
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mTargetCell:[I

    move-object v11, v0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/android/launcher/CellLayout;[I)[I

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/Workspace;->mTargetCell:[I

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mTargetCell:[I

    move-object v4, v0

    move-object/from16 v0, p4

    move-object v1, v9

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 996
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 998
    .local v19, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher/Launcher;->getModel()Lcom/android/launcher/LauncherModel;

    move-result-object v20

    .line 999
    .local v20, model:Lcom/android/launcher/LauncherModel;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v10, v0

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v14, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    move v15, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move-object/from16 v11, v17

    invoke-static/range {v10 .. v16}, Lcom/android/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V

    .line 1002
    return-void

    .line 985
    .end local v9           #view:Landroid/view/View;
    .end local v19           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    .end local v20           #model:Lcom/android/launcher/LauncherModel;
    .restart local p3
    :pswitch_c0
    const v4, 0x7f030005

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/launcher/UserFolderInfo;

    move-object/from16 v18, v0

    move v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/FolderIcon;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/UserFolderInfo;)Lcom/android/launcher/FolderIcon;

    move-result-object v9

    .line 987
    .restart local v9       #view:Landroid/view/View;
    goto/16 :goto_5c

    .line 992
    :cond_e8
    const/4 v4, -0x1

    goto/16 :goto_5f

    .line 974
    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2c
        :pswitch_c0
    .end packed-switch
.end method

.method private snapToDestination()V
    .registers 5

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getWidth()I

    move-result v0

    .line 848
    .local v0, screenWidth:I
    iget v2, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 850
    .local v1, whichScreen:I
    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    .line 851
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1018
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->getCurrentDropLayout()Lcom/android/launcher/CellLayout;

    move-result-object v2

    .line 1019
    .local v2, layout:Lcom/android/launcher/CellLayout;
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1020
    .local v0, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    if-nez v0, :cond_25

    move v3, v6

    .line 1021
    .local v3, spanX:I
    :goto_b
    if-nez v0, :cond_29

    move v4, v6

    .line 1023
    .local v4, spanY:I
    :goto_e
    iget-object v5, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    if-nez v5, :cond_1b

    .line 1024
    if-nez v0, :cond_2d

    move-object v1, v7

    .line 1025
    .local v1, ignoreView:Landroid/view/View;
    :goto_15
    invoke-virtual {v2, v7, v1}, Lcom/android/launcher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/android/launcher/CellLayout$CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1028
    .end local v1           #ignoreView:Landroid/view/View;
    :cond_1b
    iget-object v5, p0, Lcom/android/launcher/Workspace;->mVacantCache:Lcom/android/launcher/CellLayout$CellInfo;

    iget-object v6, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/android/launcher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v5

    return v5

    .line 1020
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    :cond_25
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    move v3, v5

    goto :goto_b

    .line 1021
    .restart local v3       #spanX:I
    :cond_29
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    move v4, v5

    goto :goto_e

    .line 1024
    .restart local v4       #spanY:I
    :cond_2d
    iget-object v5, v0, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v1, v5

    goto :goto_15
.end method

.method addApplicationShortcut(Lcom/android/launcher/ApplicationInfo;Lcom/android/launcher/CellLayout$CellInfo;)V
    .registers 4
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/Workspace;->addApplicationShortcut(Lcom/android/launcher/ApplicationInfo;Lcom/android/launcher/CellLayout$CellInfo;Z)V

    .line 913
    return-void
.end method

.method addApplicationShortcut(Lcom/android/launcher/ApplicationInfo;Lcom/android/launcher/CellLayout$CellInfo;Z)V
    .registers 11
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 917
    iget v0, p2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/CellLayout;

    .line 918
    .local v4, layout:Lcom/android/launcher/CellLayout;
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 920
    .local v6, result:[I
    iget v0, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/launcher/CellLayout;->cellToPoint(II[I)V

    .line 921
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/android/launcher/CellLayout;Z)V

    .line 922
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 8
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 642
    iget-object v1, p0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getOpenFolder()Lcom/android/launcher/Folder;

    move-result-object v0

    .line 644
    .local v0, openFolder:Lcom/android/launcher/Folder;
    if-nez v0, :cond_44

    .line 645
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 646
    const/16 v1, 0x11

    if-ne p2, v1, :cond_2b

    .line 647
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_2a

    .line 648
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 659
    .end local v0           #openFolder:Lcom/android/launcher/Folder;
    :cond_2a
    :goto_2a
    return-void

    .line 650
    .restart local v0       #openFolder:Lcom/android/launcher/Folder;
    :cond_2b
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2a

    .line 651
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2a

    .line 652
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2a

    .line 656
    :cond_44
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2a
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .registers 14
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 302
    iget v2, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 303
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .registers 15
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 317
    iget v2, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 318
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .registers 15
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 332
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 333
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .registers 13
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 348
    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_25

    .line 349
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_25
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 354
    invoke-virtual {p0, p2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 355
    .local v0, group:Lcom/android/launcher/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 356
    .local v1, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    if-nez v1, :cond_4b

    .line 357
    new-instance v1, Lcom/android/launcher/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    invoke-direct {v1, p3, p4, p5, p6}, Lcom/android/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 364
    .restart local v1       #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :goto_3b
    if-eqz p7, :cond_54

    const/4 v2, 0x0

    :goto_3e
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 365
    instance-of v2, p1, Lcom/android/launcher/Folder;

    if-nez v2, :cond_4a

    .line 366
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 368
    :cond_4a
    return-void

    .line 359
    :cond_4b
    iput p3, v1, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    .line 360
    iput p4, v1, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    .line 361
    iput p5, v1, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 362
    iput p6, v1, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_3b

    .line 364
    :cond_54
    const/4 v2, -0x1

    goto :goto_3e
.end method

.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 179
    instance-of v0, p1, Lcom/android/launcher/CellLayout;

    if-nez v0, :cond_c

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 187
    instance-of v0, p1, Lcom/android/launcher/CellLayout;

    if-nez v0, :cond_c

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 191
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 195
    instance-of v0, p1, Lcom/android/launcher/CellLayout;

    if-nez v0, :cond_c

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 199
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 171
    instance-of v0, p1, Lcom/android/launcher/CellLayout;

    if-nez v0, :cond_c

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 175
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 203
    instance-of v0, p1, Lcom/android/launcher/CellLayout;

    if-nez v0, :cond_c

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/android/launcher/Widget;)V
    .registers 11
    .parameter "view"
    .parameter "widget"

    .prologue
    .line 371
    iget v2, p2, Lcom/android/launcher/Widget;->screen:I

    iget v3, p2, Lcom/android/launcher/Widget;->cellX:I

    iget v4, p2, Lcom/android/launcher/Widget;->cellY:I

    iget v5, p2, Lcom/android/launcher/Widget;->spanX:I

    iget v6, p2, Lcom/android/launcher/Widget;->spanY:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 373
    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/android/launcher/Widget;Z)V
    .registers 12
    .parameter "view"
    .parameter "widget"
    .parameter "insert"

    .prologue
    .line 376
    iget v2, p2, Lcom/android/launcher/Widget;->screen:I

    iget v3, p2, Lcom/android/launcher/Widget;->cellX:I

    iget v4, p2, Lcom/android/launcher/Widget;->cellY:I

    iget v5, p2, Lcom/android/launcher/Widget;->spanX:I

    iget v6, p2, Lcom/android/launcher/Widget;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 378
    return-void
.end method

.method public allowLongPress()Z
    .registers 2

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/android/launcher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .registers 12
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "rect"

    .prologue
    .line 268
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 270
    return-void
.end method

.method clearChildrenCache()V
    .registers 5

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 764
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_14

    .line 765
    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/CellLayout;

    .line 766
    .local v2, layout:Lcom/android/launcher/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 768
    .end local v2           #layout:Lcom/android/launcher/CellLayout;
    :cond_14
    return-void
.end method

.method public computeScroll()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 460
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 461
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    .line 462
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/Workspace;->mScrollY:I

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->postInvalidate()V

    .line 470
    :cond_1c
    :goto_1c
    return-void

    .line 464
    :cond_1d
    iget v0, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    if-eq v0, v4, :cond_1c

    .line 465
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    .line 466
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-static {v0}, Lcom/android/launcher/Launcher;->setScreen(I)V

    .line 467
    iput v4, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->clearChildrenCache()V

    goto :goto_1c
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 479
    const/16 v17, 0x0

    .line 484
    .local v17, restore:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->isDrawerUp()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    move-object v11, v0

    .line 486
    .local v11, clipBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mScrollX:I

    move v5, v0

    neg-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mScrollY:I

    move v6, v0

    neg-int v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 537
    .end local v11           #clipBounds:Landroid/graphics/Rect;
    :cond_32
    :goto_32
    return-void

    .line 491
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->isDrawerMoving()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 492
    const/16 v17, 0x1

    .line 493
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getDrawerHandle()Landroid/view/View;

    move-result-object v19

    .line 496
    .local v19, view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v18, v5, v6

    .line 498
    .local v18, top:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mScrollX:I

    move v5, v0

    int-to-float v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mDrawerContentWidth:I

    move v8, v0

    add-int/2addr v5, v8

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mDrawerContentHeight:I

    move v5, v0

    add-int v5, v5, v18

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 502
    .end local v18           #top:I
    .end local v19           #view:Landroid/view/View;
    :cond_7f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mScrollX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mWallpaperOffset:F

    move v6, v0

    mul-float v20, v5, v6

    .line 503
    .local v20, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mWallpaperWidth:I

    move v5, v0

    int-to-float v5, v5

    add-float v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mRight:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mLeft:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b9

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mWallpaperWidth:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v20, v0

    .line 507
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mBottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mTop:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mWallpaperHeight:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mTouchState:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_115

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mNextScreen:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_115

    const/4 v5, 0x1

    move v15, v5

    .line 516
    .local v15, fastDraw:Z
    :goto_f3
    if-eqz v15, :cond_118

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getDrawingTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 534
    :cond_10e
    :goto_10e
    if-eqz v17, :cond_32

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_32

    .line 514
    .end local v15           #fastDraw:Z
    :cond_115
    const/4 v5, 0x0

    move v15, v5

    goto :goto_f3

    .line 519
    .restart local v15       #fastDraw:Z
    :cond_118
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getDrawingTime()J

    move-result-wide v13

    .line 521
    .local v13, drawingTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mNextScreen:I

    move v5, v0

    if-ltz v5, :cond_16b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mNextScreen:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_16b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mNextScreen:I

    move v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16b

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mNextScreen:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_10e

    .line 527
    :cond_16b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v12

    .line 528
    .local v12, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_171
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_10e

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 528
    add-int/lit8 v16, v16, 0x1

    goto :goto_171
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 626
    const/16 v0, 0x11

    if-ne p2, v0, :cond_15

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_2f

    .line 628
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 637
    :goto_14
    return v0

    .line 631
    :cond_15
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2f

    .line 632
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2f

    .line 633
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 634
    goto :goto_14

    .line 637
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method enableChildrenCache()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 754
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 755
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_17

    .line 756
    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/CellLayout;

    .line 757
    .local v2, layout:Lcom/android/launcher/CellLayout;
    invoke-virtual {v2, v3}, Lcom/android/launcher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 758
    invoke-virtual {v2, v3}, Lcom/android/launcher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 760
    .end local v2           #layout:Lcom/android/launcher/CellLayout;
    :cond_17
    return-void
.end method

.method public estimateDropLocation(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 19
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->getCurrentDropLayout()Lcom/android/launcher/CellLayout;

    move-result-object v6

    .line 1038
    .local v6, layout:Lcom/android/launcher/CellLayout;
    iget-object v8, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1039
    .local v8, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    if-nez v8, :cond_25

    const/4 v0, 0x1

    move v3, v0

    .line 1040
    .local v3, spanX:I
    :goto_a
    if-nez v8, :cond_29

    const/4 v0, 0x1

    move v4, v0

    .line 1041
    .local v4, spanY:I
    :goto_e
    if-nez v8, :cond_2d

    const/4 v0, 0x0

    move-object v5, v0

    .line 1043
    .local v5, ignoreView:Landroid/view/View;
    :goto_12
    if-eqz p7, :cond_31

    move-object/from16 v10, p7

    .line 1046
    .local v10, location:Landroid/graphics/Rect;
    :goto_16
    sub-int v1, p2, p4

    sub-int v2, p3, p5

    iget-object v7, p0, Lcom/android/launcher/Workspace;->mTempCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/android/launcher/CellLayout;[I)[I

    move-result-object v9

    .line 1049
    .local v9, dropCell:[I
    if-nez v9, :cond_38

    .line 1050
    const/4 v0, 0x0

    .line 1061
    :goto_24
    return-object v0

    .line 1039
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v5           #ignoreView:Landroid/view/View;
    .end local v9           #dropCell:[I
    .end local v10           #location:Landroid/graphics/Rect;
    :cond_25
    iget v0, v8, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    move v3, v0

    goto :goto_a

    .line 1040
    .restart local v3       #spanX:I
    :cond_29
    iget v0, v8, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    move v4, v0

    goto :goto_e

    .line 1041
    .restart local v4       #spanY:I
    :cond_2d
    iget-object v0, v8, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v5, v0

    goto :goto_12

    .line 1043
    .restart local v5       #ignoreView:Landroid/view/View;
    :cond_31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    goto :goto_16

    .line 1053
    .restart local v9       #dropCell:[I
    .restart local v10       #location:Landroid/graphics/Rect;
    :cond_38
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    iget-object v2, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/launcher/CellLayout;->cellToPoint(II[I)V

    .line 1054
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 1055
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 1057
    const/4 v0, 0x0

    aget v0, v9, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/launcher/CellLayout;->cellToPoint(II[I)V

    .line 1058
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 1059
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    move-object v0, v10

    .line 1061
    goto :goto_24
.end method

.method findAllVacantCells([Z)Lcom/android/launcher/CellLayout$CellInfo;
    .registers 5
    .parameter "occupied"

    .prologue
    const/4 v2, 0x0

    .line 381
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 382
    .local v0, group:Lcom/android/launcher/CellLayout;
    if-eqz v0, :cond_10

    .line 383
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/android/launcher/CellLayout$CellInfo;

    move-result-object v1

    .line 385
    :goto_f
    return-object v1

    :cond_10
    move-object v1, v2

    goto :goto_f
.end method

.method public findSearchWidgetOnCurrentScreen()Lcom/android/launcher/Search;
    .registers 3

    .prologue
    .line 1153
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 1154
    .local v0, currentScreen:Lcom/android/launcher/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher/Workspace;->findSearchWidget(Lcom/android/launcher/CellLayout;)Lcom/android/launcher/Search;

    move-result-object v1

    return-object v1
.end method

.method fitInCurrentScreen(Landroid/view/View;II)V
    .registers 5
    .parameter "child"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 415
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher/Workspace;->fitInScreen(Landroid/view/View;III)V

    .line 416
    return-void
.end method

.method fitInScreen(Landroid/view/View;III)V
    .registers 11
    .parameter "child"
    .parameter "screen"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 428
    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_25

    .line 429
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_25
    invoke-virtual {p0, p2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 433
    .local v0, group:Lcom/android/launcher/CellLayout;
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mTempCell:[I

    invoke-virtual {v0, v2, p3, p4}, Lcom/android/launcher/CellLayout;->getVacantCell([III)Z

    move-result v1

    .line 434
    .local v1, vacant:Z
    if-eqz v1, :cond_53

    .line 435
    new-instance v2, Lcom/android/launcher/CellLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher/Workspace;->mTempCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/launcher/Workspace;->mTempCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-direct {v2, v3, v4, p3, p4}, Lcom/android/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 438
    instance-of v2, p1, Lcom/android/launcher/Folder;

    if-nez v2, :cond_53

    .line 439
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 442
    :cond_53
    return-void
.end method

.method getCurrentScreen()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher/Folder;
    .registers 13
    .parameter "tag"

    .prologue
    const/4 v10, 0x4

    .line 1158
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v8

    .line 1159
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_6
    if-ge v7, v8, :cond_3d

    .line 1160
    invoke-virtual {p0, v7}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/CellLayout;

    .line 1161
    .local v3, currentScreen:Lcom/android/launcher/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v2

    .line 1162
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_13
    if-ge v5, v2, :cond_3a

    .line 1163
    invoke-virtual {v3, v5}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1164
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 1165
    .local v6, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    iget v9, v6, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_37

    iget v9, v6, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_37

    instance-of v9, v1, Lcom/android/launcher/Folder;

    if-eqz v9, :cond_37

    .line 1166
    move-object v0, v1

    check-cast v0, Lcom/android/launcher/Folder;

    move-object v4, v0

    .line 1167
    .local v4, f:Lcom/android/launcher/Folder;
    invoke-virtual {v4}, Lcom/android/launcher/Folder;->getInfo()Lcom/android/launcher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_37

    move-object v9, v4

    .line 1173
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher/CellLayout;
    .end local v4           #f:Lcom/android/launcher/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :goto_36
    return-object v9

    .line 1162
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/android/launcher/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1159
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1173
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher/CellLayout;
    .end local v5           #i:I
    :cond_3d
    const/4 v9, 0x0

    goto :goto_36
.end method

.method getOpenFolder()Lcom/android/launcher/Folder;
    .registers 8

    .prologue
    const/4 v6, 0x4

    .line 213
    iget v5, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/CellLayout;

    .line 214
    .local v2, currentScreen:Lcom/android/launcher/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 215
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v1, :cond_2d

    .line 216
    invoke-virtual {v2, v3}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 218
    .local v4, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    iget v5, v4, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v5, v6, :cond_2a

    iget v5, v4, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v5, v6, :cond_2a

    instance-of v5, v0, Lcom/android/launcher/Folder;

    if-eqz v5, :cond_2a

    .line 219
    check-cast v0, Lcom/android/launcher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    .line 222
    .end local v4           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :goto_29
    return-object v5

    .line 215
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 222
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_2d
    const/4 v5, 0x0

    goto :goto_29
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v7

    .line 227
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_b
    if-ge v6, v7, :cond_3b

    .line 230
    invoke-virtual {p0, v6}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/CellLayout;

    .line 231
    .local v2, currentScreen:Lcom/android/launcher/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 232
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    if-ge v4, v1, :cond_35

    .line 233
    invoke-virtual {v2, v4}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 235
    .local v5, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    iget v8, v5, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v8, v9, :cond_38

    iget v8, v5, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v8, v9, :cond_38

    instance-of v8, v0, Lcom/android/launcher/Folder;

    if-eqz v8, :cond_38

    .line 236
    check-cast v0, Lcom/android/launcher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v5           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 232
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 242
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/android/launcher/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_3b
    return-object v3
.end method

.method public getScreenForView(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 1121
    const/4 v2, -0x1

    .line 1122
    .local v2, result:I
    if-eqz p1, :cond_19

    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1124
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 1125
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_19

    .line 1126
    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_16

    move v4, v1

    .line 1131
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_15
    return v4

    .line 1125
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_19
    move v4, v2

    .line 1131
    goto :goto_15
.end method

.method getVacantCell([III)Z
    .registers 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 399
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 400
    .local v0, group:Lcom/android/launcher/CellLayout;
    if-eqz v0, :cond_f

    .line 401
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher/CellLayout;->getVacantCell([III)Z

    move-result v1

    .line 403
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter "tag"

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v5

    .line 1178
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_5
    if-ge v4, v5, :cond_26

    .line 1179
    invoke-virtual {p0, v4}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/CellLayout;

    .line 1180
    .local v2, currentScreen:Lcom/android/launcher/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 1181
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v1, :cond_23

    .line 1182
    invoke-virtual {v2, v3}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1183
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_20

    move-object v6, v0

    .line 1188
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/android/launcher/CellLayout;
    .end local v3           #i:I
    :goto_1f
    return-object v6

    .line 1181
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/android/launcher/CellLayout;
    .restart local v3       #i:I
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1178
    .end local v0           #child:Landroid/view/View;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1188
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/android/launcher/CellLayout;
    .end local v3           #i:I
    :cond_26
    const/4 v6, 0x0

    goto :goto_1f
.end method

.method isDefaultScreenShowing()Z
    .registers 3

    .prologue
    .line 246
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    iget v1, p0, Lcom/android/launcher/Workspace;->mDefaultScreen:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method loadWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Workspace;->mWallpaperLoaded:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->requestLayout()V

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->invalidate()V

    .line 167
    return-void
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Workspace;->mLocked:Z

    .line 1207
    return-void
.end method

.method moveToDefaultScreen()V
    .registers 2

    .prologue
    .line 1328
    iget v0, p0, Lcom/android/launcher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    .line 1329
    iget v0, p0, Lcom/android/launcher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1330
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 952
    return-void
.end method

.method public onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 961
    return-void
.end method

.method public onDragOver(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 956
    return-void
.end method

.method public onDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 28
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getCurrentDropLayout()Lcom/android/launcher/CellLayout;

    move-result-object v11

    .line 926
    .local v11, cellLayout:Lcom/android/launcher/CellLayout;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_19

    .line 927
    sub-int v5, p2, p4

    sub-int v6, p3, p5

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-object/from16 v3, p6

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/android/launcher/CellLayout;)V

    .line 947
    :cond_18
    :goto_18
    return-void

    .line 930
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v5, v0

    if-eqz v5, :cond_18

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v5, v0

    iget-object v10, v5, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 932
    .local v10, cell:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v6, v0

    iget v6, v6, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    if-eq v5, v6, :cond_4e

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher/CellLayout;

    .line 934
    .local v20, originalCellLayout:Lcom/android/launcher/CellLayout;
    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 935
    invoke-virtual {v11, v10}, Lcom/android/launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 937
    .end local v20           #originalCellLayout:Lcom/android/launcher/CellLayout;
    :cond_4e
    sub-int v6, p2, p4

    sub-int v7, p3, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v5, v0

    iget v8, v5, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v5, v0

    iget v9, v5, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mTargetCell:[I

    move-object v12, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/android/launcher/CellLayout;[I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher/Workspace;->mTargetCell:[I

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mTargetCell:[I

    move-object v5, v0

    invoke-virtual {v11, v10, v5}, Lcom/android/launcher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 941
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher/ItemInfo;

    .line 942
    .local v13, info:Lcom/android/launcher/ItemInfo;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 943
    .local v19, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v12, v0

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    move/from16 v17, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    invoke-static/range {v12 .. v18}, Lcom/android/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V

    goto/16 :goto_18
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 6
    .parameter "target"
    .parameter "success"

    .prologue
    .line 1088
    if-eqz p2, :cond_2e

    .line 1089
    if-eq p1, p0, :cond_2a

    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_2a

    .line 1090
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 1091
    .local v0, cellLayout:Lcom/android/launcher/CellLayout;
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1092
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1093
    .local v1, tag:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher/Launcher;->getModel()Lcom/android/launcher/LauncherModel;

    move-result-object v2

    check-cast v1, Lcom/android/launcher/ItemInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/android/launcher/LauncherModel;->removeDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 1102
    .end local v0           #cellLayout:Lcom/android/launcher/CellLayout;
    :cond_2a
    :goto_2a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1103
    return-void

    .line 1096
    :cond_2e
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_2a

    .line 1097
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout;

    .line 1098
    .restart local v0       #cellLayout:Lcom/android/launcher/CellLayout;
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_2a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 663
    iget-boolean v9, p0, Lcom/android/launcher/Workspace;->mLocked:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_e
    move v9, v10

    .line 750
    :goto_f
    return v9

    .line 678
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 679
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1d

    iget v9, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    if-eqz v9, :cond_1d

    move v9, v10

    .line 680
    goto :goto_f

    .line 683
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 684
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 686
    .local v6, y:F
    packed-switch v0, :pswitch_data_86

    .line 750
    :cond_28
    :goto_28
    iget v9, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    if-eqz v9, :cond_83

    move v9, v10

    goto :goto_f

    .line 697
    :pswitch_2e
    iget v9, p0, Lcom/android/launcher/Workspace;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 698
    .local v4, xDiff:I
    iget v9, p0, Lcom/android/launcher/Workspace;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 700
    .local v7, yDiff:I
    iget v2, p0, Lcom/android/launcher/Workspace;->mTouchSlop:I

    .line 701
    .local v2, touchSlop:I
    if-le v4, v2, :cond_63

    move v5, v10

    .line 702
    .local v5, xMoved:Z
    :goto_45
    if-le v7, v2, :cond_65

    move v8, v10

    .line 704
    .local v8, yMoved:Z
    :goto_48
    if-nez v5, :cond_4c

    if-eqz v8, :cond_28

    .line 706
    :cond_4c
    if-eqz v5, :cond_53

    .line 708
    iput v10, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    .line 709
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->enableChildrenCache()V

    .line 712
    :cond_53
    iget-boolean v9, p0, Lcom/android/launcher/Workspace;->mAllowLongPress:Z

    if-eqz v9, :cond_28

    .line 713
    iput-boolean v11, p0, Lcom/android/launcher/Workspace;->mAllowLongPress:Z

    .line 717
    iget v9, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 718
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_28

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_63
    move v5, v11

    .line 701
    goto :goto_45

    .restart local v5       #xMoved:Z
    :cond_65
    move v8, v11

    .line 702
    goto :goto_48

    .line 725
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_67
    iput v3, p0, Lcom/android/launcher/Workspace;->mLastMotionX:F

    .line 726
    iput v6, p0, Lcom/android/launcher/Workspace;->mLastMotionY:F

    .line 727
    iput-boolean v10, p0, Lcom/android/launcher/Workspace;->mAllowLongPress:Z

    .line 734
    iget-object v9, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_79

    move v9, v11

    :goto_76
    iput v9, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    goto :goto_28

    :cond_79
    move v9, v10

    goto :goto_76

    .line 740
    :pswitch_7b
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->clearChildrenCache()V

    .line 741
    iput v11, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    .line 742
    iput-boolean v11, p0, Lcom/android/launcher/Workspace;->mAllowLongPress:Z

    goto :goto_28

    :cond_83
    move v9, v11

    .line 750
    goto :goto_f

    .line 686
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_67
        :pswitch_7b
        :pswitch_2e
        :pswitch_7b
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v3

    .line 583
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_26

    .line 584
    invoke-virtual {p0, v4}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 586
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 587
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 588
    add-int/2addr v1, v2

    .line 583
    .end local v2           #childWidth:I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 591
    .end local v0           #child:Landroid/view/View;
    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v9, 0x0

    const-string v8, "Workspace can only be used in EXACTLY mode."

    .line 541
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 543
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 544
    .local v4, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 545
    .local v5, widthMode:I
    if-eq v5, v6, :cond_1a

    .line 546
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 549
    :cond_1a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 550
    .local v1, heightMode:I
    if-eq v1, v6, :cond_28

    .line 551
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 555
    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 556
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    if-ge v2, v0, :cond_39

    .line 557
    invoke-virtual {p0, v2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/view/View;->measure(II)V

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 560
    :cond_39
    iget-boolean v6, p0, Lcom/android/launcher/Workspace;->mWallpaperLoaded:Z

    if-eqz v6, :cond_5f

    .line 561
    iput-boolean v9, p0, Lcom/android/launcher/Workspace;->mWallpaperLoaded:Z

    .line 562
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v4, v7, v8}, Lcom/android/launcher/Utilities;->centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    .line 564
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/launcher/Workspace;->mWallpaperWidth:I

    .line 565
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/launcher/Workspace;->mWallpaperHeight:I

    .line 568
    :cond_5f
    iget v3, p0, Lcom/android/launcher/Workspace;->mWallpaperWidth:I

    .line 569
    .local v3, wallpaperWidth:I
    if-le v3, v4, :cond_7d

    mul-int v6, v0, v4

    sub-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v7, 0x1

    sub-int v7, v0, v7

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    :goto_6e
    iput v6, p0, Lcom/android/launcher/Workspace;->mWallpaperOffset:F

    .line 572
    iget-boolean v6, p0, Lcom/android/launcher/Workspace;->mFirstLayout:Z

    if-eqz v6, :cond_7c

    .line 573
    iget v6, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    mul-int/2addr v6, v4

    invoke-virtual {p0, v6, v9}, Lcom/android/launcher/Workspace;->scrollTo(II)V

    .line 574
    iput-boolean v9, p0, Lcom/android/launcher/Workspace;->mFirstLayout:Z

    .line 576
    :cond_7c
    return-void

    .line 569
    :cond_7d
    const/high16 v6, 0x3f80

    goto :goto_6e
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 607
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 608
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getOpenFolder()Lcom/android/launcher/Folder;

    move-result-object v1

    .line 609
    .local v1, openFolder:Lcom/android/launcher/Folder;
    if-eqz v1, :cond_13

    .line 610
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 621
    .end local v1           #openFolder:Lcom/android/launcher/Folder;
    :goto_12
    return v2

    .line 613
    .restart local v1       #openFolder:Lcom/android/launcher/Folder;
    :cond_13
    iget v2, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    .line 614
    iget v0, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    .line 618
    .local v0, focusableScreen:I
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 621
    .end local v0           #focusableScreen:I
    .end local v1           #openFolder:Lcom/android/launcher/Folder;
    :cond_21
    const/4 v2, 0x0

    goto :goto_12

    .line 616
    .restart local v1       #openFolder:Lcom/android/launcher/Folder;
    :cond_23
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1a
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 903
    move-object v0, p1

    check-cast v0, Lcom/android/launcher/Workspace$SavedState;

    move-object v1, v0

    .line 904
    .local v1, savedState:Lcom/android/launcher/Workspace$SavedState;
    invoke-virtual {v1}, Lcom/android/launcher/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 905
    iget v2, v1, Lcom/android/launcher/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 906
    iget v2, v1, Lcom/android/launcher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    .line 907
    iget v2, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/android/launcher/Launcher;->setScreen(I)V

    .line 909
    :cond_19
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 896
    new-instance v0, Lcom/android/launcher/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 897
    .local v0, state:Lcom/android/launcher/Workspace$SavedState;
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/android/launcher/Workspace$SavedState;->currentScreen:I

    .line 898
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    const/16 v7, 0x3e8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 772
    iget-boolean v6, p0, Lcom/android/launcher/Workspace;->mLocked:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v6

    if-nez v6, :cond_12

    :cond_10
    move v6, v8

    .line 843
    :goto_11
    return v6

    .line 776
    :cond_12
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1c

    .line 777
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 779
    :cond_1c
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 782
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 784
    .local v5, x:F
    packed-switch v0, :pswitch_data_c4

    :cond_2c
    :goto_2c
    move v6, v8

    .line 843
    goto :goto_11

    .line 790
    :pswitch_2e
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 791
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 795
    :cond_3b
    iput v5, p0, Lcom/android/launcher/Workspace;->mLastMotionX:F

    goto :goto_2c

    .line 798
    :pswitch_3e
    iget v6, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    if-ne v6, v8, :cond_2c

    .line 800
    iget v6, p0, Lcom/android/launcher/Workspace;->mLastMotionX:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 801
    .local v2, deltaX:I
    iput v5, p0, Lcom/android/launcher/Workspace;->mLastMotionX:F

    .line 803
    if-gez v2, :cond_59

    .line 804
    iget v6, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    if-lez v6, :cond_2c

    .line 805
    iget v6, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    neg-int v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/launcher/Workspace;->scrollBy(II)V

    goto :goto_2c

    .line 807
    :cond_59
    if-lez v2, :cond_2c

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getWidth()I

    move-result v7

    sub-int v1, v6, v7

    .line 810
    .local v1, availableToScroll:I
    if-lez v1, :cond_2c

    .line 811
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/launcher/Workspace;->scrollBy(II)V

    goto :goto_2c

    .line 817
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    :pswitch_7b
    iget v6, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    if-ne v6, v8, :cond_a4

    .line 818
    iget-object v3, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 819
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    iget v6, p0, Lcom/android/launcher/Workspace;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 820
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 822
    .local v4, velocityX:I
    if-le v4, v7, :cond_a7

    iget v6, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    if-lez v6, :cond_a7

    .line 824
    iget v6, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    sub-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    .line 832
    :goto_98
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_a4

    .line 833
    iget-object v6, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 834
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 837
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :cond_a4
    iput v9, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    goto :goto_2c

    .line 825
    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #velocityX:I
    :cond_a7
    const/16 v6, -0x3e8

    if-ge v4, v6, :cond_bc

    iget v6, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_bc

    .line 827
    iget v6, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    goto :goto_98

    .line 829
    :cond_bc
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->snapToDestination()V

    goto :goto_98

    .line 840
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :pswitch_c0
    iput v9, p0, Lcom/android/launcher/Workspace;->mTouchState:I

    goto/16 :goto_2c

    .line 784
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_7b
        :pswitch_3e
        :pswitch_c0
    .end packed-switch
.end method

.method removeShortcutsForPackage(Ljava/lang/String;)V
    .registers 25
    .parameter "packageName"

    .prologue
    .line 1225
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v4, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Lcom/android/launcher/Launcher;->getModel()Lcom/android/launcher/LauncherModel;

    move-result-object v15

    .line 1227
    .local v15, model:Lcom/android/launcher/LauncherModel;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v7

    .line 1229
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_e
    if-ge v9, v7, :cond_105

    .line 1230
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher/CellLayout;

    .line 1231
    .local v14, layout:Lcom/android/launcher/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 1233
    .local v3, childCount:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1235
    const/4 v12, 0x0

    .local v12, j:I
    :goto_21
    if-ge v12, v3, :cond_e6

    .line 1236
    invoke-virtual {v14, v12}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1237
    .local v20, view:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 1239
    .local v18, tag:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher/ApplicationInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_72

    .line 1240
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    move-object v10, v0

    .line 1244
    .local v10, info:Lcom/android/launcher/ApplicationInfo;
    iget-object v11, v10, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1245
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 1247
    .local v16, name:Landroid/content/ComponentName;
    const-string v21, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6f

    if-eqz v16, :cond_6f

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6f

    .line 1249
    invoke-virtual {v15, v10}, Lcom/android/launcher/LauncherModel;->removeDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V

    .line 1251
    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    .end local v10           #info:Lcom/android/launcher/ApplicationInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #name:Landroid/content/ComponentName;
    :cond_6f
    :goto_6f
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    .line 1253
    :cond_72
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher/UserFolderInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_6f

    .line 1254
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/launcher/UserFolderInfo;

    move-object v10, v0

    .line 1255
    .local v10, info:Lcom/android/launcher/UserFolderInfo;
    iget-object v5, v10, Lcom/android/launcher/UserFolderInfo;->contents:Ljava/util/ArrayList;

    .line 1256
    .local v5, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    new-instance v19, Ljava/util/ArrayList;

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1257
    .local v19, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1258
    .local v6, contentsCount:I
    const/16 v17, 0x0

    .line 1260
    .local v17, removedFromFolder:Z
    const/4 v13, 0x0

    .local v13, k:I
    :goto_93
    if-ge v13, v6, :cond_d4

    .line 1261
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/ApplicationInfo;

    .line 1262
    .local v2, appInfo:Lcom/android/launcher/ApplicationInfo;
    iget-object v11, v2, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1263
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 1265
    .restart local v16       #name:Landroid/content/ComponentName;
    const-string v21, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d1

    if-eqz v16, :cond_d1

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d1

    .line 1267
    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V

    .line 1269
    const/16 v17, 0x1

    .line 1260
    :cond_d1
    add-int/lit8 v13, v13, 0x1

    goto :goto_93

    .line 1273
    .end local v2           #appInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #name:Landroid/content/ComponentName;
    :cond_d4
    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1274
    if-eqz v17, :cond_6f

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getOpenFolder()Lcom/android/launcher/Folder;

    move-result-object v8

    .line 1276
    .local v8, folder:Lcom/android/launcher/Folder;
    if-eqz v8, :cond_6f

    invoke-virtual {v8}, Lcom/android/launcher/Folder;->notifyDataSetChanged()V

    goto :goto_6f

    .line 1281
    .end local v5           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    .end local v6           #contentsCount:I
    .end local v8           #folder:Lcom/android/launcher/Folder;
    .end local v10           #info:Lcom/android/launcher/UserFolderInfo;
    .end local v13           #k:I
    .end local v17           #removedFromFolder:Z
    .end local v18           #tag:Ljava/lang/Object;
    .end local v19           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    .end local v20           #view:Landroid/view/View;
    :cond_e6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1282
    const/4 v12, 0x0

    :goto_eb
    if-ge v12, v3, :cond_f9

    .line 1283
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v14, v2}, Lcom/android/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 1282
    add-int/lit8 v12, v12, 0x1

    goto :goto_eb

    .line 1286
    :cond_f9
    if-lez v3, :cond_101

    .line 1287
    invoke-virtual {v14}, Lcom/android/launcher/CellLayout;->requestLayout()V

    .line 1288
    invoke-virtual {v14}, Lcom/android/launcher/CellLayout;->invalidate()V

    .line 1229
    :cond_101
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_e

    .line 1291
    .end local v3           #childCount:I
    .end local v12           #j:I
    .end local v14           #layout:Lcom/android/launcher/CellLayout;
    :cond_105
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/android/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 596
    .local v0, screen:I
    iget v1, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 597
    :cond_10
    iget-object v1, p0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    .line 600
    :cond_1b
    const/4 v1, 0x1

    .line 602
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public scrollLeft()V
    .registers 3

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 1107
    iget v0, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1108
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    .line 1110
    :cond_1b
    return-void
.end method

.method public scrollRight()V
    .registers 4

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 1114
    iget v0, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1116
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->snapToScreen(I)V

    .line 1118
    :cond_21
    return-void
.end method

.method public setAllowLongPress(Z)V
    .registers 2
    .parameter "allowLongPress"

    .prologue
    .line 1221
    iput-boolean p1, p0, Lcom/android/launcher/Workspace;->mAllowLongPress:Z

    .line 1222
    return-void
.end method

.method setCurrentScreen(I)V
    .registers 5
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    .line 280
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher/Workspace;->scrollTo(II)V

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->invalidate()V

    .line 282
    return-void
.end method

.method public setDragger(Lcom/android/launcher/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/launcher/Workspace;->mDragger:Lcom/android/launcher/DragController;

    .line 1085
    return-void
.end method

.method setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    .line 1081
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 453
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 454
    invoke-virtual {p0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 456
    :cond_13
    return-void
.end method

.method showDefaultScreen()V
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/android/launcher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->setCurrentScreen(I)V

    .line 289
    return-void
.end method

.method snapToScreen(I)V
    .registers 11
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 854
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 873
    :goto_a
    return-void

    .line 856
    :cond_b
    invoke-direct {p0}, Lcom/android/launcher/Workspace;->clearVacantCache()V

    .line 857
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->enableChildrenCache()V

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 860
    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_54

    move v6, v1

    .line 862
    .local v6, changingScreens:Z
    :goto_23
    iput p1, p0, Lcom/android/launcher/Workspace;->mNextScreen:I

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 865
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_38

    if-eqz v6, :cond_38

    iget v0, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_38

    .line 866
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 869
    :cond_38
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 870
    .local v8, newX:I
    iget v0, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    sub-int v3, v8, v0

    .line 871
    .local v3, delta:I
    iget-object v0, p0, Lcom/android/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher/Workspace;->mScrollX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 872
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->invalidate()V

    goto :goto_a

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_54
    move v6, v2

    .line 860
    goto :goto_23
.end method

.method startDrag(Lcom/android/launcher/CellLayout$CellInfo;)V
    .registers 7
    .parameter "cellInfo"

    .prologue
    .line 876
    iget-object v0, p1, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 880
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_d

    instance-of v2, v0, Lcom/android/launcher/Search;

    if-nez v2, :cond_d

    .line 892
    :goto_c
    return-void

    .line 884
    :cond_d
    iput-object p1, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 885
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget v3, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    iput v3, v2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 887
    iget v2, p0, Lcom/android/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/CellLayout;

    .line 889
    .local v1, current:Lcom/android/launcher/CellLayout;
    invoke-virtual {v1, v0}, Lcom/android/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 890
    iget-object v2, p0, Lcom/android/launcher/Workspace;->mDragger:Lcom/android/launcher/DragController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v0, p0, v3, v4}, Lcom/android/launcher/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher/DragSource;Ljava/lang/Object;I)V

    .line 891
    invoke-virtual {p0}, Lcom/android/launcher/Workspace;->invalidate()V

    goto :goto_c
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 1197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/Workspace;->mLocked:Z

    .line 1198
    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .registers 18
    .parameter "packageName"

    .prologue
    const/4 v15, 0x0

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v3

    .line 1295
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_84

    .line 1296
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher/CellLayout;

    .line 1297
    .local v9, layout:Lcom/android/launcher/CellLayout;
    invoke-virtual {v9}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v2

    .line 1298
    .local v2, childCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_16
    if-ge v8, v2, :cond_81

    .line 1299
    invoke-virtual {v9, v8}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1300
    .local v12, view:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 1301
    .local v11, tag:Ljava/lang/Object;
    instance-of v13, v11, Lcom/android/launcher/ApplicationInfo;

    if-eqz v13, :cond_7e

    .line 1302
    move-object v0, v11

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    move-object v6, v0

    .line 1306
    .local v6, info:Lcom/android/launcher/ApplicationInfo;
    iget-object v7, v6, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1307
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 1308
    .local v10, name:Landroid/content/ComponentName;
    iget v13, v6, Lcom/android/launcher/ApplicationInfo;->itemType:I

    if-nez v13, :cond_7e

    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7e

    if-eqz v10, :cond_7e

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 1312
    invoke-static {}, Lcom/android/launcher/Launcher;->getModel()Lcom/android/launcher/LauncherModel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Lcom/android/launcher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/android/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1314
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_7e

    iget-object v13, v6, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v5, v13, :cond_7e

    .line 1315
    iget-object v13, v6, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v5, v13}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v6, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1317
    const/4 v13, 0x1

    iput-boolean v13, v6, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    .line 1318
    check-cast v12, Landroid/widget/TextView;

    .end local v12           #view:Landroid/view/View;
    iget-object v13, v6, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v15, v13, v15, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1298
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #info:Lcom/android/launcher/ApplicationInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #name:Landroid/content/ComponentName;
    :cond_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 1295
    .end local v11           #tag:Ljava/lang/Object;
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1325
    .end local v2           #childCount:I
    .end local v8           #j:I
    .end local v9           #layout:Lcom/android/launcher/CellLayout;
    :cond_84
    return-void
.end method
