.class public Lcom/android/launcher/AllAppsGridView;
.super Landroid/widget/GridView;
.source "AllAppsGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher/DragSource;


# instance fields
.field private mDragger:Lcom/android/launcher/DragController;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mPaint:Landroid/graphics/Paint;

.field private mTexture:Landroid/graphics/Bitmap;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/AllAppsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v2, Lcom/android/launcher/R$styleable;->AllAppsGridView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 53
    .local v1, textureId:I
    if-eqz v1, :cond_36

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    .line 55
    iget-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/launcher/AllAppsGridView;->mTextureWidth:I

    .line 56
    iget-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/launcher/AllAppsGridView;->mTextureHeight:I

    .line 58
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 61
    :cond_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    .line 73
    .local v2, texture:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher/AllAppsGridView;->mPaint:Landroid/graphics/Paint;

    .line 75
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/launcher/AllAppsGridView;->getWidth()I

    move-result v5

    .line 76
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/launcher/AllAppsGridView;->getHeight()I

    move-result v0

    .line 78
    .local v0, height:I
    iget v4, p0, Lcom/android/launcher/AllAppsGridView;->mTextureWidth:I

    .line 79
    .local v4, textureWidth:I
    iget v3, p0, Lcom/android/launcher/AllAppsGridView;->mTextureHeight:I

    .line 81
    .local v3, textureHeight:I
    const/4 v6, 0x0

    .line 84
    .local v6, x:I
    :goto_11
    if-ge v6, v5, :cond_1f

    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, y:I
    :goto_14
    if-ge v7, v0, :cond_1d

    .line 87
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v2, v8, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    add-int/2addr v7, v3

    goto :goto_14

    .line 90
    :cond_1d
    add-int/2addr v6, v4

    goto :goto_11

    .line 93
    .end local v7           #y:I
    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 120
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 66
    invoke-virtual {p0, p0}, Lcom/android/launcher/AllAppsGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-virtual {p0, p0}, Lcom/android/launcher/AllAppsGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 68
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 97
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 98
    .local v0, app:Lcom/android/launcher/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher/AllAppsGridView;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, v0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_9

    .line 103
    const/4 v2, 0x0

    .line 112
    :goto_8
    return v2

    .line 106
    :cond_9
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 107
    .local v0, app:Lcom/android/launcher/ApplicationInfo;
    new-instance v1, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher/ApplicationInfo;-><init>(Lcom/android/launcher/ApplicationInfo;)V

    .line 109
    .end local v0           #app:Lcom/android/launcher/ApplicationInfo;
    .local v1, app:Lcom/android/launcher/ApplicationInfo;
    iget-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mDragger:Lcom/android/launcher/DragController;

    invoke-interface {v2, p2, p0, v1, v3}, Lcom/android/launcher/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher/DragSource;Ljava/lang/Object;I)V

    .line 110
    iget-object v2, p0, Lcom/android/launcher/AllAppsGridView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->closeAllApplications()V

    move v2, v3

    .line 112
    goto :goto_8
.end method

.method public setDragger(Lcom/android/launcher/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/launcher/AllAppsGridView;->mDragger:Lcom/android/launcher/DragController;

    .line 117
    return-void
.end method

.method setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/launcher/AllAppsGridView;->mLauncher:Lcom/android/launcher/Launcher;

    .line 124
    return-void
.end method
