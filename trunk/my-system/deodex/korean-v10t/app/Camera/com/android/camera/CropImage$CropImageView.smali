.class public Lcom/android/camera/CropImage$CropImageView;
.super Lcom/android/camera/ImageViewTouchBase;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropImageView"
.end annotation


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/android/camera/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    .line 117
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V
    .registers 15
    .parameter "hv"

    .prologue
    .line 283
    iget-object v1, p1, Lcom/android/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 285
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 286
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 288
    .local v2, height:F
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 289
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 291
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 292
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 294
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 295
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 296
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 298
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6f

    .line 299
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/android/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 300
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 301
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/camera/CropImage$CropImageView;->zoomTo(FFFF)V

    .line 304
    .end local v0           #coordinates:[F
    :cond_6f
    invoke-direct {p0, p1}, Lcom/android/camera/CropImage$CropImageView;->ensureVisible(Lcom/android/camera/HighlightView;)V

    .line 305
    return-void
.end method

.method private ensureVisible(Lcom/android/camera/HighlightView;)V
    .registers 12
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 267
    iget-object v6, p1, Lcom/android/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 269
    .local v6, r:Landroid/graphics/Rect;
    iget v7, p0, Lcom/android/camera/CropImage$CropImageView;->mLeft:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 270
    .local v1, panDeltaX1:I
    iget v7, p0, Lcom/android/camera/CropImage$CropImageView;->mRight:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 272
    .local v2, panDeltaX2:I
    iget v7, p0, Lcom/android/camera/CropImage$CropImageView;->mTop:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 273
    .local v4, panDeltaY1:I
    iget v7, p0, Lcom/android/camera/CropImage$CropImageView;->mBottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 275
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_37

    move v0, v1

    .line 276
    .local v0, panDeltaX:I
    :goto_2a
    if-eqz v4, :cond_39

    move v3, v4

    .line 278
    .local v3, panDeltaY:I
    :goto_2d
    if-nez v0, :cond_31

    if-eqz v3, :cond_36

    .line 279
    :cond_31
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/CropImage$CropImageView;->panBy(FF)V

    .line 280
    :cond_36
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_37
    move v0, v2

    .line 275
    goto :goto_2a

    .restart local v0       #panDeltaX:I
    :cond_39
    move v3, v5

    .line 276
    goto :goto_2d
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 160
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 161
    iget-object v3, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HighlightView;

    .line 162
    .local v1, hv:Lcom/android/camera/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/HighlightView;->setFocus(Z)V

    .line 163
    invoke-virtual {v1}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    .end local v1           #hv:Lcom/android/camera/HighlightView;
    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    iget-object v3, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 167
    iget-object v3, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HighlightView;

    .line 168
    .restart local v1       #hv:Lcom/android/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/HighlightView;->getHit(FF)I

    move-result v0

    .line 169
    .local v0, edge:I
    if-eq v0, v5, :cond_4b

    .line 170
    invoke-virtual {v1}, Lcom/android/camera/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_47

    .line 171
    invoke-virtual {v1, v5}, Lcom/android/camera/HighlightView;->setFocus(Z)V

    .line 172
    invoke-virtual {v1}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 177
    .end local v0           #edge:I
    .end local v1           #hv:Lcom/android/camera/HighlightView;
    :cond_47
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->invalidate()V

    .line 178
    return-void

    .line 166
    .restart local v0       #edge:I
    .restart local v1       #hv:Lcom/android/camera/HighlightView;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public add(Lcom/android/camera/HighlightView;)V
    .registers 3
    .parameter "hv"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->invalidate()V

    .line 326
    return-void
.end method

