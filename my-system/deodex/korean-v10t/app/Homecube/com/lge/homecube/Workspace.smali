.class public Lcom/lge/homecube/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/lge/homecube/DropTarget;
.implements Lcom/lge/homecube/DragSource;
.implements Lcom/lge/homecube/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/Workspace$1;,
        Lcom/lge/homecube/Workspace$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Workspace"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAllowLongPress:Z

.field private mBottomButtonLayout:Landroid/widget/AbsoluteLayout;

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentPosition:I

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mDeleteZoneFlag:Z

.field private mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

.field private mDragger:Lcom/lge/homecube/DragController;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field mDrawerContentHeight:I

.field mDrawerContentWidth:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/lge/homecube/Launcher;

.field private mLocked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mNextScreen:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mTempCell:[I

.field private mTouchSlop:I

.field private mTouchState:I

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
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/homecube/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v3, p0, Lcom/lge/homecube/Workspace;->mFirstLayout:Z

    .line 75
    iput-boolean v2, p0, Lcom/lge/homecube/Workspace;->mDeleteZoneFlag:Z

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    .line 113
    iput v2, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    .line 120
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lge/homecube/Workspace;->mTempCell:[I

    .line 127
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 168
    sget-object v1, Lcom/lge/homecube/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/Workspace;->mDefaultScreen:I

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-direct {p0}, Lcom/lge/homecube/Workspace;->initWorkspace()V

    .line 173
    return-void
.end method

.method private findSearchWidget(Lcom/lge/homecube/CellLayout;)Lcom/lge/homecube/Search;
    .registers 6
    .parameter "screen"

    .prologue
    .line 1414
    invoke-virtual {p1}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v0

    .line 1415
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1416
    invoke-virtual {p1, v1}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1417
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/lge/homecube/Search;

    if-eqz v3, :cond_13

    .line 1418
    check-cast v2, Lcom/lge/homecube/Search;

    .end local v2           #v:Landroid/view/View;
    move-object v3, v2

    .line 1421
    :goto_12
    return-object v3

    .line 1415
    .restart local v2       #v:Landroid/view/View;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1421
    .end local v2           #v:Landroid/view/View;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method private focusOnSearch(I)Z
    .registers 5
    .parameter "screen"

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 1430
    .local v0, currentScreen:Lcom/lge/homecube/CellLayout;
    invoke-direct {p0, v0}, Lcom/lge/homecube/Workspace;->findSearchWidget(Lcom/lge/homecube/CellLayout;)Lcom/lge/homecube/Search;

    move-result-object v1

    .line 1431
    .local v1, searchWidget:Lcom/lge/homecube/Search;
    if-eqz v1, :cond_e

    .line 1462
    const/4 v2, 0x1

    .line 1464
    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private initWorkspace()V
    .registers 3

    .prologue
    .line 193
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 194
    iget v0, p0, Lcom/lge/homecube/Workspace;->mDefaultScreen:I

    iput v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    .line 195
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->setScreen(I)V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Workspace;->mPaint:Landroid/graphics/Paint;

    .line 198
    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Workspace;->mTouchSlop:I

    .line 201
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/lge/homecube/CellLayout;)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 1286
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/lge/homecube/CellLayout;Z)V

    .line 1287
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/lge/homecube/CellLayout;Z)V
    .registers 21
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 1292
    move-object/from16 v0, p3

    check-cast v0, Lcom/lge/homecube/ItemInfo;

    move-object v5, v0

    .line 1296
    .local v5, info:Lcom/lge/homecube/ItemInfo;
    iget v4, v5, Lcom/lge/homecube/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_98

    .line 1311
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown item type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Lcom/lge/homecube/ItemInfo;->itemType:I

    .end local v5           #info:Lcom/lge/homecube/ItemInfo;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1299
    .restart local v5       #info:Lcom/lge/homecube/ItemInfo;
    :pswitch_25
    iget-wide v6, v5, Lcom/lge/homecube/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_35

    .line 1301
    new-instance v11, Lcom/lge/homecube/ApplicationInfo;

    check-cast v5, Lcom/lge/homecube/ApplicationInfo;

    .end local v5           #info:Lcom/lge/homecube/ItemInfo;
    invoke-direct {v11, v5}, Lcom/lge/homecube/ApplicationInfo;-><init>(Lcom/lge/homecube/ApplicationInfo;)V

    .local v11, info:Lcom/lge/homecube/ItemInfo;
    move-object v5, v11

    .line 1303
    .end local v11           #info:Lcom/lge/homecube/ItemInfo;
    .restart local v5       #info:Lcom/lge/homecube/ItemInfo;
    :cond_35
    iget-object v4, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    const v7, 0x7f030002

    move-object v0, v5

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object v6, v0

    move-object v0, v4

    move v1, v7

    move-object/from16 v2, p4

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/lge/homecube/ApplicationInfo;)Landroid/view/View;

    move-result-object v14

    .line 1314
    .end local p3
    .local v14, view:Landroid/view/View;
    :goto_47
    if-eqz p5, :cond_96

    const/4 v4, 0x0

    :goto_4a
    move-object/from16 v0, p4

    move-object v1, v14

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/lge/homecube/CellLayout;->addView(Landroid/view/View;I)V

    .line 1315
    iget-object v4, p0, Lcom/lge/homecube/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v14, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1316
    move-object/from16 v0, p4

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/CellLayout;->onDropChild(Landroid/view/View;II)V

    .line 1317
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 1319
    .local v12, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    invoke-static {}, Lcom/lge/homecube/Launcher;->getModel()Lcom/lge/homecube/LauncherModel;

    move-result-object v13

    .line 1320
    .local v13, model:Lcom/lge/homecube/LauncherModel;
    invoke-virtual {v13, v5}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 1321
    iget-object v4, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    const-wide/16 v6, -0x64

    iget v8, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    iget v9, v12, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    iget v10, v12, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v4 .. v10}, Lcom/lge/homecube/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V

    .line 1323
    return-void

    .line 1307
    .end local v12           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    .end local v13           #model:Lcom/lge/homecube/LauncherModel;
    .end local v14           #view:Landroid/view/View;
    .restart local p3
    :pswitch_7b
    const v4, 0x7f030007

    iget-object v7, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    iget v6, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/lge/homecube/UserFolderInfo;

    move-object v6, v0

    move v0, v4

    move-object v1, v7

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/lge/homecube/FolderIcon;->fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/UserFolderInfo;)Lcom/lge/homecube/FolderIcon;

    move-result-object v14

    .line 1309
    .restart local v14       #view:Landroid/view/View;
    goto :goto_47

    .line 1314
    :cond_96
    const/4 v4, -0x1

    goto :goto_4a

    .line 1296
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_7b
    .end packed-switch
