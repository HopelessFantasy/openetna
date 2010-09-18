.class public Lcom/lge/homecube/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# static fields
.field private static final CORNER_RADIUS:F = 8.0f

.field private static final PADDING_H:F = 5.0f

.field private static final PADDING_V:F = 1.0f

.field private static mLauncher:Lcom/lge/homecube/Launcher;


# instance fields
.field private mBackground_over:Landroid/graphics/drawable/Drawable;

.field private mBackground_over_x:I

.field private mBackground_over_y:I

.field private mCornerRadius:F

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/homecube/BubbleTextView;->mLauncher:Lcom/lge/homecube/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 68
    check-cast p1, Lcom/lge/homecube/Launcher;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/homecube/BubbleTextView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 69
    invoke-direct {p0}, Lcom/lge/homecube/BubbleTextView;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 75
    sget-object v1, Lcom/lge/homecube/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/BubbleTextView;->mBackground_over_x:I

    .line 79
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/BubbleTextView;->mBackground_over_y:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-direct {p0}, Lcom/lge/homecube/BubbleTextView;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 86
    invoke-direct {p0}, Lcom/lge/homecube/BubbleTextView;->init()V

    .line 87
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-virtual {p0, v3}, Lcom/lge/homecube/BubbleTextView;->setFocusable(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/homecube/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/homecube/BubbleTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v1, p0, Lcom/lge/homecube/BubbleTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lge/homecube/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v1, p0, Lcom/lge/homecube/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lge/homecube/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/homecube/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 113
    .local v0, scale:F
    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/homecube/BubbleTextView;->mCornerRadius:F

    .line 114
    const/high16 v1, 0x40a0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/homecube/BubbleTextView;->mPaddingH:F

    .line 116
    const/high16 v1, 0x3f80

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/homecube/BubbleTextView;->mPaddingV:F

    .line 117
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mScrollX:I

    move v15, v0

    .line 143
    .local v15, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mScrollY:I

    move/from16 v16, v0

    .line 144
    .local v16, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mLeft:I

    move v11, v0

    .line 145
    .local v11, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mRight:I

    move v14, v0

    .line 147
    .local v14, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/BubbleTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    .line 150
    .local v5, background_over:Landroid/graphics/drawable/Drawable;
    const/16 v7, 0x4e

    .line 151
    .local v7, background_over_width:I
    const/16 v6, 0x58

    .line 154
    .local v6, background_over_height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mBackground_over_x:I

    move v8, v0

    .line 155
    .local v8, background_over_x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mBackground_over_y:I

    move v9, v0

    .line 166
    .local v9, background_over_y:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 167
    .local v10, layout:Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/BubbleTextView;->mRect:Landroid/graphics/RectF;

    move-object v13, v0

    .line 168
    .local v13, rect:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v12

    .line 169
    .local v12, left1:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/BubbleTextView;->getExtendedPaddingTop()I

    move-result v17

    .line 171
    .local v17, top:I
    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mPaddingH:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mPaddingV:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v21

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mPaddingH:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mScrollX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mRight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mLeft:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v21

    add-int v21, v21, v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mPaddingV:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mCornerRadius:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/BubbleTextView;->mCornerRadius:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v13

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 177
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 179
    sub-int v18, v14, v11

    const/16 v19, 0x4e

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    add-int v18, v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v16, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 180
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x4e

    const/16 v21, 0x58

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    sub-int v18, v14, v11

    const/16 v19, 0x4e

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    add-int v18, v18, v8

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v16, v9

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 184
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/homecube/BubbleTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    .line 134
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 135
    invoke-virtual {p0}, Lcom/lge/homecube/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    :cond_11
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 138
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 187
    sput-object p1, Lcom/lge/homecube/BubbleTextView;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 188
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/homecube/BubbleTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

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
