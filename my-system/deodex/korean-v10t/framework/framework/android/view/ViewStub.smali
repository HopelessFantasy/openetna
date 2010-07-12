.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "layoutResource"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 84
    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 85
    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    .line 68
    iput v2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 94
    sget-object v1, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 98
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mID:I

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 110
    iput-object p1, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    .line 111
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 186
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 182
    return-void
.end method

.method public getInflatedId()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 10

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 216
    .local v6, viewParent:Landroid/view/ViewParent;
    if-eqz v6, :cond_4f

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4f

    .line 217
    iget v7, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v7, :cond_47

    .line 218
    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 219
    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v7, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 220
    .local v1, factory:Landroid/view/LayoutInflater;
    iget v7, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 223
    .local v5, view:Landroid/view/View;
    iget v7, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_29

    .line 224
    iget v7, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    .line 227
    :cond_29
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 228
    .local v2, index:I
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 230
    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 231
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_43

    .line 232
    invoke-virtual {v4, v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :goto_39
    iget-object v7, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v7, :cond_42

    .line 238
    iget-object v7, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v7, p0, v5}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 241
    :cond_42
    return-object v5

    .line 234
    :cond_43
    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_39

    .line 243
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #index:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #parent:Landroid/view/ViewGroup;
    .end local v5           #view:Landroid/view/View;
    :cond_47
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ViewStub must have a valid layoutResource"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 246
    :cond_4f
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    .line 178
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2
    .parameter "inflatedId"

    .prologue
    .line 140
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 141
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2
    .parameter "layoutResource"

    .prologue
    .line 172
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 173
    return-void
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .registers 2
    .parameter "inflateListener"

    .prologue
    .line 259
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 260
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    if-eqz p1, :cond_8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 202
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 204
    :cond_b
    return-void
.end method