.end method

.method private snapToDestination()V
    .registers 6

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v0

    .line 1137
    .local v0, screenWidth:I
    iget v2, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 1138
    .local v1, whichScreen:I
    :goto_b
    if-gez v1, :cond_13

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    .line 1141
    :cond_13
    const-string v2, "momo@android"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-10/1000, whichScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    .line 1143
    return-void
.end method


# virtual methods
.method public DropOnMenu(FFLjava/lang/Object;)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"

    .prologue
    .line 1346
    const/4 v0, 0x1

    return v0
.end method

.method public acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x1

    .line 1328
    iget-object v6, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 1329
    .local v6, cellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    if-nez v6, :cond_1d

    move v3, v1

    .line 1330
    .local v3, cellHSpan:I
    :goto_6
    if-nez v6, :cond_21

    move v4, v1

    .line 1332
    .local v4, cellVSpan:I
    :goto_9
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    sub-int v1, p2, p4

    sub-int v2, p3, p5

    if-nez v6, :cond_25

    const/4 v5, 0x0

    :goto_18
    invoke-virtual/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->acceptChildDrop(IIIILandroid/view/View;)Z

    move-result v0

    return v0

    .line 1329
    .end local v3           #cellHSpan:I
    .end local v4           #cellVSpan:I
    :cond_1d
    iget v0, v6, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    move v3, v0

    goto :goto_6

    .line 1330
    .restart local v3       #cellHSpan:I
    :cond_21
    iget v0, v6, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    move v4, v0

    goto :goto_9

    .line 1332
    .restart local v4       #cellVSpan:I
    :cond_25
    iget-object v5, v6, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_18
.end method

.method addApplicationShortcut(Lcom/lge/homecube/ApplicationInfo;Lcom/lge/homecube/CellLayout$CellInfo;)V
    .registers 4
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    .line 1238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/homecube/Workspace;->addApplicationShortcut(Lcom/lge/homecube/ApplicationInfo;Lcom/lge/homecube/CellLayout$CellInfo;Z)V

    .line 1239
    return-void
.end method

.method addApplicationShortcut(Lcom/lge/homecube/ApplicationInfo;Lcom/lge/homecube/CellLayout$CellInfo;Z)V
    .registers 11
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 1243
    iget v0, p2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/homecube/CellLayout;

    .line 1244
    .local v4, layout:Lcom/lge/homecube/CellLayout;
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 1246
    .local v6, result:[I
    iget v0, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v4, v0, v1, v6}, Lcom/lge/homecube/CellLayout;->cellToPoint(II[I)V

    .line 1247
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/lge/homecube/CellLayout;Z)V

    .line 1248
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 7
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 885
    iget-object v1, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1}, Lcom/lge/homecube/Launcher;->isDrawerDown()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 886
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getOpenFolder()Lcom/lge/homecube/Folder;

    move-result-object v0

    .line 887
    .local v0, openFolder:Lcom/lge/homecube/Folder;
    if-nez v0, :cond_5a

    .line 888
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 889
    const/16 v1, 0x11

    if-ne p2, v1, :cond_38

    .line 890
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_2b

    .line 891
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 908
    .end local v0           #openFolder:Lcom/lge/homecube/Folder;
    :cond_2a
    :goto_2a
    return-void

    .line 894
    .restart local v0       #openFolder:Lcom/lge/homecube/Folder;
    :cond_2b
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2a

    .line 896
    :cond_38
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2a

    .line 897
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_51

    .line 898
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2a

    .line 901
    :cond_51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2a

    .line 905
    :cond_5a
    invoke-virtual {v0, p1, p2}, Lcom/lge/homecube/Folder;->addFocusables(Ljava/util/ArrayList;I)V

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
    .line 356
    iget v2, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 357
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
    .line 371
    iget v2, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 372
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
    .line 386
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 387
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
    .line 402
    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_25

    .line 403
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_25
    invoke-virtual {p0, p2}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 407
    .local v0, group:Lcom/lge/homecube/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 408
    .local v1, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    if-nez v1, :cond_48

    .line 409
    new-instance v1, Lcom/lge/homecube/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    invoke-direct {v1, p3, p4, p5, p6}, Lcom/lge/homecube/CellLayout$LayoutParams;-><init>(IIII)V

    .line 416
    .restart local v1       #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :goto_38
    if-eqz p7, :cond_51

    const/4 v2, 0x0

    :goto_3b
    invoke-virtual {v0, p1, v2, v1}, Lcom/lge/homecube/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 417
    instance-of v2, p1, Lcom/lge/homecube/Folder;

    if-nez v2, :cond_47

    .line 418
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 420
    :cond_47
    return-void

    .line 411
    :cond_48
    iput p3, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    .line 412
    iput p4, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    .line 413
    iput p5, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    .line 414
    iput p6, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_38

    .line 416
    :cond_51
    const/4 v2, -0x1

    goto :goto_3b
.end method

.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 224
    instance-of v0, p1, Lcom/lge/homecube/CellLayout;

    if-nez v0, :cond_c

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 232
    instance-of v0, p1, Lcom/lge/homecube/CellLayout;

    if-nez v0, :cond_c

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 236
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 240
    instance-of v0, p1, Lcom/lge/homecube/CellLayout;

    if-nez v0, :cond_c

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 244
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 216
    instance-of v0, p1, Lcom/lge/homecube/CellLayout;

    if-nez v0, :cond_c

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 248
    instance-of v0, p1, Lcom/lge/homecube/CellLayout;

    if-nez v0, :cond_c

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/lge/homecube/Widget;)V
    .registers 11
    .parameter "view"
    .parameter "widget"

    .prologue
    .line 423
    iget v2, p2, Lcom/lge/homecube/Widget;->screen:I

    iget v3, p2, Lcom/lge/homecube/Widget;->cellX:I

    iget v4, p2, Lcom/lge/homecube/Widget;->cellY:I

    iget v5, p2, Lcom/lge/homecube/Widget;->spanX:I

    iget v6, p2, Lcom/lge/homecube/Widget;->spanY:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 425
    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/lge/homecube/Widget;Z)V
    .registers 12
    .parameter "view"
    .parameter "widget"
    .parameter "insert"

    .prologue
    .line 428
    iget v2, p2, Lcom/lge/homecube/Widget;->screen:I

    iget v3, p2, Lcom/lge/homecube/Widget;->cellX:I

    iget v4, p2, Lcom/lge/homecube/Widget;->cellY:I

    iget v5, p2, Lcom/lge/homecube/Widget;->spanX:I

    iget v6, p2, Lcom/lge/homecube/Widget;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 430
    return-void
