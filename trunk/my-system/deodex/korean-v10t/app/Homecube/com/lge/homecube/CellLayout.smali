.class public Lcom/lge/homecube/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/CellLayout$CellInfo;,
        Lcom/lge/homecube/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private final mCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field mOccupied:[[Z

.field private mPortrait:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/homecube/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/homecube/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 51
    new-instance v1, Lcom/lge/homecube/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/lge/homecube/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/CellLayout;->mCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 53
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/lge/homecube/CellLayout;->mCellXY:[I

    .line 57
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 71
    sget-object v1, Lcom/lge/homecube/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    .line 76
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    .line 78
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mLongAxisEndPadding:I

    .line 80
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    .line 82
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mShortAxisEndPadding:I

    .line 85
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    .line 86
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0, v3}, Lcom/lge/homecube/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_7c

    .line 93
    iget-boolean v1, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_7d

    .line 94
    iget v1, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    iget v2, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    .line 99
    :cond_7c
    :goto_7c
    return-void

    .line 96
    :cond_7d
    iget v1, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    iget v2, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    goto :goto_7c
.end method

.method static synthetic access$100(Lcom/lge/homecube/CellLayout$CellInfo;IIII[[Z)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 32
    invoke-static/range {p0 .. p5}, Lcom/lge/homecube/CellLayout;->findIntersectingVacantCells(Lcom/lge/homecube/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/lge/homecube/CellLayout$CellInfo;)V
    .registers 5
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 284
    invoke-static {}, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->acquire()Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 285
    .local v0, cell:Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 286
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 287
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 288
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 289
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_2c

    .line 290
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 291
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 293
    :cond_2c
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_3a

    .line 294
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 295
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 297
    :cond_3a
    iget-object v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/lge/homecube/CellLayout$CellInfo;IIII[[Z)V
    .registers 7
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 230
    iput v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 231
    iput v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 232
    iput v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 233
    iput v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 234
    invoke-static {p0}, Lcom/lge/homecube/CellLayout$CellInfo;->access$000(Lcom/lge/homecube/CellLayout$CellInfo;)V

    .line 236
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_14

    .line 243
    :goto_13
    return-void

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    iget-object v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/lge/homecube/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V

    goto :goto_13
.end method

.method private findOccupiedCells(II[[Z)V
    .registers 12
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    .line 739
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    if-ge v4, p1, :cond_11

    .line 740
    const/4 v5, 0x0

    .local v5, y:I
    :goto_4
    if-ge v5, p2, :cond_e

    .line 741
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 740
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 739
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 745
    .end local v5           #y:I
    :cond_11
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v1

    .line 746
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v1, :cond_4a

    .line 747
    invoke-virtual {p0, v2}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/lge/homecube/Folder;

    if-eqz v6, :cond_23

    .line 746
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 751
    :cond_23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 753
    .local v3, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iget v4, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    :goto_2b
    iget v6, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_20

    if-ge v4, p1, :cond_20

    .line 754
    iget v5, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_36
    iget v6, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_47

    if-ge v5, p2, :cond_47

    .line 755
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 754
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 753
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 759
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_4a
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V
    .registers 9
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x1

    .line 248
    invoke-static {p0, p4}, Lcom/lge/homecube/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/lge/homecube/CellLayout$CellInfo;)V

    .line 250
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_23

    .line 251
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/lge/homecube/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 252
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 253
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/homecube/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V

    .line 254
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 258
    :cond_23
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v3

    if-ge v0, v1, :cond_45

    .line 259
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/lge/homecube/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 260
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 261
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/homecube/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V

    .line 262
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 266
    :cond_45
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_64

    .line 267
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/lge/homecube/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 268
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 269
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/homecube/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V

    .line 270
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 274
    :cond_64
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v3

    if-ge v0, v1, :cond_86

    .line 275
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/lge/homecube/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 276
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 277
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/homecube/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V

    .line 278
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 281
    :cond_86
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .registers 14
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 699
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, p3, :cond_42

    .line 700
    const/4 v4, 0x0

    .local v4, y:I
    :goto_6
    if-ge v4, p4, :cond_3f

    .line 701
    aget-object v5, p5, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_32

    move v0, v6

    .line 702
    .local v0, available:Z
    :goto_f
    move v1, v3

    .local v1, i:I
    :goto_10
    add-int v5, v3, p1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_2a

    if-ge v3, p3, :cond_2a

    .line 703
    move v2, v4

    .local v2, j:I
    :goto_18
    add-int v5, v4, p2

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_39

    if-ge v4, p4, :cond_39

    .line 704
    if-eqz v0, :cond_34

    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_34

    move v0, v6

    .line 705
    :goto_28
    if-nez v0, :cond_36

    .line 709
    .end local v2           #j:I
    :cond_2a
    if-eqz v0, :cond_3c

    .line 710
    aput v3, p0, v7

    .line 711
    aput v4, p0, v6

    move v5, v6

    .line 717
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_31
    return v5

    .restart local v4       #y:I
    :cond_32
    move v0, v7

    .line 701
    goto :goto_f

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_34
    move v0, v7

    .line 704
    goto :goto_28

    .line 703
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 702
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 700
    .end local v2           #j:I
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 699
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #y:I
    :cond_42
    move v5, v7

    .line 717
    goto :goto_31
.end method

.method private static isColumnEmpty(III[[Z)Z
    .registers 6
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 301
    move v0, p1

    .local v0, y:I
    :goto_1
    if-gt v0, p2, :cond_e

    .line 302
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b

    .line 303
    const/4 v1, 0x0

    .line 306
    :goto_a
    return v1

    .line 301
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private static isRowEmpty(III[[Z)Z
    .registers 6
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 310
    move v0, p1

    .local v0, x:I
    :goto_1
    if-gt v0, p2, :cond_e

    .line 311
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_b

    .line 312
    const/4 v1, 0x0

    .line 315
    :goto_a
    return v1

    .line 310
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method acceptChildDrop(IIIILandroid/view/View;)Z
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "cell"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 531
    iget-object v6, p0, Lcom/lge/homecube/CellLayout;->mCellXY:[I

    .line 532
    .local v6, cellXY:[I
    invoke-virtual {p0, p1, p2, v6}, Lcom/lge/homecube/CellLayout;->pointToCellRounded(II[I)V

    .line 533
    aget v1, v6, v7

    .line 534
    .local v1, cellX:I
    aget v2, v6, v8

    .local v2, cellY:I
    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 536
    invoke-virtual/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->findCell(IIIILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v8

    :goto_16
    return v0

    :cond_17
    move v0, v7

    goto :goto_16
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 113
    move-object v0, p3

    check-cast v0, Lcom/lge/homecube/CellLayout$LayoutParams;

    move-object v1, v0

    .line 114
    .local v1, cellParams:Lcom/lge/homecube/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget v3, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget v3, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method cellToPoint(II[I)V
    .registers 10
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 410
    iget-boolean v1, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 412
    .local v1, portrait:Z
    if-eqz v1, :cond_21

    iget v3, p0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move v0, v3

    .line 413
    .local v0, hStartPadding:I
    :goto_7
    if-eqz v1, :cond_25

    iget v3, p0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move v2, v3

    .line 416
    .local v2, vStartPadding:I
    :goto_c
    const/4 v3, 0x0

    iget v4, p0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 417
    const/4 v3, 0x1

    iget v4, p0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 418
    return-void

    .line 412
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_21
    iget v3, p0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move v0, v3

    goto :goto_7

    .line 413
    .restart local v0       #hStartPadding:I
    :cond_25
    iget v3, p0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move v2, v3

    goto :goto_c
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .registers 26
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "dragRect"

    .prologue
    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    move v10, v0

    .line 639
    .local v10, portrait:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    move v6, v0

    .line 640
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    move v5, v0

    .line 641
    .local v5, cellHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    move v13, v0

    .line 642
    .local v13, widthGap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    move v9, v0

    .line 644
    .local v9, heightGap:I
    if-eqz v10, :cond_71

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 645
    .local v7, hStartPadding:I
    :goto_23
    if-eqz v10, :cond_7a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v11, v16

    .line 647
    .local v11, vStartPadding:I
    :goto_2d
    mul-int v16, p3, v6

    const/16 v17, 0x1

    sub-int v17, p3, v17

    mul-int v17, v17, v13

    add-int v12, v16, v17

    .line 648
    .local v12, width:I
    mul-int v16, p4, v5

    const/16 v17, 0x1

    sub-int v17, p4, v17

    mul-int v17, v17, v9

    add-int v8, v16, v17

    .line 650
    .local v8, height:I
    add-int v16, v6, v13

    mul-int v16, v16, p1

    add-int v14, v7, v16

    .line 651
    .local v14, x:I
    add-int v16, v5, v9

    mul-int v16, v16, p2

    add-int v15, v11, v16

    .line 653
    .local v15, y:I
    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v18, v14, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v15, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 654
    return-void

    .line 644
    .end local v7           #hStartPadding:I
    .end local v8           #height:I
    .end local v11           #vStartPadding:I
    .end local v12           #width:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_71
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v7, v16

    goto :goto_23

    .line 645
    .restart local v7       #hStartPadding:I
    :cond_7a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v11, v16

    goto :goto_2d
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 768
    instance-of v0, p1, Lcom/lge/homecube/CellLayout$LayoutParams;

    return v0
.end method

.method findAllVacantCells([Z)Lcom/lge/homecube/CellLayout$CellInfo;
    .registers 16
    .parameter "occupiedCells"

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/high16 v10, -0x8000

    .line 319
    iget-boolean v3, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 320
    .local v3, portrait:Z
    if-eqz v3, :cond_27

    iget v8, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v5, v8

    .line 321
    .local v5, xCount:I
    :goto_c
    if-eqz v3, :cond_2b

    iget v8, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v7, v8

    .line 323
    .local v7, yCount:I
    :goto_11
    iget-object v2, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    .line 325
    .local v2, occupied:[[Z
    if-eqz p1, :cond_32

    .line 326
    const/4 v6, 0x0

    .local v6, y:I
    :goto_16
    if-ge v6, v7, :cond_35

    .line 327
    const/4 v4, 0x0

    .local v4, x:I
    :goto_19
    if-ge v4, v5, :cond_2f

    .line 328
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 320
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v6           #y:I
    .end local v7           #yCount:I
    :cond_27
    iget v8, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v5, v8

    goto :goto_c

    .line 321
    .restart local v5       #xCount:I
    :cond_2b
    iget v8, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v7, v8

    goto :goto_11

    .line 326
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 332
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_32
    invoke-direct {p0, v5, v7, v2}, Lcom/lge/homecube/CellLayout;->findOccupiedCells(II[[Z)V

    .line 335
    :cond_35
    new-instance v0, Lcom/lge/homecube/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/lge/homecube/CellLayout$CellInfo;-><init>()V

    .line 337
    .local v0, cellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    iput v12, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 338
    iput v12, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .line 339
    iput v11, v0, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    .line 340
    iput v11, v0, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    .line 341
    iput v10, v0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 342
    iput v10, v0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 343
    iput v10, v0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 344
    iput v10, v0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 345
    iget-object v8, p0, Lcom/lge/homecube/CellLayout;->mCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget v8, v8, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    iput v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 347
    iget-object v1, v0, Lcom/lge/homecube/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 349
    .local v1, current:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_53
    if-ge v4, v5, :cond_6e

    .line 350
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_56
    if-ge v6, v7, :cond_6b

    .line 351
    aget-object v8, v2, v4

    aget-boolean v8, v8, v6

    if-nez v8, :cond_68

    .line 352
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    invoke-static {v1, v5, v7, v2, v0}, Lcom/lge/homecube/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/lge/homecube/CellLayout$CellInfo;)V

    .line 354
    aget-object v8, v2, v4

    aput-boolean v13, v8, v6

    .line 350
    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 349
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 359
    .end local v6           #y:I
    :cond_6e
    iget-object v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7a

    move v8, v13

    :goto_77
    iput-boolean v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    .line 364
    return-object v0

    :cond_7a
    move v8, v11

    .line 359
    goto :goto_77
.end method

.method findCell(IIIILandroid/view/View;)Landroid/view/View;
    .registers 12
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "ignoreCell"

    .prologue
    .line 553
    if-ltz p1, :cond_18

    add-int v4, p1, p3

    iget-boolean v5, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    if-eqz v5, :cond_1a

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    :goto_a
    if-gt v4, v5, :cond_18

    if-ltz p2, :cond_18

    add-int v4, p2, p4

    iget-boolean v5, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    if-eqz v5, :cond_1d

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    :goto_16
    if-le v4, v5, :cond_20

    :cond_18
    move-object v4, p0

    .line 572
    :goto_19
    return-object v4

    .line 553
    :cond_1a
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    goto :goto_a

    :cond_1d
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    goto :goto_16

    .line 558
    :cond_20
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v0

    .line 559
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v0, :cond_52

    .line 560
    invoke-virtual {p0, v1}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 561
    .local v3, view:Landroid/view/View;
    if-ne v3, p5, :cond_30

    .line 559
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 565
    :cond_30
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 566
    .local v2, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iget v4, v2, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    iget v5, v2, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2d

    iget v4, v2, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    add-int v5, p1, p3

    if-ge v4, v5, :cond_2d

    iget v4, v2, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    iget v5, v2, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_2d

    iget v4, v2, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    add-int v5, p2, p4

    if-ge v4, v5, :cond_2d

    move-object v4, v3

    .line 568
    goto :goto_19

    .line 572
    .end local v2           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_52
    const/4 v4, 0x0

    goto :goto_19
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 763
    new-instance v0, Lcom/lge/homecube/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lge/homecube/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 773
    new-instance v0, Lcom/lge/homecube/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lge/homecube/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCountX()I
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    goto :goto_6
.end method

.method getCountY()I
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    goto :goto_6
.end method

.method getOccupiedCells()[Z
    .registers 10

    .prologue
    .line 721
    iget-boolean v2, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 722
    .local v2, portrait:Z
    if-eqz v2, :cond_27

    iget v7, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v4, v7

    .line 723
    .local v4, xCount:I
    :goto_7
    if-eqz v2, :cond_2b

    iget v7, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v6, v7

    .line 724
    .local v6, yCount:I
    :goto_c
    iget-object v1, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    .line 726
    .local v1, occupied:[[Z
    invoke-direct {p0, v4, v6, v1}, Lcom/lge/homecube/CellLayout;->findOccupiedCells(II[[Z)V

    .line 728
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 729
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_16
    if-ge v5, v6, :cond_32

    .line 730
    const/4 v3, 0x0

    .local v3, x:I
    :goto_19
    if-ge v3, v4, :cond_2f

    .line 731
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 730
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 722
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_27
    iget v7, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v4, v7

    goto :goto_7

    .line 723
    .restart local v4       #xCount:I
    :cond_2b
    iget v7, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v6, v7

    goto :goto_c

    .line 729
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 735
    .end local v3           #x:I
    :cond_32
    return-object v0
.end method

.method public getTag()Lcom/lge/homecube/CellLayout$CellInfo;
    .registers 8

    .prologue
    .line 211
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout$CellInfo;

    .line 212
    .local v0, info:Lcom/lge/homecube/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/lge/homecube/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_29

    .line 213
    iget-boolean v6, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 214
    .local v6, portrait:Z
    if-eqz v6, :cond_2a

    iget v1, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v3, v1

    .line 215
    .local v3, xCount:I
    :goto_15
    if-eqz v6, :cond_2e

    iget v1, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v4, v1

    .line 217
    .local v4, yCount:I
    :goto_1a
    iget-object v5, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    .line 218
    .local v5, occupied:[[Z
    invoke-direct {p0, v3, v4, v5}, Lcom/lge/homecube/CellLayout;->findOccupiedCells(II[[Z)V

    .line 220
    iget v1, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->findIntersectingVacantCells(Lcom/lge/homecube/CellLayout$CellInfo;IIII[[Z)V

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/homecube/CellLayout;->mDirtyTag:Z

    .line 224
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_29
    return-object v0

    .line 214
    .restart local v6       #portrait:Z
    :cond_2a
    iget v1, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v3, v1

    goto :goto_15

    .line 215
    .restart local v3       #xCount:I
    :cond_2e
    iget v1, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v4, v1

    goto :goto_1a
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getTag()Lcom/lge/homecube/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .registers 11
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 686
    iget-boolean v6, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 687
    .local v6, portrait:Z
    if-eqz v6, :cond_19

    iget v0, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v3, v0

    .line 688
    .local v3, xCount:I
    :goto_7
    if-eqz v6, :cond_1d

    iget v0, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v4, v0

    .line 689
    .local v4, yCount:I
    :goto_c
    iget-object v5, p0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    .line 691
    .local v5, occupied:[[Z
    invoke-direct {p0, v3, v4, v5}, Lcom/lge/homecube/CellLayout;->findOccupiedCells(II[[Z)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 693
    invoke-static/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 687
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    :cond_19
    iget v0, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v3, v0

    goto :goto_7

    .line 688
    .restart local v3       #xCount:I
    :cond_1d
    iget v0, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v4, v0

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 133
    iget-object v1, p0, Lcom/lge/homecube/CellLayout;->mCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 134
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 609
    .local v0, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/homecube/CellLayout$LayoutParams;->isDragging:Z

    .line 610
    iget-object v1, p0, Lcom/lge/homecube/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 611
    return-void
.end method

.method onDragOverChild(Landroid/view/View;II)V
    .registers 12
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 621
    iget-object v6, p0, Lcom/lge/homecube/CellLayout;->mCellXY:[I

    .line 622
    .local v6, cellXY:[I
    invoke-virtual {p0, p2, p3, v6}, Lcom/lge/homecube/CellLayout;->pointToCellRounded(II[I)V

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 624
    .local v7, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    iget v3, v7, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/lge/homecube/CellLayout;->mDragRect:Landroid/graphics/RectF;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 625
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->invalidate()V

    .line 626
    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 595
    if-eqz p1, :cond_e

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/homecube/CellLayout$LayoutParams;->isDragging:Z

    .line 597
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->invalidate()V

    .line 599
    :cond_e
    iget-object v0, p0, Lcom/lge/homecube/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 600
    return-void
.end method

.method onDropChild(Landroid/view/View;II)V
    .registers 8
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v3, 0x0

    .line 583
    iget-object v0, p0, Lcom/lge/homecube/CellLayout;->mCellXY:[I

    .line 584
    .local v0, cellXY:[I
    invoke-virtual {p0, p2, p3, v0}, Lcom/lge/homecube/CellLayout;->pointToCellRounded(II[I)V

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 586
    .local v1, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    aget v2, v0, v3

    iput v2, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    .line 587
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    .line 588
    iput-boolean v3, v1, Lcom/lge/homecube/CellLayout$LayoutParams;->isDragging:Z

    .line 589
    iget-object v2, p0, Lcom/lge/homecube/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 591
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->invalidate()V

    .line 592
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .parameter "ev"

    .prologue
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 139
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/CellLayout;->mCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    move-object v5, v0

    .line 141
    .local v5, cellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    if-nez v4, :cond_15d

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v10, v0

    .line 143
    .local v10, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mScrollX:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 144
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mScrollY:I

    move/from16 v20, v0

    add-int v17, v19, v20

    .line 145
    .local v17, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v8

    .line 147
    .local v8, count:I
    const/4 v9, 0x0

    .line 148
    .local v9, found:Z
    const/16 v19, 0x1

    sub-int v11, v8, v19

    .local v11, i:I
    :goto_3b
    if-ltz v11, :cond_9d

    .line 149
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 151
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_50

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    if-eqz v19, :cond_142

    .line 152
    :cond_50
    invoke-virtual {v7, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 153
    move-object v0, v10

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-eqz v19, :cond_142

    .line 154
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 155
    .local v12, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iput-object v7, v5, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 156
    move-object v0, v12

    iget v0, v0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 157
    move-object v0, v12

    iget v0, v0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .line 158
    move-object v0, v12

    iget v0, v0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    .line 159
    move-object v0, v12

    iget v0, v0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    .line 160
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    .line 161
    const/4 v9, 0x1

    .line 162
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout;->mDirtyTag:Z

    .line 168
    .end local v7           #child:Landroid/view/View;
    .end local v12           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_9d
    if-nez v9, :cond_139

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/CellLayout;->mCellXY:[I

    move-object v6, v0

    .line 170
    .local v6, cellXY:[I
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/CellLayout;->pointToCellExact(II[I)V

    .line 172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    move v14, v0

    .line 173
    .local v14, portrait:Z
    if-eqz v14, :cond_146

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move/from16 v19, v0

    move/from16 v16, v19

    .line 174
    .local v16, xCount:I
    :goto_bc
    if-eqz v14, :cond_150

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move/from16 v19, v0

    move/from16 v18, v19

    .line 176
    .local v18, yCount:I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/CellLayout;->mOccupied:[[Z

    move-object v13, v0

    .line 177
    .local v13, occupied:[[Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/homecube/CellLayout;->findOccupiedCells(II[[Z)V

    .line 179
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 180
    const/16 v19, 0x0

    aget v19, v6, v19

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 181
    const/16 v19, 0x1

    aget v19, v6, v19

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .line 182
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    .line 183
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    .line 184
    const/16 v19, 0x0

    aget v19, v6, v19

    if-ltz v19, :cond_15a

    const/16 v19, 0x1

    aget v19, v6, v19

    if-ltz v19, :cond_15a

    const/16 v19, 0x0

    aget v19, v6, v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_15a

    const/16 v19, 0x1

    aget v19, v6, v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_15a

    const/16 v19, 0x0

    aget v19, v6, v19

    aget-object v19, v13, v19

    const/16 v20, 0x1

    aget v20, v6, v20

    aget-boolean v19, v19, v20

    if-nez v19, :cond_15a

    const/16 v19, 0x1

    :goto_12c
    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    .line 192
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout;->mDirtyTag:Z

    .line 194
    .end local v6           #cellXY:[I
    .end local v13           #occupied:[[Z
    .end local v14           #portrait:Z
    .end local v16           #xCount:I
    .end local v18           #yCount:I
    :cond_139
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/homecube/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 206
    .end local v8           #count:I
    .end local v9           #found:Z
    .end local v10           #frame:Landroid/graphics/Rect;
    .end local v11           #i:I
    .end local v15           #x:I
    .end local v17           #y:I
    :cond_13f
    :goto_13f
    const/16 v19, 0x0

    return v19

    .line 148
    .restart local v7       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #found:Z
    .restart local v10       #frame:Landroid/graphics/Rect;
    .restart local v11       #i:I
    .restart local v15       #x:I
    .restart local v17       #y:I
    :cond_142
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3b

    .line 173
    .end local v7           #child:Landroid/view/View;
    .restart local v6       #cellXY:[I
    .restart local v14       #portrait:Z
    :cond_146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move/from16 v19, v0

    move/from16 v16, v19

    goto/16 :goto_bc

    .line 174
    .restart local v16       #xCount:I
    :cond_150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move/from16 v19, v0

    move/from16 v18, v19

    goto/16 :goto_c6

    .line 184
    .restart local v13       #occupied:[[Z
    .restart local v18       #yCount:I
    :cond_15a
    const/16 v19, 0x0

    goto :goto_12c

    .line 195
    .end local v6           #cellXY:[I
    .end local v8           #count:I
    .end local v9           #found:Z
    .end local v10           #frame:Landroid/graphics/Rect;
    .end local v11           #i:I
    .end local v13           #occupied:[[Z
    .end local v14           #portrait:Z
    .end local v15           #x:I
    .end local v16           #xCount:I
    .end local v17           #y:I
    .end local v18           #yCount:I
    :cond_15d
    const/16 v19, 0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_13f

    .line 196
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 197
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 198
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .line 199
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    .line 200
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    .line 201
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    .line 202
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout;->mDirtyTag:Z

    .line 203
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/homecube/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_13f
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v3

    .line 501
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, v3, :cond_29

    .line 502
    invoke-virtual {p0, v4}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_26

    .line 505
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 507
    .local v5, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    iget v1, v5, Lcom/lge/homecube/CellLayout$LayoutParams;->x:I

    .line 508
    .local v1, childLeft:I
    iget v2, v5, Lcom/lge/homecube/CellLayout$LayoutParams;->y:I

    .line 509
    .local v2, childTop:I
    iget v6, v5, Lcom/lge/homecube/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v1

    iget v7, v5, Lcom/lge/homecube/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 501
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 512
    .end local v0           #child:Landroid/view/View;
    :cond_29
    return-void
.end method

.method protected onMeasure(II)V
    .registers 37
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 424
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 425
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 427
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 428
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 430
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_14

    if-nez v22, :cond_1c

    .line 431
    :cond_14
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 434
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 435
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 436
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move v9, v0

    .line 437
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 438
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move v8, v0

    .line 439
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 440
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    move v4, v0

    .line 441
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    move v5, v0

    .line 443
    .local v5, cellHeight:I
    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_c5

    const/4 v6, 0x1

    :goto_4f
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 445
    const/4 v6, 0x1

    sub-int v28, v29, v6

    .line 446
    .local v28, numShortGaps:I
    const/4 v6, 0x1

    sub-int v27, v25, v6

    .line 448
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_ce

    .line 449
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 451
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    .line 453
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 455
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_c7

    .line 456
    div-int v6, v21, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    .line 474
    :goto_81
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v20

    .line 476
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_87
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_10a

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 478
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/lge/homecube/CellLayout$LayoutParams;

    .line 480
    .local v3, lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_f6

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    move v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/lge/homecube/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 488
    :goto_af
    iget v6, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 489
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/lge/homecube/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 491
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 476
    add-int/lit8 v24, v24, 0x1

    goto :goto_87

    .line 443
    .end local v3           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    .end local v18           #childWidthMeasureSpec:I
    .end local v19           #childheightMeasureSpec:I
    .end local v20           #count:I
    .end local v21           #hSpaceLeft:I
    .end local v24           #i:I
    .end local v27           #numLongGaps:I
    .end local v28           #numShortGaps:I
    .end local v31           #vSpaceLeft:I
    :cond_c5
    const/4 v6, 0x0

    goto :goto_4f

    .line 458
    .restart local v21       #hSpaceLeft:I
    .restart local v27       #numLongGaps:I
    .restart local v28       #numShortGaps:I
    .restart local v31       #vSpaceLeft:I
    :cond_c7
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    goto :goto_81

    .line 461
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_ce
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 463
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    .line 465
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 467
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_ef

    .line 468
    div-int v6, v31, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    goto :goto_81

    .line 470
    :cond_ef
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    goto :goto_81

    .line 484
    .restart local v3       #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    move v14, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/lge/homecube/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_af

    .line 494
    .end local v3           #lp:Lcom/lge/homecube/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_10a
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/homecube/CellLayout;->setMeasuredDimension(II)V

    .line 495
    return-void
.end method

.method pointToCellExact(II[I)V
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 374
    iget-boolean v1, p0, Lcom/lge/homecube/CellLayout;->mPortrait:Z

    .line 376
    .local v1, portrait:Z
    if-eqz v1, :cond_49

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move v0, v5

    .line 377
    .local v0, hStartPadding:I
    :goto_9
    if-eqz v1, :cond_4d

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move v2, v5

    .line 379
    .local v2, vStartPadding:I
    :goto_e
    sub-int v5, p1, v0

    iget v6, p0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 380
    sub-int v5, p2, v2

    iget v6, p0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 382
    if-eqz v1, :cond_51

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v3, v5

    .line 383
    .local v3, xAxis:I
    :goto_27
    if-eqz v1, :cond_55

    iget v5, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v4, v5

    .line 385
    .local v4, yAxis:I
    :goto_2c
    aget v5, p3, v8

    if-gez v5, :cond_32

    aput v8, p3, v8

    .line 386
    :cond_32
    aget v5, p3, v8

    if-lt v5, v3, :cond_3a

    sub-int v5, v3, v9

    aput v5, p3, v8

    .line 387
    :cond_3a
    aget v5, p3, v9

    if-gez v5, :cond_40

    aput v8, p3, v9

    .line 388
    :cond_40
    aget v5, p3, v9

    if-lt v5, v4, :cond_48

    sub-int v5, v4, v9

    aput v5, p3, v9

    .line 389
    :cond_48
    return-void

    .line 376
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_49
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mLongAxisStartPadding:I

    move v0, v5

    goto :goto_9

    .line 377
    .restart local v0       #hStartPadding:I
    :cond_4d
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mShortAxisStartPadding:I

    move v2, v5

    goto :goto_e

    .line 382
    .restart local v2       #vStartPadding:I
    :cond_51
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mLongAxisCells:I

    move v3, v5

    goto :goto_27

    .line 383
    .restart local v3       #xAxis:I
    :cond_55
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mShortAxisCells:I

    move v4, v5

    goto :goto_2c
.end method

.method pointToCellRounded(II[I)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 398
    iget v0, p0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/lge/homecube/CellLayout;->pointToCellExact(II[I)V

    .line 399
    return-void
.end method

.method public rectToCell(II)[I
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 666
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/lge/homecube/CellLayout;->mWidthGap:I

    add-int v1, v5, v6

    .line 667
    .local v1, actualWidth:I
    iget v5, p0, Lcom/lge/homecube/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/lge/homecube/CellLayout;->mHeightGap:I

    add-int v0, v5, v6

    .line 668
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 671
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 672
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 673
    .local v4, spanY:I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 123
    if-eqz p1, :cond_10

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/lge/homecube/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 128
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_10
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout;->getChildCount()I

    move-result v0

    .line 517
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_14

    .line 518
    invoke-virtual {p0, v1}, Lcom/lge/homecube/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 521
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 523
    .end local v2           #view:Landroid/view/View;
    :cond_14
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 528
    return-void
.end method
