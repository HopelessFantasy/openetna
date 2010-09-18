.class public Lcom/android/server/status/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mBugWorkaroundHandler:Landroid/os/Handler;

.field private mBugWorkaroundNumber:I

.field private mBugWorkaroundRunnable:Ljava/lang/Runnable;

.field moreIcon:Lcom/android/server/status/StatusBarIcon;

.field service:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/IconMerger;->mBugWorkaroundHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/server/status/IconMerger$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/IconMerger$1;-><init>(Lcom/android/server/status/IconMerger;)V

    iput-object v0, p0, Lcom/android/server/status/IconMerger;->mBugWorkaroundRunnable:Ljava/lang/Runnable;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/status/IconMerger;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/android/server/status/IconMerger;->mBugWorkaroundNumber:I

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 31
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 20
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 22
    sub-int v15, p4, p2

    .line 23
    .local v15, maxWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/status/IconMerger;->getChildCount()I

    move-result v5

    .line 27
    .local v5, N:I
    const/4 v13, -0x1

    .line 28
    .local v13, fitRight:I
    const/16 v21, 0x1

    sub-int v14, v5, v21

    .local v14, i:I
    :goto_e
    if-ltz v14, :cond_27

    .line 29
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/status/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 30
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4a

    .line 31
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    .line 37
    .end local v8           #child:Landroid/view/View;
    :cond_27
    const/16 v16, 0x0

    .line 38
    .local v16, moreView:Landroid/view/View;
    const/4 v12, -0x1

    .line 39
    .local v12, fitLeft:I
    const/16 v20, -0x1

    .line 40
    .local v20, startIndex:I
    const/4 v14, 0x0

    :goto_2d
    if-ge v14, v5, :cond_5d

    .line 41
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/status/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 42
    .restart local v8       #child:Landroid/view/View;
    const v21, 0x1080079

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4d

    .line 43
    move-object/from16 v16, v8

    .line 44
    add-int/lit8 v20, v14, 0x1

    .line 40
    :cond_47
    add-int/lit8 v14, v14, 0x1

    goto :goto_2d

    .line 28
    .end local v12           #fitLeft:I
    .end local v16           #moreView:Landroid/view/View;
    .end local v20           #startIndex:I
    :cond_4a
    add-int/lit8 v14, v14, -0x1

    goto :goto_e

    .line 46
    .restart local v12       #fitLeft:I
    .restart local v16       #moreView:Landroid/view/View;
    .restart local v20       #startIndex:I
    :cond_4d
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_47

    .line 47
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 52
    .end local v8           #child:Landroid/view/View;
    :cond_5d
    if-eqz v16, :cond_61

    if-gez v20, :cond_69

    .line 53
    :cond_61
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Status Bar / IconMerger moreView == null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 58
    :cond_69
    const/4 v6, 0x0

    .line 59
    .local v6, adjust:I
    sub-int v21, v13, v12

    move/from16 v0, v21

    move v1, v15

    if-gt v0, v1, :cond_92

    .line 60
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v6, v12, v21

    .line 61
    sub-int/2addr v12, v6

    .line 62
    sub-int/2addr v13, v6

    .line 63
    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 65
    :cond_92
    sub-int v11, v13, p4

    .line 66
    .local v11, extra:I
    const/16 v19, -0x1

    .line 68
    .local v19, shift:I
    add-int v21, v12, v11

    add-int v7, v21, v6

    .line 69
    .local v7, breakingPoint:I
    const/16 v18, 0x0

    .line 70
    .local v18, number:I
    move/from16 v14, v20

    :goto_9e
    if-ge v14, v5, :cond_10b

    .line 71
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/status/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 72
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e6

    .line 73
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 74
    .local v9, childLeft:I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    .line 75
    .local v10, childRight:I
    if-ge v9, v7, :cond_ee

    .line 77
    const/16 v21, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->service:Lcom/android/server/status/StatusBarService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->getIconNumberForView(Landroid/view/View;)I

    move-result v17

    .line 79
    .local v17, n:I
    if-nez v17, :cond_e9

    .line 80
    add-int/lit8 v18, v18, 0x1

    .line 70
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    .end local v17           #n:I
    :cond_e6
    :goto_e6
    add-int/lit8 v14, v14, 0x1

    goto :goto_9e

    .line 81
    .restart local v9       #childLeft:I
    .restart local v10       #childRight:I
    .restart local v17       #n:I
    :cond_e9
    if-lez v17, :cond_e6

    .line 82
    add-int v18, v18, v17

    goto :goto_e6

    .line 86
    .end local v17           #n:I
    :cond_ee
    if-gez v19, :cond_f2

    .line 87
    sub-int v19, v9, v12

    .line 90
    :cond_f2
    sub-int v21, v9, v19

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v23, v10, v19

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_e6

    .line 104
    .end local v8           #child:Landroid/view/View;
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    :cond_10b
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/status/IconMerger;->mBugWorkaroundNumber:I

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->mBugWorkaroundHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->mBugWorkaroundRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method
