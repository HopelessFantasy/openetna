.class public Lcom/android/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/CellLayout$CellInfo;,
        Lcom/android/launcher/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

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

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object v1, p0, Lcom/android/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 51
    new-instance v1, Lcom/android/launcher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/android/launcher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/CellLayout;->mCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 53
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher/CellLayout;->mCellXY:[I

    .line 57
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 71
    sget-object v1, Lcom/android/launcher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    .line 76
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 78
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mLongAxisEndPadding:I

    .line 80
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 82
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mShortAxisEndPadding:I

    .line 85
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    .line 86
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/launcher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_7c

    .line 93
    iget-boolean v1, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_7d

    .line 94
    iget v1, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    iget v2, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    .line 99
    :cond_7c
    :goto_7c
    return-void

    .line 96
    :cond_7d
    iget v1, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    iget v2, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    goto :goto_7c
.end method

.method static synthetic access$000(Lcom/android/launcher/CellLayout$CellInfo;IIII[[Z)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 32
    invoke-static/range {p0 .. p5}, Lcom/android/launcher/CellLayout;->findIntersectingVacantCells(Lcom/android/launcher/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/android/launcher/CellLayout$CellInfo;)V
    .registers 5
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 296
    invoke-static {}, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->acquire()Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 297
    .local v0, cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 298
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 299
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 300
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 301
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_2c

    .line 302
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 303
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 305
    :cond_2c
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_3a

    .line 306
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 307
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 309
    :cond_3a
    iget-object v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/android/launcher/CellLayout$CellInfo;IIII[[Z)V
    .registers 7
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 242
    iput v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 243
    iput v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 244
    iput v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 245
    iput v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout$CellInfo;->clearVacantCells()V

    .line 248
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_14

    .line 255
    :goto_13
    return-void

    .line 252
    :cond_14
    iget-object v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/android/launcher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V

    goto :goto_13
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .registers 13
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 759
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    if-ge v4, p1, :cond_11

    .line 760
    const/4 v5, 0x0

    .local v5, y:I
    :goto_4
    if-ge v5, p2, :cond_e

    .line 761
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 760
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 759
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 765
    .end local v5           #y:I
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 766
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v1, :cond_50

    .line 767
    invoke-virtual {p0, v2}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 768
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/android/launcher/Folder;

    if-nez v6, :cond_26

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 766
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 771
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 773
    .local v3, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_31
    iget v6, v3, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_26

    if-ge v4, p1, :cond_26

    .line 774
    iget v5, v3, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_3c
    iget v6, v3, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4d

    if-ge v5, p2, :cond_4d

    .line 775
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 774
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 773
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 779
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_50
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V
    .registers 9
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-static {p0, p4}, Lcom/android/launcher/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/android/launcher/CellLayout$CellInfo;)V

    .line 262
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_23

    .line 263
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/android/launcher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 264
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 265
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V

    .line 266
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 270
    :cond_23
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v3

    if-ge v0, v1, :cond_45

    .line 271
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/android/launcher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 272
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 273
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V

    .line 274
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 278
    :cond_45
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_64

    .line 279
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/android/launcher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 280
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 281
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V

    .line 282
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 286
    :cond_64
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v3

    if-ge v0, v1, :cond_86

    .line 287
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/android/launcher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 288
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 289
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V

    .line 290
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 293
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

    .line 719
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, p3, :cond_42

    .line 720
    const/4 v4, 0x0

    .local v4, y:I
    :goto_6
    if-ge v4, p4, :cond_3f

    .line 721
    aget-object v5, p5, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_32

    move v0, v6

    .line 722
    .local v0, available:Z
    :goto_f
    move v1, v3

    .local v1, i:I
    :goto_10
    add-int v5, v3, p1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_2a

    if-ge v3, p3, :cond_2a

    .line 723
    move v2, v4

    .local v2, j:I
    :goto_18
    add-int v5, v4, p2

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_39

    if-ge v4, p4, :cond_39

    .line 724
    if-eqz v0, :cond_34

    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_34

    move v0, v6

    .line 725
    :goto_28
    if-nez v0, :cond_36

    .line 729
    .end local v2           #j:I
    :cond_2a
    if-eqz v0, :cond_3c

    .line 730
    aput v3, p0, v7

    .line 731
    aput v4, p0, v6

    move v5, v6

    .line 737
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_31
    return v5

    .restart local v4       #y:I
    :cond_32
    move v0, v7

    .line 721
    goto :goto_f

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_34
    move v0, v7

    .line 724
    goto :goto_28

    .line 723
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 722
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 720
    .end local v2           #j:I
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 719
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #y:I
    :cond_42
    move v5, v7

    .line 737
    goto :goto_31
.end method

.method private static isColumnEmpty(III[[Z)Z
    .registers 6
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 313
    move v0, p1

    .local v0, y:I
    :goto_1
    if-gt v0, p2, :cond_e

    .line 314
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b

    .line 315
    const/4 v1, 0x0

    .line 318
    :goto_a
    return v1

    .line 313
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
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
    .line 322
    move v0, p1

    .local v0, x:I
    :goto_1
    if-gt v0, p2, :cond_e

    .line 323
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_b

    .line 324
    const/4 v1, 0x0

    .line 327
    :goto_a
    return v1

    .line 322
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 125
    move-object v0, p3

    check-cast v0, Lcom/android/launcher/CellLayout$LayoutParams;

    move-object v1, v0

    .line 126
    .local v1, cellParams:Lcom/android/launcher/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget v3, v1, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget v3, v1, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 107
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 111
    .end local v0           #child:Landroid/view/View;
    :cond_14
    return-void
.end method

.method cellToPoint(II[I)V
    .registers 10
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 422
    iget-boolean v1, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 424
    .local v1, portrait:Z
    if-eqz v1, :cond_21

    iget v3, p0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    move v0, v3

    .line 425
    .local v0, hStartPadding:I
    :goto_7
    if-eqz v1, :cond_25

    iget v3, p0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move v2, v3

    .line 428
    .local v2, vStartPadding:I
    :goto_c
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 429
    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 430
    return-void

    .line 424
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_21
    iget v3, p0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move v0, v3

    goto :goto_7

    .line 425
    .restart local v0       #hStartPadding:I
    :cond_25
    iget v3, p0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

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
    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    move v10, v0

    .line 659
    .local v10, portrait:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    move v6, v0

    .line 660
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    move v5, v0

    .line 661
    .local v5, cellHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mWidthGap:I

    move v13, v0

    .line 662
    .local v13, widthGap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mHeightGap:I

    move v9, v0

    .line 664
    .local v9, heightGap:I
    if-eqz v10, :cond_71

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 665
    .local v7, hStartPadding:I
    :goto_23
    if-eqz v10, :cond_7a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v11, v16

    .line 667
    .local v11, vStartPadding:I
    :goto_2d
    mul-int v16, p3, v6

    const/16 v17, 0x1

    sub-int v17, p3, v17

    mul-int v17, v17, v13

    add-int v12, v16, v17

    .line 668
    .local v12, width:I
    mul-int v16, p4, v5

    const/16 v17, 0x1

    sub-int v17, p4, v17

    mul-int v17, v17, v9

    add-int v8, v16, v17

    .line 670
    .local v8, height:I
    add-int v16, v6, v13

    mul-int v16, v16, p1

    add-int v14, v7, v16

    .line 671
    .local v14, x:I
    add-int v16, v5, v9

    mul-int v16, v16, p2

    add-int v15, v11, v16

    .line 673
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

    .line 674
    return-void

    .line 664
    .end local v7           #hStartPadding:I
    .end local v8           #height:I
    .end local v11           #vStartPadding:I
    .end local v12           #width:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_71
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v7, v16

    goto :goto_23

    .line 665
    .restart local v7       #hStartPadding:I
    :cond_7a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v11, v16

    goto :goto_2d
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 788
    instance-of v0, p1, Lcom/android/launcher/CellLayout$LayoutParams;

    return v0
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/android/launcher/CellLayout$CellInfo;
    .registers 13
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 331
    iget-boolean v3, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 332
    .local v3, portrait:Z
    if-eqz v3, :cond_22

    iget v8, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v5, v8

    .line 333
    .local v5, xCount:I
    :goto_7
    if-eqz v3, :cond_26

    iget v8, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v7, v8

    .line 335
    .local v7, yCount:I
    :goto_c
    iget-object v2, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    .line 337
    .local v2, occupied:[[Z
    if-eqz p1, :cond_2d

    .line 338
    const/4 v6, 0x0

    .local v6, y:I
    :goto_11
    if-ge v6, v7, :cond_30

    .line 339
    const/4 v4, 0x0

    .local v4, x:I
    :goto_14
    if-ge v4, v5, :cond_2a

    .line 340
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 332
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v6           #y:I
    .end local v7           #yCount:I
    :cond_22
    iget v8, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v5, v8

    goto :goto_7

    .line 333
    .restart local v5       #xCount:I
    :cond_26
    iget v8, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v7, v8

    goto :goto_c

    .line 338
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 344
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_2d
    invoke-direct {p0, v5, v7, v2, p2}, Lcom/android/launcher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 347
    :cond_30
    new-instance v0, Lcom/android/launcher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/android/launcher/CellLayout$CellInfo;-><init>()V

    .line 349
    .local v0, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    const/4 v8, -0x1

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 350
    const/4 v8, -0x1

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .line 351
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    .line 352
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    .line 353
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 354
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 355
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 356
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 357
    iget-object v8, p0, Lcom/android/launcher/CellLayout;->mCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget v8, v8, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    iput v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 359
    iget-object v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 361
    .local v1, current:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_5a
    if-ge v4, v5, :cond_76

    .line 362
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_5d
    if-ge v6, v7, :cond_73

    .line 363
    aget-object v8, v2, v4

    aget-boolean v8, v8, v6

    if-nez v8, :cond_70

    .line 364
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    invoke-static {v1, v5, v7, v2, v0}, Lcom/android/launcher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/android/launcher/CellLayout$CellInfo;)V

    .line 366
    aget-object v8, v2, v4

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 362
    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 361
    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 371
    .end local v6           #y:I
    :cond_76
    iget-object v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_82

    const/4 v8, 0x1

    :goto_7f
    iput-boolean v8, v0, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    .line 376
    return-object v0

    .line 371
    :cond_82
    const/4 v8, 0x0

    goto :goto_7f
.end method

.method findNearestVacantArea(IIIILcom/android/launcher/CellLayout$CellInfo;[I)[I
    .registers 26
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 559
    if-eqz p6, :cond_17

    move-object/from16 v6, p6

    .line 560
    .local v6, bestXY:[I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/CellLayout;->mCellXY:[I

    move-object v8, v0

    .line 561
    .local v8, cellXY:[I
    const-wide v4, 0x7fefffffffffffffL

    .line 564
    .local v4, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    move v13, v0

    if-nez v13, :cond_1c

    .line 565
    const/4 v13, 0x0

    .line 594
    :goto_16
    return-object v13

    .line 559
    .end local v4           #bestDistance:D
    .end local v6           #bestXY:[I
    .end local v8           #cellXY:[I
    :cond_17
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object v6, v13

    goto :goto_4

    .line 569
    .restart local v4       #bestDistance:D
    .restart local v6       #bestXY:[I
    .restart local v8       #cellXY:[I
    :cond_1c
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 570
    .local v12, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_26
    if-ge v11, v12, :cond_7d

    .line 571
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 574
    .local v7, cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    iget v13, v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    move v0, v13

    move/from16 v1, p3

    if-ne v0, v1, :cond_41

    iget v13, v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    move v0, v13

    move/from16 v1, p4

    if-eq v0, v1, :cond_44

    .line 570
    :cond_41
    :goto_41
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    .line 579
    :cond_44
    iget v13, v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v14, v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/CellLayout;->cellToPoint(II[I)V

    .line 581
    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/4 v15, 0x1

    aget v15, v8, v15

    sub-int v15, v15, p2

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 583
    .local v9, distance:D
    cmpg-double v13, v9, v4

    if-gtz v13, :cond_41

    .line 584
    move-wide v4, v9

    .line 585
    const/4 v13, 0x0

    iget v14, v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v14, v6, v13

    .line 586
    const/4 v13, 0x1

    iget v14, v7, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v14, v6, v13

    goto :goto_41

    .line 591
    .end local v7           #cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    .end local v9           #distance:D
    :cond_7d
    const-wide v13, 0x7fefffffffffffffL

    cmpg-double v13, v4, v13

    if-gez v13, :cond_88

    move-object v13, v6

    .line 592
    goto :goto_16

    .line 594
    :cond_88
    const/4 v13, 0x0

    goto :goto_16
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 783
    new-instance v0, Lcom/android/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 793
    new-instance v0, Lcom/android/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCountX()I
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_6
.end method

.method getCountY()I
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_6
.end method

.method getOccupiedCells()[Z
    .registers 10

    .prologue
    .line 741
    iget-boolean v2, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 742
    .local v2, portrait:Z
    if-eqz v2, :cond_28

    iget v7, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v4, v7

    .line 743
    .local v4, xCount:I
    :goto_7
    if-eqz v2, :cond_2c

    iget v7, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v6, v7

    .line 744
    .local v6, yCount:I
    :goto_c
    iget-object v1, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    .line 746
    .local v1, occupied:[[Z
    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v1, v7}, Lcom/android/launcher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 748
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 749
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_17
    if-ge v5, v6, :cond_33

    .line 750
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1a
    if-ge v3, v4, :cond_30

    .line 751
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 750
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 742
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_28
    iget v7, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v4, v7

    goto :goto_7

    .line 743
    .restart local v4       #xCount:I
    :cond_2c
    iget v7, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v6, v7

    goto :goto_c

    .line 749
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 755
    .end local v3           #x:I
    :cond_33
    return-object v0
.end method

.method public getTag()Lcom/android/launcher/CellLayout$CellInfo;
    .registers 8

    .prologue
    .line 223
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$CellInfo;

    .line 224
    .local v0, info:Lcom/android/launcher/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/android/launcher/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_2a

    .line 225
    iget-boolean v6, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 226
    .local v6, portrait:Z
    if-eqz v6, :cond_2b

    iget v1, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v3, v1

    .line 227
    .local v3, xCount:I
    :goto_15
    if-eqz v6, :cond_2f

    iget v1, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v4, v1

    .line 229
    .local v4, yCount:I
    :goto_1a
    iget-object v5, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    .line 230
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/launcher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 232
    iget v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/CellLayout;->findIntersectingVacantCells(Lcom/android/launcher/CellLayout$CellInfo;IIII[[Z)V

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/CellLayout;->mDirtyTag:Z

    .line 236
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_2a
    return-object v0

    .line 226
    .restart local v6       #portrait:Z
    :cond_2b
    iget v1, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v3, v1

    goto :goto_15

    .line 227
    .restart local v3       #xCount:I
    :cond_2f
    iget v1, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v4, v1

    goto :goto_1a
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getTag()Lcom/android/launcher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .registers 11
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 706
    iget-boolean v6, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 707
    .local v6, portrait:Z
    if-eqz v6, :cond_1a

    iget v0, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v3, v0

    .line 708
    .local v3, xCount:I
    :goto_7
    if-eqz v6, :cond_1e

    iget v0, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v4, v0

    .line 709
    .local v4, yCount:I
    :goto_c
    iget-object v5, p0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    .line 711
    .local v5, occupied:[[Z
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/launcher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 713
    invoke-static/range {v0 .. v5}, Lcom/android/launcher/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 707
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    :cond_1a
    iget v0, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v3, v0

    goto :goto_7

    .line 708
    .restart local v3       #xCount:I
    :cond_1e
    iget v0, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v4, v0

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 145
    iget-object v1, p0, Lcom/android/launcher/CellLayout;->mCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 146
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 629
    .local v0, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 630
    iget-object v1, p0, Lcom/android/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 631
    return-void
.end method

.method onDragOverChild(Landroid/view/View;II)V
    .registers 12
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 641
    iget-object v6, p0, Lcom/android/launcher/CellLayout;->mCellXY:[I

    .line 642
    .local v6, cellXY:[I
    invoke-virtual {p0, p2, p3, v6}, Lcom/android/launcher/CellLayout;->pointToCellRounded(II[I)V

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 644
    .local v7, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    iget v3, v7, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 645
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->invalidate()V

    .line 646
    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 615
    if-eqz p1, :cond_e

    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 617
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->invalidate()V

    .line 619
    :cond_e
    iget-object v0, p0, Lcom/android/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 620
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .registers 6
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 606
    .local v0, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    aget v1, p2, v2

    iput v1, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    .line 607
    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    .line 608
    iput-boolean v2, v0, Lcom/android/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 609
    iget-object v1, p0, Lcom/android/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 611
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->invalidate()V

    .line 612
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .parameter "ev"

    .prologue
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 151
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/CellLayout;->mCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    move-object v6, v0

    .line 153
    .local v6, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    if-nez v5, :cond_163

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 155
    .local v11, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mScrollX:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 156
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mScrollY:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 157
    .local v18, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v9

    .line 159
    .local v9, count:I
    const/4 v10, 0x0

    .line 160
    .local v10, found:Z
    const/16 v20, 0x1

    sub-int v12, v9, v20

    .local v12, i:I
    :goto_3b
    if-ltz v12, :cond_9e

    .line 161
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 163
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_50

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_148

    .line 164
    :cond_50
    invoke-virtual {v8, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 165
    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_148

    .line 166
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 167
    .local v13, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    iput-object v8, v6, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 168
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 169
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .line 170
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    .line 171
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    .line 172
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    .line 173
    const/4 v10, 0x1

    .line 174
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout;->mDirtyTag:Z

    .line 180
    .end local v8           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_9e
    if-nez v10, :cond_13f

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/CellLayout;->mCellXY:[I

    move-object v7, v0

    .line 182
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/CellLayout;->pointToCellExact(II[I)V

    .line 184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    move v15, v0

    .line 185
    .local v15, portrait:Z
    if-eqz v15, :cond_14c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    .line 186
    .local v17, xCount:I
    :goto_be
    if-eqz v15, :cond_156

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    .line 188
    .local v19, yCount:I
    :goto_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/CellLayout;->mOccupied:[[Z

    move-object v14, v0

    .line 189
    .local v14, occupied:[[Z
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move-object v3, v14

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 191
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 192
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 193
    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .line 194
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    .line 195
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    .line 196
    const/16 v20, 0x0

    aget v20, v7, v20

    if-ltz v20, :cond_160

    const/16 v20, 0x1

    aget v20, v7, v20

    if-ltz v20, :cond_160

    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_160

    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_160

    const/16 v20, 0x0

    aget v20, v7, v20

    aget-object v20, v14, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    aget-boolean v20, v20, v21

    if-nez v20, :cond_160

    const/16 v20, 0x1

    :goto_132
    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    .line 204
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout;->mDirtyTag:Z

    .line 206
    .end local v7           #cellXY:[I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v17           #xCount:I
    .end local v19           #yCount:I
    :cond_13f
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 218
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v16           #x:I
    .end local v18           #y:I
    :cond_145
    :goto_145
    const/16 v20, 0x0

    return v20

    .line 160
    .restart local v8       #child:Landroid/view/View;
    .restart local v9       #count:I
    .restart local v10       #found:Z
    .restart local v11       #frame:Landroid/graphics/Rect;
    .restart local v12       #i:I
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_148
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_3b

    .line 185
    .end local v8           #child:Landroid/view/View;
    .restart local v7       #cellXY:[I
    .restart local v15       #portrait:Z
    :cond_14c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    goto/16 :goto_be

    .line 186
    .restart local v17       #xCount:I
    :cond_156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    goto/16 :goto_c8

    .line 196
    .restart local v14       #occupied:[[Z
    .restart local v19       #yCount:I
    :cond_160
    const/16 v20, 0x0

    goto :goto_132

    .line 207
    .end local v7           #cellXY:[I
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v16           #x:I
    .end local v17           #xCount:I
    .end local v18           #y:I
    .end local v19           #yCount:I
    :cond_163
    const/16 v20, 0x1

    move v0, v5

    move/from16 v1, v20

    if-ne v0, v1, :cond_145

    .line 208
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 209
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 210
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .line 211
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    .line 212
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    .line 213
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    .line 214
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout;->mDirtyTag:Z

    .line 215
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_145
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 513
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, v3, :cond_29

    .line 514
    invoke-virtual {p0, v4}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_26

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 519
    .local v5, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    iget v1, v5, Lcom/android/launcher/CellLayout$LayoutParams;->x:I

    .line 520
    .local v1, childLeft:I
    iget v2, v5, Lcom/android/launcher/CellLayout$LayoutParams;->y:I

    .line 521
    .local v2, childTop:I
    iget v6, v5, Lcom/android/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v1

    iget v7, v5, Lcom/android/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 513
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 524
    .end local v0           #child:Landroid/view/View;
    :cond_29
    return-void
.end method

.method protected onMeasure(II)V
    .registers 37
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 436
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 437
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 439
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 440
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 442
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_14

    if-nez v22, :cond_1c

    .line 443
    :cond_14
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 446
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 447
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 448
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move v9, v0

    .line 449
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 450
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    move v8, v0

    .line 451
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 452
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    move v4, v0

    .line 453
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    move v5, v0

    .line 455
    .local v5, cellHeight:I
    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_c5

    const/4 v6, 0x1

    :goto_4f
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 457
    const/4 v6, 0x1

    sub-int v28, v29, v6

    .line 458
    .local v28, numShortGaps:I
    const/4 v6, 0x1

    sub-int v27, v25, v6

    .line 460
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_ce

    .line 461
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 463
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/CellLayout;->mHeightGap:I

    .line 465
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 467
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_c7

    .line 468
    div-int v6, v21, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/CellLayout;->mWidthGap:I

    .line 486
    :goto_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v20

    .line 488
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_87
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_10a

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 490
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/CellLayout$LayoutParams;

    .line 492
    .local v3, lp:Lcom/android/launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_f6

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mWidthGap:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mHeightGap:I

    move v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 500
    :goto_af
    iget v6, v3, Lcom/android/launcher/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 501
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/android/launcher/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 503
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 488
    add-int/lit8 v24, v24, 0x1

    goto :goto_87

    .line 455
    .end local v3           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
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

    .line 470
    .restart local v21       #hSpaceLeft:I
    .restart local v27       #numLongGaps:I
    .restart local v28       #numShortGaps:I
    .restart local v31       #vSpaceLeft:I
    :cond_c7
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/CellLayout;->mWidthGap:I

    goto :goto_81

    .line 473
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_ce
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 475
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/CellLayout;->mWidthGap:I

    .line 477
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 479
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_ef

    .line 480
    div-int v6, v31, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/CellLayout;->mHeightGap:I

    goto :goto_81

    .line 482
    :cond_ef
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher/CellLayout;->mHeightGap:I

    goto :goto_81

    .line 496
    .restart local v3       #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mWidthGap:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/CellLayout;->mHeightGap:I

    move v14, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_af

    .line 506
    .end local v3           #lp:Lcom/android/launcher/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_10a
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 507
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

    .line 386
    iget-boolean v1, p0, Lcom/android/launcher/CellLayout;->mPortrait:Z

    .line 388
    .local v1, portrait:Z
    if-eqz v1, :cond_49

    iget v5, p0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    move v0, v5

    .line 389
    .local v0, hStartPadding:I
    :goto_9
    if-eqz v1, :cond_4d

    iget v5, p0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move v2, v5

    .line 391
    .local v2, vStartPadding:I
    :goto_e
    sub-int v5, p1, v0

    iget v6, p0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/android/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 392
    sub-int v5, p2, v2

    iget v6, p0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 394
    if-eqz v1, :cond_51

    iget v5, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v3, v5

    .line 395
    .local v3, xAxis:I
    :goto_27
    if-eqz v1, :cond_55

    iget v5, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v4, v5

    .line 397
    .local v4, yAxis:I
    :goto_2c
    aget v5, p3, v8

    if-gez v5, :cond_32

    aput v8, p3, v8

    .line 398
    :cond_32
    aget v5, p3, v8

    if-lt v5, v3, :cond_3a

    sub-int v5, v3, v9

    aput v5, p3, v8

    .line 399
    :cond_3a
    aget v5, p3, v9

    if-gez v5, :cond_40

    aput v8, p3, v9

    .line 400
    :cond_40
    aget v5, p3, v9

    if-lt v5, v4, :cond_48

    sub-int v5, v4, v9

    aput v5, p3, v9

    .line 401
    :cond_48
    return-void

    .line 388
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_49
    iget v5, p0, Lcom/android/launcher/CellLayout;->mLongAxisStartPadding:I

    move v0, v5

    goto :goto_9

    .line 389
    .restart local v0       #hStartPadding:I
    :cond_4d
    iget v5, p0, Lcom/android/launcher/CellLayout;->mShortAxisStartPadding:I

    move v2, v5

    goto :goto_e

    .line 394
    .restart local v2       #vStartPadding:I
    :cond_51
    iget v5, p0, Lcom/android/launcher/CellLayout;->mLongAxisCells:I

    move v3, v5

    goto :goto_27

    .line 395
    .restart local v3       #xAxis:I
    :cond_55
    iget v5, p0, Lcom/android/launcher/CellLayout;->mShortAxisCells:I

    move v4, v5

    goto :goto_2c
.end method

.method pointToCellRounded(II[I)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 410
    iget v0, p0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher/CellLayout;->pointToCellExact(II[I)V

    .line 411
    return-void
.end method

.method public rectToCell(II)[I
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 686
    iget v5, p0, Lcom/android/launcher/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher/CellLayout;->mWidthGap:I

    add-int v1, v5, v6

    .line 687
    .local v1, actualWidth:I
    iget v5, p0, Lcom/android/launcher/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher/CellLayout;->mHeightGap:I

    add-int v0, v5, v6

    .line 688
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 691
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 692
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 693
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
    .line 134
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 135
    if-eqz p1, :cond_10

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/launcher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 140
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_10
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 529
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 530
    invoke-virtual {p0, v1}, Lcom/android/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 531
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 533
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 535
    .end local v2           #view:Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 540
    return-void
.end method