.method protected doesScrolling()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/android/camera/HighlightView;
    .registers 3
    .parameter "i"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/HighlightView;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/android/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 311
    iget-object v1, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HighlightView;

    invoke-virtual {v1, p1}, Lcom/android/camera/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 313
    :cond_1a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 103
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 104
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2d

    .line 105
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 106
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 108
    iget-boolean v2, v0, Lcom/android/camera/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_d

    .line 109
    invoke-direct {p0, v0}, Lcom/android/camera/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V

    goto :goto_d

    .line 113
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 182
    iget-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CropImage;

    .line 183
    .local v0, cropImage:Lcom/android/camera/CropImage;
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$000(Lcom/android/camera/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v11

    .line 263
    .end local p0
    :goto_d
    return v5

    .line 186
    .restart local p0
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_112

    .line 249
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_11c

    :cond_1c
    :goto_1c
    move v5, v10

    .line 263
    goto :goto_d

    .line 188
    :pswitch_1e
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$100(Lcom/android/camera/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 189
    invoke-direct {p0, p1}, Lcom/android/camera/CropImage$CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_15

    .line 191
    :cond_28
    const/4 v3, 0x0

    .local v3, i:I
    :goto_29
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_15

    .line 192
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightView;

    .line 193
    .local v2, hv:Lcom/android/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/HighlightView;->getHit(FF)I

    move-result v1

    .line 194
    .local v1, edge:I
    if-eq v1, v10, :cond_66

    .line 195
    iput v1, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionEdge:I

    .line 196
    iput-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/camera/CropImage$CropImageView;->mLastX:F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/camera/CropImage$CropImageView;->mLastY:F

    .line 199
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    const/16 v6, 0x20

    if-ne v1, v6, :cond_63

    sget-object v6, Lcom/android/camera/HighlightView$ModifyMode;->Move:Lcom/android/camera/HighlightView$ModifyMode;

    :goto_5f
    invoke-virtual {v5, v6}, Lcom/android/camera/HighlightView;->setMode(Lcom/android/camera/HighlightView$ModifyMode;)V

    goto :goto_15

    :cond_63
    sget-object v6, Lcom/android/camera/HighlightView$ModifyMode;->Grow:Lcom/android/camera/HighlightView$ModifyMode;

    goto :goto_5f

    .line 191
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 208
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/android/camera/HighlightView;
    .end local v3           #i:I
    :pswitch_69
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$100(Lcom/android/camera/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 209
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_70
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_c2

    .line 210
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightView;

    .line 211
    .restart local v2       #hv:Lcom/android/camera/HighlightView;
    invoke-virtual {v2}, Lcom/android/camera/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 212
    iput-object v2, v0, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    .line 213
    const/4 v4, 0x0

    .local v4, j:I
    :goto_89
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a2

    .line 214
    if-ne v4, v3, :cond_96

    .line 213
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 216
    :cond_96
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/HighlightView;

    invoke-virtual {v5, v10}, Lcom/android/camera/HighlightView;->setHidden(Z)V

    goto :goto_93

    .line 218
    :cond_a2
    invoke-direct {p0, v2}, Lcom/android/camera/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V

    .line 219
    iget-object p0, p0, Lcom/android/camera/CropImage$CropImageView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/camera/CropImage;

    invoke-static {p0, v11}, Lcom/android/camera/CropImage;->access$102(Lcom/android/camera/CropImage;Z)Z

    move v5, v10

    .line 220
    goto/16 :goto_d

    .line 209
    .end local v4           #j:I
    .restart local p0
    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 223
    .end local v2           #hv:Lcom/android/camera/HighlightView;
    .end local v3           #i:I
    :cond_b2
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    if-eqz v5, :cond_c2

    .line 224
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    invoke-direct {p0, v5}, Lcom/android/camera/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V

    .line 225
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    sget-object v6, Lcom/android/camera/HighlightView$ModifyMode;->None:Lcom/android/camera/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/HighlightView;->setMode(Lcom/android/camera/HighlightView$ModifyMode;)V

    .line 227
    :cond_c2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    goto/16 :goto_15

    .line 230
    :pswitch_c7
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$100(Lcom/android/camera/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 231
    invoke-direct {p0, p1}, Lcom/android/camera/CropImage$CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    .line 232
    :cond_d2
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    if-eqz v5, :cond_15

    .line 233
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    iget v6, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/camera/CropImage$CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/camera/CropImage$CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/HighlightView;->handleMotion(IFF)V

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/camera/CropImage$CropImageView;->mLastX:F

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/camera/CropImage$CropImageView;->mLastY:F

    .line 243
    iget-object v5, p0, Lcom/android/camera/CropImage$CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    invoke-direct {p0, v5}, Lcom/android/camera/CropImage$CropImageView;->ensureVisible(Lcom/android/camera/HighlightView;)V

    goto/16 :goto_15

    .line 251
    :pswitch_fe
    invoke-virtual {p0, v10, v10, v10}, Lcom/android/camera/CropImage$CropImageView;->center(ZZZ)V

    goto/16 :goto_1c

    .line 258
    :pswitch_103
    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    .line 259
    invoke-virtual {p0, v10, v10, v11}, Lcom/android/camera/CropImage$CropImageView;->center(ZZZ)V

    goto/16 :goto_1c

    .line 186
    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_69
        :pswitch_c7
    .end packed-switch

    .line 249
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_103
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .registers 6
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 153
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 154
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 155
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 157
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_1f
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected usePerfectFitBitmap()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected zoomIn()V
    .registers 5

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/camera/ImageViewTouchBase;->zoomIn()V

    .line 129
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 130
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 131
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    goto :goto_9

    .line 133
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_22
    return-void
.end method

.method protected zoomOut()V
    .registers 5

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/camera/ImageViewTouchBase;->zoomOut()V

    .line 137
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 138
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 139
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    goto :goto_9

    .line 141
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_22
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 8
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 121
    iget-object v2, p0, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 122
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    goto :goto_9

    .line 125
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_22
    return-void
.end method
