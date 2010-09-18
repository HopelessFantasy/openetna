.class public Lcom/lge/render/FCPhotoItem;
.super Lcom/lge/render/FCDrawItem;
.source "FCPhotoItem.java"


# instance fields
.field private m_BtnItem:Lcom/lge/render/FCBtnItem;

.field private m_Land:I

.field private m_LoadImage:Z

.field private m_Position:J

.field private m_Shadow:Landroid/graphics/Bitmap;

.field private m_UID:J

.field private m_bDrawShadow:Z

.field private m_bLoaded:Z

.field m_bSelected:Z

.field private m_szDispName:Ljava/lang/String;

.field private m_szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/lge/render/FCDrawItem;-><init>()V

    .line 15
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_bLoaded:Z

    .line 32
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_bLoaded:Z

    .line 33
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_LoadImage:Z

    .line 34
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_bSelected:Z

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/render/FCPhotoItem;->setVisible(Z)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 37
    const/16 v0, 0xa5

    iput v0, p0, Lcom/lge/render/FCPhotoItem;->m_Land:I

    .line 39
    new-instance v0, Lcom/lge/render/FCBtnItem;

    invoke-direct {v0}, Lcom/lge/render/FCBtnItem;-><init>()V

    iput-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    .line 40
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/render/FCDrawItem;-><init>(IIII)V

    .line 15
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_bLoaded:Z

    .line 44
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_LoadImage:Z

    .line 47
    const/16 v0, 0xa5

    iput v0, p0, Lcom/lge/render/FCPhotoItem;->m_Land:I

    .line 48
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_bLoaded:Z

    .line 49
    iput-boolean v1, p0, Lcom/lge/render/FCPhotoItem;->m_bSelected:Z

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/render/FCPhotoItem;->setVisible(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 53
    new-instance v0, Lcom/lge/render/FCBtnItem;

    invoke-direct {v0}, Lcom/lge/render/FCBtnItem;-><init>()V

    iput-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    .line 54
    return-void
.end method

.method private setShadow()V
    .registers 13

    .prologue
    .line 221
    iget-object v1, p0, Lcom/lge/render/FCPhotoItem;->m_Shadow:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    .line 222
    iget-object v1, p0, Lcom/lge/render/FCPhotoItem;->m_Shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/render/FCPhotoItem;->m_Shadow:Landroid/graphics/Bitmap;

    .line 226
    :cond_c
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getFrameImg()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 230
    .local v3, bWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 231
    .local v4, bHeight:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 232
    .local v11, tLabelPaint:Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v10, tCanvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .local v9, dst:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 236
    .local v8, bSrc:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .local v7, bDst:Landroid/graphics/Rect;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v8, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 239
    const/16 v1, 0x9

    const/16 v2, 0x9

    const/16 v5, 0x9

    sub-int v5, v3, v5

    const/16 v6, 0x9

    sub-int v6, v4, v6

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v11, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 242
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v1, v8, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 244
    const/16 v1, 0x9

    const/16 v2, 0x21

    sub-int v2, v4, v2

    const/16 v5, 0x9

    sub-int v5, v3, v5

    const/16 v6, 0x9

    sub-int v6, v4, v6

    invoke-virtual {v9, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 245
    const/16 v1, 0xcf

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 246
    invoke-virtual {v10, v9, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 248
    iget-object v1, p0, Lcom/lge/render/FCPhotoItem;->m_szName:Ljava/lang/String;

    if-eqz v1, :cond_b4

    .line 249
    const/high16 v1, 0x4190

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 252
    const/16 v1, 0xaf

    const/16 v2, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v11, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 253
    iget-object v1, p0, Lcom/lge/render/FCPhotoItem;->m_szDispName:Ljava/lang/String;

    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    const/16 v5, 0xf

    sub-int v5, v4, v5

    int-to-float v5, v5

    invoke-virtual {v10, v1, v2, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 257
    :cond_b4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 259
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 261
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/FCPhotoItem;->m_Shadow:Landroid/graphics/Bitmap;

    .line 262
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    return-void
.end method


# virtual methods
.method protected IsBitmapLoaded()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/lge/render/FCPhotoItem;->m_LoadImage:Z

    return v0
.end method

.method public finishedLoad(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/lge/render/FCPhotoItem;->m_bLoaded:Z

    .line 307
    return-void
.end method

.method public getBtnClick(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v0}, Lcom/lge/render/FCBtnItem;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v0}, Lcom/lge/render/FCBtnItem;->getEnable()Z

    move-result v0

    if-nez v0, :cond_16

    .line 198
    :cond_14
    const/4 v0, 0x0

    .line 200
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v0}, Lcom/lge/render/FCBtnItem;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_15
.end method

.method public getButton()Lcom/lge/render/FCBtnItem;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_szName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/lge/render/FCPhotoItem;->m_Position:J

    return-wide v0
.end method

.method public getSelected()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/lge/render/FCPhotoItem;->m_bSelected:Z

    return v0
.end method

.method public getUID()J
    .registers 3

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/lge/render/FCPhotoItem;->m_UID:J

    return-wide v0
.end method

.method public isDrawShadow()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/lge/render/FCPhotoItem;->m_bDrawShadow:Z

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/lge/render/FCPhotoItem;->m_bLoaded:Z

    return v0
.end method

.method public onDrawFrame(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v8, 0x5

    const/4 v12, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getVisible()Z

    move-result v7

    if-eqz v7, :cond_193

    .line 58
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .local v6, srcRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .local v3, dstRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v0, backP:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 65
    .local v2, dstFrameRect:Landroid/graphics/Rect;
    iget v7, p0, Lcom/lge/render/FCPhotoItem;->mAlpha:I

    invoke-virtual {v0, v7, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x9

    div-int/lit16 v8, v8, 0x80

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x9

    div-int/lit16 v9, v9, 0x80

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x9

    div-int/lit16 v10, v10, 0x80

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x9

    div-int/lit16 v11, v11, 0x80

    sub-int/2addr v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 71
    iget v7, p0, Lcom/lge/render/FCPhotoItem;->mAlpha:I

    iget v8, p0, Lcom/lge/render/FCPhotoItem;->mColorRed:I

    iget v9, p0, Lcom/lge/render/FCPhotoItem;->mColorGreen:I

    iget v10, p0, Lcom/lge/render/FCPhotoItem;->mColorBlue:I

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 73
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getFrameImg()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getFrameImg()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 75
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getFrameImg()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7, v6, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->IsBitmapLoaded()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_194

    .line 79
    :cond_97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v1, dst:Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v9

    mul-int/lit8 v9, v9, 0xb

    div-int/lit16 v9, v9, 0x80

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0xb

    div-int/lit16 v11, v11, 0x80

    add-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getLoadingImg()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getLoadingImg()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getLoadingImg()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    .end local v1           #dst:Landroid/graphics/Rect;
    :cond_e1
    :goto_e1
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->isDrawShadow()Z

    move-result v7

    if-eqz v7, :cond_135

    .line 125
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .local v5, shRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getFrameImg()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getFrameImg()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    iget v7, p0, Lcom/lge/render/FCPhotoItem;->mAlpha:I

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/lge/render/FCPhotoItem;->m_Land:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/lge/render/FCPhotoItem;->m_Land:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 134
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_Shadow:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_244

    .line 135
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_Shadow:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v6, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 141
    .end local v5           #shRect:Landroid/graphics/Rect;
    :cond_135
    :goto_135
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v7}, Lcom/lge/render/FCBtnItem;->getEnable()Z

    move-result v7

    if-eqz v7, :cond_193

    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v7}, Lcom/lge/render/FCBtnItem;->getVisible()Z

    move-result v7

    if-eqz v7, :cond_193

    .line 142
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x1b

    div-int/lit16 v10, v10, 0x80

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x9

    div-int/lit16 v11, v11, 0x80

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v10

    mul-int/lit8 v10, v10, 0x9

    div-int/lit16 v10, v10, 0x80

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/lge/render/FCBtnItem;->setPosition(II)V

    .line 146
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1b

    div-int/lit16 v8, v8, 0x80

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x1b

    div-int/lit16 v9, v9, 0x80

    invoke-virtual {v7, v8, v9}, Lcom/lge/render/FCBtnItem;->setSize(II)V

    .line 148
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    iget v8, p0, Lcom/lge/render/FCPhotoItem;->mAlpha:I

    invoke-virtual {v7, v8}, Lcom/lge/render/FCBtnItem;->setAlpha(I)V

    .line 149
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v7, p1}, Lcom/lge/render/FCBtnItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 152
    .end local v0           #backP:Landroid/graphics/Paint;
    .end local v2           #dstFrameRect:Landroid/graphics/Rect;
    .end local v3           #dstRect:Landroid/graphics/Rect;
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v6           #srcRect:Landroid/graphics/Rect;
    :cond_193
    return-void

    .line 99
    .restart local v0       #backP:Landroid/graphics/Paint;
    .restart local v2       #dstFrameRect:Landroid/graphics/Rect;
    .restart local v3       #dstRect:Landroid/graphics/Rect;
    .restart local v4       #paint:Landroid/graphics/Paint;
    .restart local v6       #srcRect:Landroid/graphics/Rect;
    :cond_194
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_szName:Ljava/lang/String;

    if-eqz v7, :cond_e1

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .restart local v1       #dst:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x9

    div-int/lit16 v8, v8, 0x80

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x9

    div-int/lit16 v9, v9, 0x80

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x18

    div-int/lit16 v9, v9, 0x80

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x9

    div-int/lit16 v10, v10, 0x80

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x9

    div-int/lit16 v11, v11, 0x80

    sub-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x12

    div-int/lit16 v7, v7, 0x80

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    iget-object v7, p0, Lcom/lge/render/FCPhotoItem;->m_szDispName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v10

    mul-int/lit8 v10, v10, 0xe

    div-int/lit16 v10, v10, 0x80

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_e1

    .line 137
    .end local v1           #dst:Landroid/graphics/Rect;
    .restart local v5       #shRect:Landroid/graphics/Rect;
    :cond_244
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getNoPhotoShadow()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7, v6, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_135
.end method

.method public setBitmapLoadState(Z)V
    .registers 2
    .parameter "isLoad"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/lge/render/FCPhotoItem;->m_LoadImage:Z

    .line 279
    return-void
.end method

.method public setBtn(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "up"
    .parameter "down"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/render/FCBtnItem;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 179
    return-void
.end method

.method public setBtnEnable(Z)V
    .registers 3
    .parameter "en"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v0, p1}, Lcom/lge/render/FCBtnItem;->setEnable(Z)V

    .line 193
    :cond_9
    return-void
.end method

.method public setBtnVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_BtnItem:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v0, p1}, Lcom/lge/render/FCBtnItem;->setVisible(Z)V

    .line 188
    :cond_9
    return-void
.end method

.method public setDrawShadow(Z)V
    .registers 2
    .parameter "draw"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/lge/render/FCPhotoItem;->m_bDrawShadow:Z

    .line 295
    return-void
.end method

.method public setLand(I)V
    .registers 2
    .parameter "land"

    .prologue
    .line 302
    iput p1, p0, Lcom/lge/render/FCPhotoItem;->m_Land:I

    .line 303
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 8
    .parameter "text"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lge/render/FCPhotoItem;->m_szName:Ljava/lang/String;

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v0, paint:Landroid/graphics/Paint;
    const/high16 v3, 0x4190

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 163
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 164
    .local v2, tp:Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/lge/render/FCPhotoItem;->m_szName:Ljava/lang/String;

    const/high16 v4, 0x42d2

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v2, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 166
    .local v1, tmpName:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/FCPhotoItem;->m_szDispName:Ljava/lang/String;

    .line 168
    iget-boolean v3, p0, Lcom/lge/render/FCPhotoItem;->m_LoadImage:Z

    if-eqz v3, :cond_40

    .line 169
    invoke-direct {p0}, Lcom/lge/render/FCPhotoItem;->setShadow()V

    .line 170
    :cond_40
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "b"

    .prologue
    .line 266
    if-nez p1, :cond_13

    .line 267
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getNoPhotoImgOri()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lge/render/FCDrawItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 272
    :goto_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/render/FCPhotoItem;->setBitmapLoadState(Z)V

    .line 274
    iget-object v0, p0, Lcom/lge/render/FCPhotoItem;->m_szName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lge/render/FCPhotoItem;->setName(Ljava/lang/String;)V

    .line 275
    return-void

    .line 269
    :cond_13
    invoke-super {p0, p1}, Lcom/lge/render/FCDrawItem;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_9
.end method

.method public setPosition(J)V
    .registers 3
    .parameter "position"

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/lge/render/FCPhotoItem;->m_Position:J

    .line 214
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter "select"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/lge/render/FCPhotoItem;->m_bSelected:Z

    .line 287
    return-void
.end method

.method public setUID(J)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/lge/render/FCPhotoItem;->m_UID:J

    .line 206
    return-void
.end method