.end method

.method public allowLongPress()Z
    .registers 2

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/lge/homecube/Workspace;->mAllowLongPress:Z

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
    .line 313
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 315
    return-void
.end method

.method clearChildrenCache()V
    .registers 5

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v0

    .line 1023
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_14

    .line 1024
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/CellLayout;

    .line 1025
    .local v2, layout:Lcom/lge/homecube/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/homecube/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1027
    .end local v2           #layout:Lcom/lge/homecube/CellLayout;
    :cond_14
    return-void
.end method

.method public computeScroll()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 505
    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 515
    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    .line 516
    :goto_11
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    if-gez v0, :cond_24

    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    goto :goto_11

    .line 517
    :cond_24
    :goto_24
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_40

    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    goto :goto_24

    .line 519
    :cond_40
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->postInvalidate()V

    .line 531
    :cond_43
    :goto_43
    return-void

    .line 520
    :cond_44
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    if-eq v0, v4, :cond_43

    .line 524
    const/4 v0, 0x0

    iget v1, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    .line 525
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->setScreen(I)V

    .line 526
    iput v4, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    .line 527
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->clearChildrenCache()V

    .line 529
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    goto :goto_43
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .parameter "canvas"

    .prologue
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v7

    .line 560
    .local v7, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v16

    .line 561
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getHeight()I

    move-result v12

    .line 562
    .local v12, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    move v8, v0

    .line 564
    .local v8, currentScreen:I
    const/4 v15, 0x0

    .line 609
    .local v15, restore:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/homecube/Launcher;->isDrawerUp()Z

    move-result v18

    if-eqz v18, :cond_45

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mClipBounds:Landroid/graphics/Rect;

    move-object v5, v0

    .line 611
    .local v5, clipBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 614
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 748
    .end local v5           #clipBounds:Landroid/graphics/Rect;
    :cond_44
    :goto_44
    return-void

    .line 631
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperOffset:F

    move/from16 v19, v0

    mul-float v17, v18, v19

    .line 633
    .local v17, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_97

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 637
    :cond_97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v20

    mul-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1d6

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v21

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v19

    mul-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v19

    mul-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 651
    :goto_18c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_21b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_21b

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 654
    .local v11, fastDraw:Z
    :goto_1ac
    if-eqz v11, :cond_264

    .line 658
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1af
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_240

    .line 659
    if-ne v13, v8, :cond_220

    .line 660
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_1d3

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :cond_1d3
    :goto_1d3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1af

    .line 643
    .end local v11           #fastDraw:Z
    .end local v13           #i:I
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mWallpaperHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_18c

    .line 651
    :cond_21b
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_1ac

    .line 662
    .restart local v11       #fastDraw:Z
    .restart local v13       #i:I
    :cond_220
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d3

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d3

    .line 678
    :cond_240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getDrawingTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/homecube/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 743
    :goto_25d
    if-eqz v15, :cond_44

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_44

    .line 680
    .end local v13           #i:I
    :cond_264
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getDrawingTime()J

    move-result-wide v9

    .line 719
    .local v9, drawingTime:J
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_269
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_294

    .line 720
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_291

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :cond_291
    add-int/lit8 v13, v13, 0x1

    goto :goto_269

    .line 729
    :cond_294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v18, v0

    div-int v6, v18, v16

    .line 730
    .local v6, computedCurrentScreen:I
    add-int/lit8 v14, v6, 0x1

    .line 732
    .local v14, nextScreen:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v18

    move v0, v14

    move/from16 v1, v18

    if-lt v0, v1, :cond_2a8

    const/4 v14, 0x0

    .line 736
    :cond_2a8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v18, v0

    mul-int v19, v6, v16

    sub-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 737
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/homecube/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 738
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 739
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/homecube/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    move/from16 v18, v0

    mul-int v19, v6, v16

    sub-int v18, v18, v19

    sub-int v18, v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_25d
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 5
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 867
    const/16 v0, 0x11

    if-ne p2, v0, :cond_f

    .line 870
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    move v0, v1

    .line 880
    :goto_e
    return v0

    .line 873
    :cond_f
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1e

    .line 876
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    move v0, v1

    .line 877
    goto :goto_e

    .line 880
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_e
.end method

.method enableChildrenCache()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1013
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v0

    .line 1014
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_17

    .line 1015
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/CellLayout;

    .line 1016
    .local v2, layout:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v2, v3}, Lcom/lge/homecube/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1017
    invoke-virtual {v2, v3}, Lcom/lge/homecube/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1019
    .end local v2           #layout:Lcom/lge/homecube/CellLayout;
    :cond_17
    return-void
.end method

