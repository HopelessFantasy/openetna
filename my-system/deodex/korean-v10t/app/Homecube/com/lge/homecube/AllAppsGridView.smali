.class public Lcom/lge/homecube/AllAppsGridView;
.super Landroid/widget/GridView;
.source "AllAppsGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/lge/homecube/DragSource;


# instance fields
.field private cell_height:I

.field private cell_width:I

.field private final colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private index:I

.field private lastAppArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

.field private lastIndex:I

.field private lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

.field private mColumnNum:I

.field private mDragger:Lcom/lge/homecube/DragController;

.field private mLauncher:Lcom/lge/homecube/Launcher;

.field private final selectObjColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/homecube/AllAppsGridView;->index:I

    .line 54
    iput v1, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    .line 55
    iput v1, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    .line 58
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/AllAppsGridView;->selectObjColor:I

    .line 59
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/lge/homecube/AllAppsGridView;->selectObjColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 60
    iput-object v3, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    .line 62
    iput-object v3, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/homecube/AllAppsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/homecube/AllAppsGridView;->index:I

    .line 54
    iput v1, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    .line 55
    iput v1, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    .line 58
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/AllAppsGridView;->selectObjColor:I

    .line 59
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/lge/homecube/AllAppsGridView;->selectObjColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 60
    iput-object v3, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    .line 62
    iput-object v3, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    .line 89
    return-void
.end method

.method private changeToSelectionObjColor(Lcom/lge/homecube/MenuTextView;Ljava/util/ArrayList;Lcom/lge/homecube/ApplicationInfo;I)V
    .registers 8
    .parameter "currSelectionItem"
    .parameter
    .parameter "appInfo"
    .parameter "appArrayIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/homecube/MenuTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;",
            "Lcom/lge/homecube/ApplicationInfo;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, arrayAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/lge/homecube/MenuTextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v0, viewDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lge/homecube/MenuTextView;->setDrawingCacheEnabled(Z)V

    .line 232
    iget-object v1, p0, Lcom/lge/homecube/AllAppsGridView;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 233
    invoke-virtual {p1, v0}, Lcom/lge/homecube/MenuTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v1, p3, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/lge/homecube/AllAppsGridView;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 236
    invoke-virtual {p2, p4, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    .line 239
    return-void
.end method

.method private setToOriginalViewColor()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    invoke-virtual {v0, v3}, Lcom/lge/homecube/MenuTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    iget-object v0, v0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 221
    iget-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppArrayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/homecube/AllAppsGridView;->lastIndex:I

    iget-object v2, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    iput-object v3, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    .line 225
    iput-object v3, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    .line 226
    return-void
.end method


# virtual methods
.method public DropOnMenu(FFLjava/lang/Object;)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 122
    return-void
.end method

.method public getIndex(III)I
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "GridHeight"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getChildCount()I

    move-result v0

    .line 195
    .local v0, count:I
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/lge/homecube/AllAppsGridView;->mColumnNum:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    .line 196
    const/16 v3, 0x62

    iput v3, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    .line 197
    iget v3, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    div-int/lit8 v2, v3, 0x4

    .line 198
    .local v2, offset_y:I
    iget v3, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    div-int/lit8 v1, v3, 0x4

    .line 200
    .local v1, offset_x:I
    add-int v3, p2, v2

    iget v4, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v4, p1, v1

    iget v5, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/lge/homecube/AllAppsGridView;->index:I

    .line 202
    iget v3, p0, Lcom/lge/homecube/AllAppsGridView;->index:I

    if-ge v0, v3, :cond_36

    move v3, v0

    .line 205
    :goto_35
    return v3

    :cond_36
    iget v3, p0, Lcom/lge/homecube/AllAppsGridView;->index:I

    goto :goto_35
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->refreshGroupViewItems()V

    .line 178
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 93
    invoke-virtual {p0, p0}, Lcom/lge/homecube/AllAppsGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    invoke-virtual {p0, p0}, Lcom/lge/homecube/AllAppsGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 95
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 127
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 128
    .local v0, app:Lcom/lge/homecube/ApplicationInfo;
    iget-object v1, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v2, v0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 16
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
    const v9, 0x7f09000a

    const/16 v8, 0x3c

    const/4 v7, 0x0

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_e

    move v5, v7

    .line 166
    :goto_d
    return v5

    .line 137
    :cond_e
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 138
    .local v0, app:Lcom/lge/homecube/ApplicationInfo;
    new-instance v1, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/lge/homecube/ApplicationInfo;-><init>(Lcom/lge/homecube/ApplicationInfo;)V

    .line 140
    .end local v0           #app:Lcom/lge/homecube/ApplicationInfo;
    .local v1, app:Lcom/lge/homecube/ApplicationInfo;
    iput p3, v1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 142
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget v6, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    iput v6, v5, Lcom/lge/homecube/Launcher;->mDraggedItemGrid:I

    .line 143
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v5, p2}, Lcom/lge/homecube/Launcher;->setView(Landroid/view/View;)V

    .line 144
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v5, p2, v1, v7}, Lcom/lge/homecube/Launcher;->startItemDrag(Landroid/view/View;Ljava/lang/Object;I)V

    .line 145
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v5, v7}, Lcom/lge/homecube/Launcher;->setAllAppsGridViewDrawingCacheEnabled(Z)V

    .line 149
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v5, v5, Lcom/lge/homecube/Launcher;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v5}, Lcom/lge/homecube/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 155
    .local v2, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 156
    .local v4, p:Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v5, v5, Lcom/lge/homecube/Launcher;->mGotoIdleString:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 158
    .local v3, l:F
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    sub-int/2addr v5, v8

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7e

    .line 159
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v5, v5, Lcom/lge/homecube/Launcher;->mGotoIdleString:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 164
    :goto_75
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v5, v5, Lcom/lge/homecube/Launcher;->mGotoIdleString:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 166
    const/4 v5, 0x1

    goto :goto_d

    .line 162
    :cond_7e
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v5, v5, Lcom/lge/homecube/Launcher;->mGotoIdleString:Landroid/widget/TextView;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_75
.end method

