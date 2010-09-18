.class public Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;
.super Landroid/view/ViewGroup;
.source "PictureLayout.java"


# instance fields
.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->mPicture:Landroid/graphics/Picture;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->mPicture:Landroid/graphics/Picture;

    .line 39
    return-void
.end method

.method private drawPict(Landroid/graphics/Canvas;IIIIFF)V
    .registers 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "sx"
    .parameter "sy"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    invoke-virtual {p1, v3, v3, p4, p5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 114
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 115
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, p6, p7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 116
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 57
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 125
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 126
    .local v4, x:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    .line 131
    .local v5, y:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 132
    const/4 v3, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 133
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    move-object v0, p0

    move-object v1, p1

    move v3, v5

    invoke-direct/range {v0 .. v7}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 134
    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    move-object v2, p0

    move-object v3, p1

    move v6, v4

    move v7, v5

    invoke-direct/range {v2 .. v9}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 136
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 79
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 6
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getLeft()I

    move-result v0

    aput v0, p1, v2

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getTop()I

    move-result v1

    aput v1, p1, v0

    .line 142
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 148
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 150
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, v3, :cond_2b

    .line 151
    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_28

    .line 153
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getPaddingLeft()I

    move-result v1

    .line 154
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getPaddingTop()I

    move-result v2

    .line 155
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 150
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 161
    .end local v0           #child:Landroid/view/View;
    :cond_2b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildCount()I

    move-result v1

    .line 86
    .local v1, count:I
    const/4 v4, 0x0

    .line 87
    .local v4, maxHeight:I
    const/4 v5, 0x0

    .line 89
    .local v5, maxWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v1, :cond_1b

    .line 90
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_18

    .line 92
    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->measureChild(Landroid/view/View;II)V

    .line 89
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 96
    .end local v0           #child:Landroid/view/View;
    :cond_1b
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 97
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 99
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_45

    .line 101
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 102
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 105
    :cond_45
    invoke-static {v5, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->resolveSize(II)I

    move-result v6

    invoke-static {v4, p2}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->resolveSize(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/lge/hiddenmenu/device_test/touch_test/PictureLayout;->setMeasuredDimension(II)V

    .line 107
    return-void
.end method
