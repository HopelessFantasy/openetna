.class public Lcom/android/camera/ActionMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuButton.java"


# static fields
.field private static final CORNER_RADIUS:F = 8.0f

.field private static final PADDING_H:F = 5.0f

.field private static final PADDING_V:F = 1.0f

.field private static final RESTRICTED_STATE_SET:[I


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private mRestricted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/ActionMenuButton;->RESTRICTED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActionMenuButton;->mRect:Landroid/graphics/RectF;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActionMenuButton;->mRestricted:Z

    .line 47
    invoke-direct {p0}, Lcom/android/camera/ActionMenuButton;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActionMenuButton;->mRect:Landroid/graphics/RectF;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActionMenuButton;->mRestricted:Z

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ActionMenuButton;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActionMenuButton;->mRect:Landroid/graphics/RectF;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActionMenuButton;->mRestricted:Z

    .line 57
    invoke-direct {p0}, Lcom/android/camera/ActionMenuButton;->init()V

    .line 58
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/camera/ActionMenuButton;->setFocusable(Z)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ActionMenuButton;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/android/camera/ActionMenuButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x4100

    const/high16 v8, 0x40a0

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 96
    .local v0, layout:Landroid/text/Layout;
    iget-object v2, p0, Lcom/android/camera/ActionMenuButton;->mRect:Landroid/graphics/RectF;

    .line 97
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->getCompoundPaddingLeft()I

    move-result v1

    .line 98
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->getExtendedPaddingTop()I

    move-result v3

    .line 100
    .local v3, top:I
    int-to-float v4, v1

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    add-float/2addr v4, v5

    sub-float/2addr v4, v8

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v5, v5

    sub-float/2addr v5, v10

    int-to-float v6, v1

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v6, v8

    iget v7, p0, Lcom/android/camera/ActionMenuButton;->mScrollX:I

    iget v8, p0, Lcom/android/camera/ActionMenuButton;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ActionMenuButton;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    add-float/2addr v7, v10

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    iget-object v4, p0, Lcom/android/camera/ActionMenuButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v11, v11, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 107
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->invalidate()V

    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 91
    return-void
.end method

.method public isRestricted()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/ActionMenuButton;->mRestricted:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 80
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 81
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 82
    sget-object v1, Lcom/android/camera/ActionMenuButton;->RESTRICTED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/camera/ActionMenuButton;->mergeDrawableStates([I[I)[I

    .line 84
    :cond_11
    return-object v0
.end method

.method public setRestricted(Z)V
    .registers 3
    .parameter "restricted"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/ActionMenuButton;->mRestricted:Z

    if-eq p1, v0, :cond_9

    .line 69
    iput-boolean p1, p0, Lcom/android/camera/ActionMenuButton;->mRestricted:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ActionMenuButton;->refreshDrawableState()V

    .line 72
    :cond_9
    return-void
.end method