.method public refreshGroupViewItems()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    if-eqz v0, :cond_b

    .line 213
    invoke-direct {p0}, Lcom/lge/homecube/AllAppsGridView;->setToOriginalViewColor()V

    .line 215
    :cond_b
    return-void
.end method

.method public setColumNum(I)V
    .registers 2
    .parameter "num"

    .prologue
    .line 277
    iput p1, p0, Lcom/lge/homecube/AllAppsGridView;->mColumnNum:I

    .line 279
    return-void
.end method

.method public setDragger(Lcom/lge/homecube/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/homecube/AllAppsGridView;->mDragger:Lcom/lge/homecube/DragController;

    .line 172
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lge/homecube/AllAppsGridView;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 182
    return-void
.end method

.method public updateMoveSelecionView(Ljava/util/ArrayList;II)V
    .registers 12
    .parameter
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, appInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 246
    .local v2, dragInfo:Lcom/lge/homecube/ApplicationInfo;
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/lge/homecube/AllAppsGridView;->mColumnNum:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    .line 247
    const/16 v5, 0x62

    iput v5, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    .line 248
    iget v5, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    div-int/lit8 v4, v5, 0x4

    .line 249
    .local v4, offset_y:I
    iget v5, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    div-int/lit8 v3, v5, 0x4

    .line 250
    .local v3, offset_x:I
    add-int v5, p3, v4

    iget v6, p0, Lcom/lge/homecube/AllAppsGridView;->cell_height:I

    div-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    add-int v6, p2, v3

    iget v7, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/homecube/AllAppsGridView;->cell_width:I

    div-int v0, v5, v6

    .line 253
    .local v0, Index:I
    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    if-eqz v5, :cond_37

    .line 254
    invoke-direct {p0}, Lcom/lge/homecube/AllAppsGridView;->setToOriginalViewColor()V

    .line 257
    :cond_37
    invoke-virtual {p0, v0}, Lcom/lge/homecube/AllAppsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/MenuTextView;

    .line 258
    .local v1, currViewItem:Lcom/lge/homecube/MenuTextView;
    if-nez v1, :cond_40

    .line 273
    :cond_3f
    :goto_3f
    return-void

    .line 260
    :cond_40
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getChildCount()I

    move-result v5

    if-lt v0, v5, :cond_4d

    .line 261
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsGridView;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int v0, v5, v6

    .line 263
    :cond_4d
    if-ltz v0, :cond_5b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dragInfo:Lcom/lge/homecube/ApplicationInfo;
    check-cast v2, Lcom/lge/homecube/ApplicationInfo;

    .line 265
    .restart local v2       #dragInfo:Lcom/lge/homecube/ApplicationInfo;
    :cond_5b
    if-eqz v2, :cond_3f

    if-eqz v1, :cond_3f

    .line 267
    iput-object v1, p0, Lcom/lge/homecube/AllAppsGridView;->lastVisitedViewItem:Lcom/lge/homecube/MenuTextView;

    .line 268
    iput-object v2, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppInfo:Lcom/lge/homecube/ApplicationInfo;

    .line 269
    iput-object p1, p0, Lcom/lge/homecube/AllAppsGridView;->lastAppArrayList:Ljava/util/ArrayList;

    .line 270
    iput v0, p0, Lcom/lge/homecube/AllAppsGridView;->lastIndex:I

    .line 271
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/lge/homecube/AllAppsGridView;->changeToSelectionObjColor(Lcom/lge/homecube/MenuTextView;Ljava/util/ArrayList;Lcom/lge/homecube/ApplicationInfo;I)V

    goto :goto_3f
.end method
