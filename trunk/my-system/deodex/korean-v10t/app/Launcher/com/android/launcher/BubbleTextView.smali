.class public Lcom/android/launcher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# static fields
.field private static final CORNER_RADIUS:F = 8.0f

.field private static final PADDING_H:F = 5.0f

.field private static final PADDING_V:F = 1.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mCornerRadius:F

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 49
    invoke-direct {p0}, Lcom/android/launcher/BubbleTextView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 54
    invoke-direct {p0}, Lcom/android/launcher/BubbleTextView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 59
    invoke-direct {p0}, Lcom/android/launcher/BubbleTextView;->init()V

    .line 60
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/launcher/BubbleTextView;->setFocusable(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v1, p0, Lcom/android/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v1, p0, Lcom/android/launcher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v0, scale:F
    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/BubbleTextView;->mCornerRadius:F

    .line 73
    const/high16 v1, 0x40a0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/BubbleTextView;->mPaddingH:F

    .line 75
    const/high16 v1, 0x3f80

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/BubbleTextView;->mPaddingV:F

    .line 76
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    .line 104
    iget v4, p0, Lcom/android/launcher/BubbleTextView;->mScrollX:I

    .line 105
    .local v4, scrollX:I
    iget v5, p0, Lcom/android/launcher/BubbleTextView;->mScrollY:I

    .line 107
    .local v5, scrollY:I
    iget-boolean v7, p0, Lcom/android/launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_1c

    .line 108
    iget v7, p0, Lcom/android/launcher/BubbleTextView;->mRight:I

    iget v8, p0, Lcom/android/launcher/BubbleTextView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher/BubbleTextView;->mBottom:I

    iget v9, p0, Lcom/android/launcher/BubbleTextView;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iput-boolean v12, p0, Lcom/android/launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 112
    :cond_1c
    or-int v7, v4, v5

    if-nez v7, :cond_72

    .line 113
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 122
    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Lcom/android/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 123
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 124
    .local v2, left:I
    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v6

    .line 126
    .local v6, top:I
    int-to-float v7, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/launcher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v7, v8

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, p0, Lcom/android/launcher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher/BubbleTextView;->mPaddingH:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher/BubbleTextView;->mScrollX:I

    iget v11, p0, Lcom/android/launcher/BubbleTextView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget v11, p0, Lcom/android/launcher/BubbleTextView;->mPaddingV:F

    add-float/2addr v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget v7, p0, Lcom/android/launcher/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/android/launcher/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/android/launcher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 133
    return-void

    .line 115
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #left:I
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v6           #top:I
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_72
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_23
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 97
    :cond_11
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 98
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/launcher/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_10

    iget v0, p0, Lcom/android/launcher/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_10

    iget v0, p0, Lcom/android/launcher/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_10

    iget v0, p0, Lcom/android/launcher/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_13

    .line 81
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 83
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