.method findAllVacantCells([Z)Lcom/lge/homecube/CellLayout$CellInfo;
    .registers 4
    .parameter "occupied"

    .prologue
    .line 433
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 434
    .local v0, group:Lcom/lge/homecube/CellLayout;
    if-eqz v0, :cond_f

    .line 435
    invoke-virtual {v0, p1}, Lcom/lge/homecube/CellLayout;->findAllVacantCells([Z)Lcom/lge/homecube/CellLayout$CellInfo;

    move-result-object v1

    .line 437
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public findSearchWidgetOnCurrentScreen()Lcom/lge/homecube/Search;
    .registers 3

    .prologue
    .line 1129
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 1130
    .local v0, currentScreen:Lcom/lge/homecube/CellLayout;
    invoke-direct {p0, v0}, Lcom/lge/homecube/Workspace;->findSearchWidget(Lcom/lge/homecube/CellLayout;)Lcom/lge/homecube/Search;

    move-result-object v1

    return-object v1
.end method

.method fitInCurrentScreen(Landroid/view/View;II)V
    .registers 5
    .parameter "child"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 460
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/lge/homecube/Workspace;->fitInScreen(Landroid/view/View;III)V

    .line 461
    return-void
.end method

.method fitInScreen(Landroid/view/View;III)V
    .registers 11
    .parameter "child"
    .parameter "screen"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 473
    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_25

    .line 474
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_25
    invoke-virtual {p0, p2}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 478
    .local v0, group:Lcom/lge/homecube/CellLayout;
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mTempCell:[I

    invoke-virtual {v0, v2, p3, p4}, Lcom/lge/homecube/CellLayout;->getVacantCell([III)Z

    move-result v1

    .line 479
    .local v1, vacant:Z
    if-eqz v1, :cond_53

    .line 480
    new-instance v2, Lcom/lge/homecube/CellLayout$LayoutParams;

    iget-object v3, p0, Lcom/lge/homecube/Workspace;->mTempCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lge/homecube/Workspace;->mTempCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-direct {v2, v3, v4, p3, p4}, Lcom/lge/homecube/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1, v2}, Lcom/lge/homecube/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 483
    instance-of v2, p1, Lcom/lge/homecube/Folder;

    if-nez v2, :cond_53

    .line 484
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 487
    :cond_53
    return-void
.end method

.method getCurrentScreen()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/lge/homecube/Folder;
    .registers 13
    .parameter "tag"

    .prologue
    const/4 v10, 0x4

    .line 1525
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v8

    .line 1526
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_6
    if-ge v7, v8, :cond_3d

    .line 1527
    invoke-virtual {p0, v7}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/homecube/CellLayout;

    .line 1528
    .local v3, currentScreen:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v3}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v2

    .line 1529
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_13
    if-ge v5, v2, :cond_3a

    .line 1530
    invoke-virtual {v3, v5}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1531
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 1532
    .local v6, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iget v9, v6, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_37

    iget v9, v6, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_37

    instance-of v9, v1, Lcom/lge/homecube/Folder;

    if-eqz v9, :cond_37

    .line 1533
    move-object v0, v1

    check-cast v0, Lcom/lge/homecube/Folder;

    move-object v4, v0

    .line 1534
    .local v4, f:Lcom/lge/homecube/Folder;
    invoke-virtual {v4}, Lcom/lge/homecube/Folder;->getInfo()Lcom/lge/homecube/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_37

    move-object v9, v4

    .line 1540
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/lge/homecube/CellLayout;
    .end local v4           #f:Lcom/lge/homecube/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :goto_36
    return-object v9

    .line 1529
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/lge/homecube/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1526
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1540
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/lge/homecube/CellLayout;
    .end local v5           #i:I
    :cond_3d
    const/4 v9, 0x0

    goto :goto_36
.end method

.method getOpenFolder()Lcom/lge/homecube/Folder;
    .registers 8

    .prologue
    const/4 v6, 0x4

    .line 258
    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/CellLayout;

    .line 259
    .local v2, currentScreen:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v2}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v1

    .line 260
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v1, :cond_2d

    .line 261
    invoke-virtual {v2, v3}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 263
    .local v4, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iget v5, v4, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v5, v6, :cond_2a

    iget v5, v4, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v5, v6, :cond_2a

    instance-of v5, v0, Lcom/lge/homecube/Folder;

    if-eqz v5, :cond_2a

    .line 264
    check-cast v0, Lcom/lge/homecube/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    .line 267
    .end local v4           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :goto_29
    return-object v5

    .line 260
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 267
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
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
            "Lcom/lge/homecube/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 271
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v7

    .line 272
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_b
    if-ge v6, v7, :cond_3b

    .line 275
    invoke-virtual {p0, v6}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/CellLayout;

    .line 276
    .local v2, currentScreen:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v2}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v1

    .line 277
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    if-ge v4, v1, :cond_35

    .line 278
    invoke-virtual {v2, v4}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 280
    .local v5, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iget v8, v5, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v8, v9, :cond_38

    iget v8, v5, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v8, v9, :cond_38

    instance-of v8, v0, Lcom/lge/homecube/Folder;

    if-eqz v8, :cond_38

    .line 281
    check-cast v0, Lcom/lge/homecube/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v5           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 277
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 287
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/lge/homecube/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_3b
    return-object v3
.end method

