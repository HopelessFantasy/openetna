.class public Lcom/lge/homecube/MenuTextView;
.super Landroid/widget/TextView;
.source "MenuTextView.java"


# static fields
.field private static mLauncher:Lcom/lge/homecube/Launcher;


# instance fields
.field private mBackground_over:Landroid/graphics/drawable/Drawable;

.field private mBackground_over_x:I

.field private mBackground_over_y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/homecube/MenuTextView;->mLauncher:Lcom/lge/homecube/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    check-cast p1, Lcom/lge/homecube/Launcher;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/homecube/MenuTextView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 50
    invoke-direct {p0}, Lcom/lge/homecube/MenuTextView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object v1, Lcom/lge/homecube/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over_x:I

    .line 60
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over_y:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-direct {p0}, Lcom/lge/homecube/MenuTextView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0}, Lcom/lge/homecube/MenuTextView;->init()V

    .line 68
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/MenuTextView;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/lge/homecube/MenuTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x50

    .line 113
    iget v7, p0, Lcom/lge/homecube/MenuTextView;->mScrollX:I

    .line 114
    .local v7, scrollX:I
    iget v8, p0, Lcom/lge/homecube/MenuTextView;->mScrollY:I

    .line 115
    .local v8, scrollY:I
    iget v5, p0, Lcom/lge/homecube/MenuTextView;->mLeft:I

    .line 116
    .local v5, left:I
    iget v6, p0, Lcom/lge/homecube/MenuTextView;->mRight:I

    .line 118
    .local v6, right:I
    iget-object v0, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    .line 121
    .local v0, background_over:Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x50

    .line 122
    .local v2, background_over_width:I
    const/16 v1, 0x5f

    .line 125
    .local v1, background_over_height:I
    iget v3, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over_x:I

    .line 126
    .local v3, background_over_x:I
    iget v4, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over_y:I

    .line 138
    .local v4, background_over_y:I
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 140
    sub-int v9, v6, v5

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    add-int/2addr v9, v3

    int-to-float v9, v9

    add-int v10, v8, v4

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    const/16 v9, 0x5f

    invoke-virtual {v0, v12, v12, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    sub-int v9, v6, v5

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    add-int/2addr v9, v3

    neg-int v9, v9

    int-to-float v9, v9

    add-int v10, v8, v4

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

    .line 105
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 106
    invoke-virtual {p0}, Lcom/lge/homecube/MenuTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 108
    :cond_11
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 109
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 147
    sput-object p1, Lcom/lge/homecube/MenuTextView;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 148
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/homecube/MenuTextView;->mBackground_over:Landroid/graphics/drawable/Drawable;

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
