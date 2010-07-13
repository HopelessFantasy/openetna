.class public Lcom/android/phone/ButtonGridLayout;
.super Landroid/view/ViewGroup;
.source "ButtonGridLayout.java"


# instance fields
.field private final mColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->mColumns:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->mColumns:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->mColumns:I

    .line 38
    return-void
.end method

.method private getRows()I
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/phone/ButtonGridLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 29
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    move/from16 v16, v0

    .line 43
    .local v16, y:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/ButtonGridLayout;->getRows()I

    move-result v12

    .line 44
    .local v12, rows:I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 45
    .local v7, child0:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/ButtonGridLayout;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/ButtonGridLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int v17, v19, v12

    .line 46
    .local v17, yInc:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/ButtonGridLayout;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/ButtonGridLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v14, v19, 0x3

    .line 47
    .local v14, xInc:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 48
    .local v9, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 49
    .local v8, childHeight:I
    sub-int v19, v14, v9

    div-int/lit8 v15, v19, 0x2

    .line 50
    .local v15, xOffset:I
    sub-int v19, v17, v8

    div-int/lit8 v18, v19, 0x2

    .line 52
    .local v18, yOffset:I
    const/4 v11, 0x0

    .local v11, row:I
    :goto_51
    if-ge v11, v12, :cond_95

    .line 53
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    move v13, v0

    .line 54
    .local v13, x:I
    const/4 v10, 0x0

    .local v10, col:I
    :goto_59
    const/16 v19, 0x3

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_6d

    .line 55
    mul-int/lit8 v19, v11, 0x3

    add-int v5, v19, v10

    .line 56
    .local v5, cell:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/ButtonGridLayout;->getChildCount()I

    move-result v19

    move v0, v5

    move/from16 v1, v19

    if-lt v0, v1, :cond_72

    .line 65
    .end local v5           #cell:I
    :cond_6d
    add-int v16, v16, v17

    .line 52
    add-int/lit8 v11, v11, 0x1

    goto :goto_51

    .line 59
    .restart local v5       #cell:I
    :cond_72
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 60
    .local v6, child:Landroid/view/View;
    add-int v19, v13, v15

    add-int v20, v16, v18

    add-int v21, v13, v15

    add-int v21, v21, v9

    add-int v22, v16, v18

    add-int v22, v22, v8

    move-object v0, v6

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 63
    add-int/2addr v13, v14

    .line 54
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 67
    .end local v5           #cell:I
    .end local v6           #child:Landroid/view/View;
    .end local v10           #col:I
    .end local v13           #x:I
    :cond_95
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 75
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingRight:I

    add-int v5, v6, v7

    .line 76
    .local v5, width:I
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingBottom:I

    add-int v3, v6, v7

    .line 79
    .local v3, height:I
    invoke-virtual {p0, v8}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 82
    .local v2, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 84
    .local v1, childHeight:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_1d
    invoke-virtual {p0}, Lcom/android/phone/ButtonGridLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2d

    .line 85
    invoke-virtual {p0, v8}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/view/View;->measure(II)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 88
    :cond_2d
    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v5, v6

    .line 89
    invoke-direct {p0}, Lcom/android/phone/ButtonGridLayout;->getRows()I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v3, v6

    .line 91
    invoke-static {v5, p1}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v5

    .line 92
    invoke-static {v3, p2}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v3

    .line 93
    invoke-virtual {p0, v5, v3}, Lcom/android/phone/ButtonGridLayout;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method