.method public getScreenForView(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 1397
    const/4 v2, -0x1

    .line 1398
    .local v2, result:I
    if-eqz p1, :cond_19

    .line 1399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1400
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v0

    .line 1401
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_19

    .line 1402
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_16

    move v4, v1

    .line 1407
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_15
    return v4

    .line 1401
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

    .line 1407
    goto :goto_15
.end method

.method getVacantCell([III)Z
    .registers 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 444
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 445
    .local v0, group:Lcom/lge/homecube/CellLayout;
    if-eqz v0, :cond_f

    .line 446
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/homecube/CellLayout;->getVacantCell([III)Z

    move-result v1

    .line 448
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
    .line 1544
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v5

    .line 1545
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_5
    if-ge v4, v5, :cond_26

    .line 1546
    invoke-virtual {p0, v4}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/CellLayout;

    .line 1547
    .local v2, currentScreen:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v2}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v1

    .line 1548
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v1, :cond_23

    .line 1549
    invoke-virtual {v2, v3}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1550
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_20

    move-object v6, v0

    .line 1555
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/lge/homecube/CellLayout;
    .end local v3           #i:I
    :goto_1f
    return-object v6

    .line 1548
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/lge/homecube/CellLayout;
    .restart local v3       #i:I
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1545
    .end local v0           #child:Landroid/view/View;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1555
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/lge/homecube/CellLayout;
    .end local v3           #i:I
    :cond_26
    const/4 v6, 0x0

    goto :goto_1f
.end method

.method isDefaultScreenShowing()Z
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    iget v1, p0, Lcom/lge/homecube/Workspace;->mDefaultScreen:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLock()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/lge/homecube/Workspace;->mLocked:Z

    return v0
.end method

.method loadWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Workspace;->mWallpaperLoaded:Z

    .line 210
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->invalidate()V

    .line 212
    return-void
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Workspace;->mLocked:Z

    .line 1574
    return-void
.end method

.method moveToDefaultScreen()V
    .registers 2

    .prologue
    .line 1667
    iget v0, p0, Lcom/lge/homecube/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    .line 1668
    iget v0, p0, Lcom/lge/homecube/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1669
    return-void
.end method

.method public onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1275
    return-void
.end method

.method public onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1283
    return-void
.end method

.method public onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1279
    return-void
.end method

.method public onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 23
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/homecube/CellLayout;

    .line 1252
    .local v13, cellLayout:Lcom/lge/homecube/CellLayout;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_23

    .line 1253
    sub-int v5, p2, p4

    sub-int v6, p3, p5

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-object/from16 v3, p6

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/homecube/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/lge/homecube/CellLayout;)V

    .line 1271
    :cond_22
    :goto_22
    return-void

    .line 1256
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    move-object v5, v0

    if-eqz v5, :cond_22

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    move-object v5, v0

    iget-object v12, v5, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1258
    .local v12, cell:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    move-object v6, v0

    iget v6, v6, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    if-eq v5, v6, :cond_55

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    move-object v5, v0

    iget v5, v5, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lge/homecube/CellLayout;

    .line 1260
    .local v15, originalCellLayout:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v15, v12}, Lcom/lge/homecube/CellLayout;->removeView(Landroid/view/View;)V

    .line 1261
    invoke-virtual {v13, v12}, Lcom/lge/homecube/CellLayout;->addView(Landroid/view/View;)V

    .line 1263
    .end local v15           #originalCellLayout:Lcom/lge/homecube/CellLayout;
    :cond_55
    sub-int v5, p2, p4

    sub-int v6, p3, p5

    invoke-virtual {v13, v12, v5, v6}, Lcom/lge/homecube/CellLayout;->onDropChild(Landroid/view/View;II)V

    .line 1265
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/ItemInfo;

    .line 1266
    .local v6, info:Lcom/lge/homecube/ItemInfo;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 1267
    .local v14, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    move-object v5, v0

    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    move v9, v0

    iget v10, v14, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    iget v11, v14, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v5 .. v11}, Lcom/lge/homecube/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V

    goto :goto_22
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 7
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 1358
    invoke-virtual {p0, v3}, Lcom/lge/homecube/Workspace;->setDeleteZoneFlag(Z)V

    .line 1359
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mBottomButtonLayout:Landroid/widget/AbsoluteLayout;

    if-eqz v2, :cond_15

    .line 1360
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mBottomButtonLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_15

    .line 1361
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mBottomButtonLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1363
    :cond_15
    if-eqz p2, :cond_43

    .line 1364
    if-eq p1, p0, :cond_3f

    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    if-eqz v2, :cond_3f

    .line 1365
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget v2, v2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 1366
    .local v0, cellLayout:Lcom/lge/homecube/CellLayout;
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/CellLayout;->removeView(Landroid/view/View;)V

    .line 1367
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1368
    .local v1, tag:Ljava/lang/Object;
    invoke-static {}, Lcom/lge/homecube/Launcher;->getModel()Lcom/lge/homecube/LauncherModel;

    move-result-object v2

    check-cast v1, Lcom/lge/homecube/ItemInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/lge/homecube/LauncherModel;->removeDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 1377
    .end local v0           #cellLayout:Lcom/lge/homecube/CellLayout;
    :cond_3f
    :goto_3f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 1378
    return-void

    .line 1371
    :cond_43
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    if-eqz v2, :cond_3f

    .line 1372
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget v2, v2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout;

    .line 1373
    .restart local v0       #cellLayout:Lcom/lge/homecube/CellLayout;
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_3f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 912
    iget-boolean v9, p0, Lcom/lge/homecube/Workspace;->mLocked:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v9}, Lcom/lge/homecube/Launcher;->isDrawerDown()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_e
    move v9, v10

    .line 1009
    :goto_f
    return v9

    .line 927
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 928
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1d

    iget v9, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    if-eqz v9, :cond_1d

    move v9, v10

    .line 929
    goto :goto_f

    .line 932
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 933
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 935
    .local v6, y:F
    packed-switch v0, :pswitch_data_92

    .line 1009
    :cond_28
    :goto_28
    iget v9, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    if-eqz v9, :cond_8f

    move v9, v10

    goto :goto_f

    .line 946
    :pswitch_2e
    iget v9, p0, Lcom/lge/homecube/Workspace;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 947
    .local v4, xDiff:I
    iget v9, p0, Lcom/lge/homecube/Workspace;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 949
    .local v7, yDiff:I
    iget v2, p0, Lcom/lge/homecube/Workspace;->mTouchSlop:I

    .line 950
    .local v2, touchSlop:I
    const/16 v9, 0x14

    if-le v4, v9, :cond_62

    move v5, v10

    .line 951
    .local v5, xMoved:Z
    :goto_47
    if-le v7, v2, :cond_64

    move v8, v10

    .line 953
    .local v8, yMoved:Z
    :goto_4a
    if-nez v5, :cond_4e

    if-eqz v8, :cond_28

    .line 955
    :cond_4e
    if-eqz v5, :cond_52

    .line 957
    iput v10, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    .line 964
    :cond_52
    iget-boolean v9, p0, Lcom/lge/homecube/Workspace;->mAllowLongPress:Z

    if-eqz v9, :cond_28

    .line 965
    iput-boolean v11, p0, Lcom/lge/homecube/Workspace;->mAllowLongPress:Z

    .line 969
    iget v9, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 970
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_28

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_62
    move v5, v11

    .line 950
    goto :goto_47

    .restart local v5       #xMoved:Z
    :cond_64
    move v8, v11

    .line 951
    goto :goto_4a

    .line 977
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_66
    iput v3, p0, Lcom/lge/homecube/Workspace;->mLastMotionX:F

    .line 978
    iput v6, p0, Lcom/lge/homecube/Workspace;->mLastMotionY:F

    .line 979
    iput-boolean v10, p0, Lcom/lge/homecube/Workspace;->mAllowLongPress:Z

    .line 987
    iget-object v9, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v9}, Lcom/lge/homecube/Launcher;->loadWallpaper()V

    .line 989
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->clearChildrenCache()V

    .line 990
    iget-object v9, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_80

    move v9, v11

    :goto_7d
    iput v9, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    goto :goto_28

    :cond_80
    move v9, v10

    goto :goto_7d

    .line 997
    :pswitch_82
    iget-object v9, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v9}, Lcom/lge/homecube/Launcher;->loadWallpaper()V

    .line 998
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->clearChildrenCache()V

    .line 1000
    iput v11, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    .line 1001
    iput-boolean v11, p0, Lcom/lge/homecube/Workspace;->mAllowLongPress:Z

    goto :goto_28

    :cond_8f
    move v9, v11

    .line 1009
    goto/16 :goto_f

    .line 935
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_66
        :pswitch_82
        :pswitch_2e
        :pswitch_82
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 821
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v2

    .line 822
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    if-ge v3, v2, :cond_22

    .line 823
    invoke-virtual {p0, v3}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1f

    .line 825
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 827
    .local v1, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v6, v6, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 822
    .end local v1           #childWidth:I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 832
    .end local v0           #child:Landroid/view/View;
    :cond_22
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const/4 v10, 0x0

    const-string v9, "Workspace can only be used in EXACTLY mode."

    .line 778
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 780
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 781
    .local v5, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 782
    .local v6, widthMode:I
    if-eq v6, v7, :cond_1a

    .line 783
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 786
    :cond_1a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 787
    .local v1, height:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 788
    .local v2, heightMode:I
    if-eq v2, v7, :cond_2c

    .line 789
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 793
    :cond_2c
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v0

    .line 794
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_31
    if-ge v3, v0, :cond_3d

    .line 795
    invoke-virtual {p0, v3}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroid/view/View;->measure(II)V

    .line 794
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 798
    :cond_3d
    iget-boolean v7, p0, Lcom/lge/homecube/Workspace;->mWallpaperLoaded:Z

    if-eqz v7, :cond_5f

    .line 799
    iput-boolean v10, p0, Lcom/lge/homecube/Workspace;->mWallpaperLoaded:Z

    .line 800
    iget-object v7, p0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v5, v1, v8}, Lcom/lge/homecube/Utilities;->centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    .line 801
    iget-object v7, p0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Workspace;->mWallpaperWidth:I

    .line 802
    iget-object v7, p0, Lcom/lge/homecube/Workspace;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Workspace;->mWallpaperHeight:I

    .line 805
    :cond_5f
    iget v4, p0, Lcom/lge/homecube/Workspace;->mWallpaperWidth:I

    .line 806
    .local v4, wallpaperWidth:I
    if-le v4, v5, :cond_7c

    mul-int v7, v0, v5

    sub-int/2addr v7, v4

    int-to-float v7, v7

    const/4 v8, 0x1

    sub-int v8, v0, v8

    int-to-float v8, v8

    int-to-float v9, v5

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    :goto_6e
    iput v7, p0, Lcom/lge/homecube/Workspace;->mWallpaperOffset:F

    .line 809
    iget-boolean v7, p0, Lcom/lge/homecube/Workspace;->mFirstLayout:Z

    if-eqz v7, :cond_7b

    .line 812
    iget v7, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    mul-int/2addr v7, v5

    iput v7, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    .line 814
    iput-boolean v10, p0, Lcom/lge/homecube/Workspace;->mFirstLayout:Z

    .line 816
    :cond_7b
    return-void

    .line 806
    :cond_7c
    const/high16 v7, 0x3f80

    goto :goto_6e
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 848
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2}, Lcom/lge/homecube/Launcher;->isDrawerDown()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 849
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getOpenFolder()Lcom/lge/homecube/Folder;

    move-result-object v1

    .line 850
    .local v1, openFolder:Lcom/lge/homecube/Folder;
    if-eqz v1, :cond_13

    .line 851
    invoke-virtual {v1, p1, p2}, Lcom/lge/homecube/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 862
    .end local v1           #openFolder:Lcom/lge/homecube/Folder;
    :goto_12
    return v2

    .line 854
    .restart local v1       #openFolder:Lcom/lge/homecube/Folder;
    :cond_13
    iget v2, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    .line 855
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    .line 859
    .local v0, focusableScreen:I
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 862
    .end local v0           #focusableScreen:I
    .end local v1           #openFolder:Lcom/lge/homecube/Folder;
    :cond_21
    const/4 v2, 0x0

    goto :goto_12

    .line 857
    .restart local v1       #openFolder:Lcom/lge/homecube/Folder;
    :cond_23
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1a
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 1229
    move-object v0, p1

    check-cast v0, Lcom/lge/homecube/Workspace$SavedState;

    move-object v1, v0

    .line 1230
    .local v1, savedState:Lcom/lge/homecube/Workspace$SavedState;
    invoke-virtual {v1}, Lcom/lge/homecube/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1231
    iget v2, v1, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 1232
    iget v2, v1, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    .line 1233
    iget v2, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->setScreen(I)V

    .line 1235
    :cond_19
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1222
    new-instance v0, Lcom/lge/homecube/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/homecube/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1223
    .local v0, state:Lcom/lge/homecube/Workspace$SavedState;
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    .line 1224
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1031
    iget-boolean v5, p0, Lcom/lge/homecube/Workspace;->mLocked:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v5}, Lcom/lge/homecube/Launcher;->isDrawerDown()Z

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    move v5, v8

    .line 1119
    :goto_f
    return v5

    .line 1035
    :cond_10
    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1a

    .line 1036
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1038
    :cond_1a
    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1041
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1043
    .local v4, x:F
    packed-switch v0, :pswitch_data_be

    :cond_2a
    :goto_2a
    move v5, v8

    .line 1119
    goto :goto_f

    .line 1049
    :pswitch_2c
    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_39

    .line 1050
    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1054
    :cond_39
    iput v4, p0, Lcom/lge/homecube/Workspace;->mLastMotionX:F

    goto :goto_2a

    .line 1057
    :pswitch_3c
    iget v5, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    if-ne v5, v8, :cond_2a

    .line 1059
    iget v5, p0, Lcom/lge/homecube/Workspace;->mLastMotionX:F

    sub-float/2addr v5, v4

    float-to-int v1, v5

    .line 1060
    .local v1, deltaX:I
    iput v4, p0, Lcom/lge/homecube/Workspace;->mLastMotionX:F

    .line 1080
    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    .line 1081
    :goto_4b
    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    if-gez v5, :cond_5e

    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    goto :goto_4b

    .line 1082
    :cond_5e
    :goto_5e
    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    if-lt v5, v6, :cond_7a

    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    goto :goto_5e

    .line 1083
    :cond_7a
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->postInvalidate()V

    goto :goto_2a

    .line 1093
    .end local v1           #deltaX:I
    :pswitch_7e
    invoke-virtual {p0, v6}, Lcom/lge/homecube/Workspace;->setDeleteZoneFlag(Z)V

    .line 1094
    iget v5, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    if-ne v5, v8, :cond_a7

    .line 1095
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1096
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1097
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 1100
    .local v3, velocityX:I
    const/16 v5, 0x12c

    if-le v3, v5, :cond_aa

    .line 1101
    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    .line 1108
    :goto_9b
    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_a7

    .line 1109
    iget-object v5, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 1110
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/homecube/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1113
    .end local v2           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v3           #velocityX:I
    :cond_a7
    iput v6, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    goto :goto_2a

    .line 1102
    .restart local v2       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v3       #velocityX:I
    :cond_aa
    const/16 v5, -0x12c

    if-ge v3, v5, :cond_b6

    .line 1103
    iget v5, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    goto :goto_9b

    .line 1105
    :cond_b6
    invoke-direct {p0}, Lcom/lge/homecube/Workspace;->snapToDestination()V

    goto :goto_9b

    .line 1116
    .end local v2           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v3           #velocityX:I
    :pswitch_ba
    iput v6, p0, Lcom/lge/homecube/Workspace;->mTouchState:I

    goto/16 :goto_2a

    .line 1043
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_7e
        :pswitch_3c
        :pswitch_ba
    .end packed-switch
