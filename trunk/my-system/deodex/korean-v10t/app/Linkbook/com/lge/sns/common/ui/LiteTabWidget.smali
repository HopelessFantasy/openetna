.class public Lcom/lge/sns/common/ui/LiteTabWidget;
.super Landroid/widget/LinearLayout;
.source "LiteTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/common/ui/LiteTabWidget$1;,
        Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;,
        Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    .line 43
    invoke-direct {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->initTabWidget()V

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/lge/sns/common/ui/LiteTabWidget;)Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectionChangedListener:Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->setOrientation(I)V

    .line 54
    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->setFocusable(Z)V

    .line 59
    invoke-virtual {p0, p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 7
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_16

    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f80

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 143
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 149
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;-><init>(Lcom/lge/sns/common/ui/LiteTabWidget;ILcom/lge/sns/common/ui/LiteTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 64
    iget v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 65
    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->invalidate()V

    .line 67
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, selectedChild:Landroid/view/View;
    iget-object v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 77
    iget-object v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 79
    iget-boolean v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mStripMoved:Z

    if-eqz v3, :cond_77

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 83
    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getHeight()I

    move-result v0

    .line 84
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iput-boolean v9, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mStripMoved:Z

    .line 99
    .end local v0           #myHeight:I
    .end local v1           #selBounds:Landroid/graphics/Rect;
    :cond_77
    iget-object v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v3, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-void
.end method

.method public focusCurrentTab(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 115
    iget v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    .line 118
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/lge/sns/common/ui/LiteTabWidget;->setCurrentTab(I)V

    .line 121
    if-eq v0, p1, :cond_e

    .line 122
    invoke-virtual {p0, p1}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 124
    :cond_e
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 168
    if-ne p1, p0, :cond_e

    if-eqz p2, :cond_e

    .line 169
    iget v1, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 184
    :cond_d
    :goto_d
    return-void

    .line 173
    :cond_e
    if-eqz p2, :cond_d

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, i:I
    :goto_11
    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 176
    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_27

    .line 177
    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->setCurrentTab(I)V

    .line 178
    iget-object v1, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectionChangedListener:Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_d

    .line 181
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mStripMoved:Z

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 50
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 104
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 112
    :cond_9
    :goto_9
    return-void

    .line 108
    :cond_a
    iget v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 109
    iput p1, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    .line 110
    iget v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 111
    iput-boolean v2, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mStripMoved:Z

    goto :goto_9
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildCount()I

    move-result v1

    .line 131
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 132
    invoke-virtual {p0, v2}, Lcom/lge/sns/common/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 135
    .end local v0           #child:Landroid/view/View;
    :cond_14
    return-void
.end method

.method setTabSelectionListener(Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lge/sns/common/ui/LiteTabWidget;->mSelectionChangedListener:Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;

    .line 165
    return-void
.end method