.end method

.method removeShortcutsForPackage(Ljava/lang/String;)V
    .registers 18
    .parameter "packageName"

    .prologue
    .line 1592
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v3, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Lcom/lge/homecube/Launcher;->getModel()Lcom/lge/homecube/LauncherModel;

    move-result-object v10

    .line 1594
    .local v10, model:Lcom/lge/homecube/LauncherModel;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v4

    .line 1595
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_e
    if-ge v5, v4, :cond_83

    .line 1596
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lge/homecube/CellLayout;

    .line 1597
    .local v9, layout:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v9}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v2

    .line 1598
    .local v2, childCount:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1599
    const/4 v8, 0x0

    .local v8, j:I
    :goto_21
    if-ge v8, v2, :cond_65

    .line 1600
    invoke-virtual {v9, v8}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1601
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 1602
    .local v12, tag:Ljava/lang/Object;
    instance-of v14, v12, Lcom/lge/homecube/ApplicationInfo;

    if-eqz v14, :cond_62

    .line 1603
    move-object v0, v12

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object v6, v0

    .line 1607
    .local v6, info:Lcom/lge/homecube/ApplicationInfo;
    iget-object v7, v6, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1608
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1609
    .local v11, name:Landroid/content/ComponentName;
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_62

    if-eqz v11, :cond_62

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_62

    .line 1611
    invoke-virtual {v10, v6}, Lcom/lge/homecube/LauncherModel;->removeDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    move-object v14, v0

    invoke-static {v14, v6}, Lcom/lge/homecube/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;)V

    .line 1613
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    .end local v6           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #name:Landroid/content/ComponentName;
    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 1617
    .end local v12           #tag:Ljava/lang/Object;
    .end local v13           #view:Landroid/view/View;
    :cond_65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1618
    const/4 v8, 0x0

    :goto_6a
    if-ge v8, v2, :cond_78

    .line 1619
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v9, v14}, Lcom/lge/homecube/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 1618
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 1621
    :cond_78
    if-lez v2, :cond_80

    .line 1622
    invoke-virtual {v9}, Lcom/lge/homecube/CellLayout;->requestLayout()V

    .line 1623
    invoke-virtual {v9}, Lcom/lge/homecube/CellLayout;->invalidate()V

    .line 1595
    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 1626
    .end local v2           #childCount:I
    .end local v8           #j:I
    .end local v9           #layout:Lcom/lge/homecube/CellLayout;
    :cond_83
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 836
    invoke-virtual {p0, p1}, Lcom/lge/homecube/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 837
    .local v0, screen:I
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 838
    :cond_10
    iget-object v1, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 839
    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    .line 841
    :cond_1b
    const/4 v1, 0x1

    .line 843
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public scrollLeft()V
    .registers 3

    .prologue
    .line 1383
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1384
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    .line 1386
    :cond_14
    return-void
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 1391
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1392
    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->snapToScreen(I)V

    .line 1394
    :cond_14
    return-void
.end method

.method public setAllowLongPress(Z)V
    .registers 2
    .parameter "allowLongPress"

    .prologue
    .line 1588
    iput-boolean p1, p0, Lcom/lge/homecube/Workspace;->mAllowLongPress:Z

    .line 1589
    return-void
.end method

.method public setBottomButtonLayout(Landroid/widget/AbsoluteLayout;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/lge/homecube/Workspace;->mBottomButtonLayout:Landroid/widget/AbsoluteLayout;

    .line 1352
    return-void
.end method

.method setCurrentScreen(I)V
    .registers 7
    .parameter "currentScreen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    .line 325
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    move v0, v4

    .line 327
    .local v0, isLandscape:Z
    :goto_1f
    if-eqz v0, :cond_2d

    .line 329
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    mul-int/lit16 v1, v1, 0x1e0

    iput v1, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    .line 335
    :goto_27
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->invalidate()V

    .line 336
    return-void

    .end local v0           #isLandscape:Z
    :cond_2b
    move v0, v3

    .line 325
    goto :goto_1f

    .line 332
    .restart local v0       #isLandscape:Z
    :cond_2d
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    mul-int/lit16 v1, v1, 0x140

    iput v1, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    goto :goto_27
.end method

.method setDeleteZoneFlag(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1673
    iput-boolean p1, p0, Lcom/lge/homecube/Workspace;->mDeleteZoneFlag:Z

    .line 1674
    return-void
.end method

.method public setDragger(Lcom/lge/homecube/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/lge/homecube/Workspace;->mDragger:Lcom/lge/homecube/DragController;

    .line 1342
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 1338
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/lge/homecube/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 497
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v0

    .line 498
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 499
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 501
    :cond_13
    return-void
.end method

.method showDefaultScreen()V
    .registers 2

    .prologue
    .line 342
    iget v0, p0, Lcom/lge/homecube/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->setCurrentScreen(I)V

    .line 343
    return-void
.end method

.method snapToScreen(I)V
    .registers 13
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 1146
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v7

    .line 1147
    .local v7, count:I
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getWidth()I

    move-result v10

    .line 1150
    .local v10, width:I
    iput p1, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    .line 1152
    :goto_b
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    if-gez v0, :cond_19

    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    goto :goto_b

    .line 1153
    :cond_19
    :goto_19
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_2b

    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    goto :goto_19

    .line 1158
    :cond_2b
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    iget v4, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    if-eq v0, v4, :cond_78

    const/4 v0, 0x1

    move v6, v0

    .line 1170
    .local v6, changingScreens:Z
    :goto_33
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1171
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_46

    if-eqz v6, :cond_46

    iget v0, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_46

    .line 1172
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1183
    :cond_46
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentPosition:I

    .line 1184
    .local v1, position:I
    iget v0, p0, Lcom/lge/homecube/Workspace;->mNextScreen:I

    mul-int v9, v0, v10

    .line 1185
    .local v9, newX:I
    sub-int v3, v9, v1

    .line 1186
    .local v3, delta:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int v4, v7, v10

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_63

    .line 1187
    mul-int v0, v7, v10

    div-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_7a

    .line 1188
    mul-int v0, v7, v10

    sub-int/2addr v1, v0

    .line 1192
    :goto_61
    sub-int v3, v9, v1

    .line 1195
    :cond_63
    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->loadWallpaper()V

    .line 1197
    iget-object v0, p0, Lcom/lge/homecube/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1198
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->invalidate()V

    .line 1199
    return-void

    .end local v1           #position:I
    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_78
    move v6, v2

    .line 1158
    goto :goto_33

    .line 1190
    .restart local v1       #position:I
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_7a
    mul-int v0, v7, v10

    add-int/2addr v1, v0

    goto :goto_61
.end method

.method public snapToSearch()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1474
    iget v1, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    .line 1477
    .local v1, current:I
    move v2, v1

    .line 1480
    .local v2, first:I
    move v5, v1

    .line 1483
    .local v5, last:I
    const/4 v6, 0x0

    .line 1491
    .local v6, next:Z
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v0

    .line 1494
    .local v0, count:I
    :goto_b
    invoke-direct {p0, v1}, Lcom/lge/homecube/Workspace;->focusOnSearch(I)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v8

    .line 1521
    :goto_12
    return v7

    .line 1498
    :cond_13
    sub-int v7, v0, v8

    if-ne v5, v7, :cond_21

    move v4, v8

    .line 1499
    .local v4, hitLast:Z
    :goto_18
    if-nez v2, :cond_23

    move v3, v8

    .line 1501
    .local v3, hitFirst:Z
    :goto_1b
    if-eqz v4, :cond_25

    if-eqz v3, :cond_25

    move v7, v9

    .line 1521
    goto :goto_12

    .end local v3           #hitFirst:Z
    .end local v4           #hitLast:Z
    :cond_21
    move v4, v9

    .line 1498
    goto :goto_18

    .restart local v4       #hitLast:Z
    :cond_23
    move v3, v9

    .line 1499
    goto :goto_1b

    .line 1506
    .restart local v3       #hitFirst:Z
    :cond_25
    if-nez v3, :cond_2b

    if-eqz v6, :cond_30

    if-nez v4, :cond_30

    .line 1508
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 1509
    move v1, v5

    .line 1511
    const/4 v6, 0x0

    goto :goto_b

    .line 1514
    :cond_30
    add-int/lit8 v2, v2, -0x1

    .line 1515
    move v1, v2

    .line 1517
    const/4 v6, 0x1

    goto :goto_b
.end method

.method startDrag(Lcom/lge/homecube/CellLayout$CellInfo;)V
    .registers 7
    .parameter "cellInfo"

    .prologue
    .line 1202
    iget-object v0, p1, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1206
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_d

    instance-of v2, v0, Lcom/lge/homecube/Search;

    if-nez v2, :cond_d

    .line 1218
    :goto_c
    return-void

    .line 1210
    :cond_d
    iput-object p1, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 1211
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget v3, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    iput v3, v2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 1213
    iget v2, p0, Lcom/lge/homecube/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/CellLayout;

    .line 1215
    .local v1, current:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v1, v0}, Lcom/lge/homecube/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1216
    iget-object v2, p0, Lcom/lge/homecube/Workspace;->mDragger:Lcom/lge/homecube/DragController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v0, p0, v3, v4}, Lcom/lge/homecube/DragController;->startDrag(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V

    .line 1217
    invoke-virtual {p0}, Lcom/lge/homecube/Workspace;->invalidate()V

    goto :goto_c
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 1564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/Workspace;->mLocked:Z

    .line 1565
    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .registers 18
    .parameter "packageName"

    .prologue
    const/4 v15, 0x0

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v3

    .line 1630
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_84

    .line 1631
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lge/homecube/CellLayout;

    .line 1632
    .local v9, layout:Lcom/lge/homecube/CellLayout;
    invoke-virtual {v9}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v2

    .line 1633
    .local v2, childCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_16
    if-ge v8, v2, :cond_81

    .line 1634
    invoke-virtual {v9, v8}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1635
    .local v12, view:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 1636
    .local v11, tag:Ljava/lang/Object;
    instance-of v13, v11, Lcom/lge/homecube/ApplicationInfo;

    if-eqz v13, :cond_7e

    .line 1637
    move-object v0, v11

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object v6, v0

    .line 1641
    .local v6, info:Lcom/lge/homecube/ApplicationInfo;
    iget-object v7, v6, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1642
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 1643
    .local v10, name:Landroid/content/ComponentName;
    iget v13, v6, Lcom/lge/homecube/ApplicationInfo;->itemType:I

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

    .line 1647
    invoke-static {}, Lcom/lge/homecube/Launcher;->getModel()Lcom/lge/homecube/LauncherModel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mLauncher:Lcom/lge/homecube/Launcher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Lcom/lge/homecube/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/lge/homecube/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1649
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_7e

    iget-object v13, v6, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v5, v13, :cond_7e

    .line 1650
    iget-object v13, v6, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v5, v13}, Lcom/lge/homecube/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v6, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1652
    const/4 v13, 0x1

    iput-boolean v13, v6, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 1653
    check-cast v12, Landroid/widget/TextView;

    .end local v12           #view:Landroid/view/View;
    iget-object v13, v6, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v15, v13, v15, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1633
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #name:Landroid/content/ComponentName;
    :cond_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 1630
    .end local v11           #tag:Ljava/lang/Object;
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1660
    .end local v2           #childCount:I
    .end local v8           #j:I
    .end local v9           #layout:Lcom/lge/homecube/CellLayout;
    :cond_84
    return-void
.end method
