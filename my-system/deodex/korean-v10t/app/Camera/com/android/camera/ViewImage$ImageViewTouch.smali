.class public Lcom/android/camera/ViewImage$ImageViewTouch;
.super Lcom/android/camera/ImageViewTouchBase;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageViewTouch"
.end annotation


# instance fields
.field private mEnableTrackballScroll:Z

.field private mViewImage:Lcom/android/camera/ViewImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 310
    check-cast p1, Lcom/android/camera/ViewImage;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 315
    check-cast p1, Lcom/android/camera/ViewImage;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    .line 316
    return-void
.end method


# virtual methods
.method protected getScrollOffset()I
    .registers 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->scrollHandler()Lcom/android/camera/ViewImage$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ScrollHandler;->getScrollX()I

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "m"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$1100(Lcom/android/camera/ViewImage;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected isShiftedToNextImage(ZI)Z
    .registers 12
    .parameter "left"
    .parameter "maxOffset"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 410
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 411
    .local v1, m:Landroid/graphics/Matrix;
    if-eqz p1, :cond_1e

    .line 412
    new-array v3, v6, [F

    fill-array-data v3, :array_48

    .line 413
    .local v3, t1:[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 414
    aget v5, v3, v7

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1c

    move v2, v8

    .line 421
    .local v2, retval:Z
    :goto_1b
    return v2

    .end local v2           #retval:Z
    :cond_1c
    move v2, v7

    .line 414
    goto :goto_1b

    .line 416
    .end local v3           #t1:[F
    :cond_1e
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move v4, v5

    .line 417
    .local v4, width:I
    :goto_25
    new-array v3, v6, [F

    int-to-float v5, v4

    aput v5, v3, v7

    const/4 v5, 0x0

    aput v5, v3, v8

    .line 418
    .restart local v3       #t1:[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 419
    aget v5, v3, v7

    int-to-float v6, p2

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_45

    move v2, v8

    .restart local v2       #retval:Z
    :goto_3e
    goto :goto_1b

    .line 416
    .end local v2           #retval:Z
    .end local v3           #t1:[F
    .end local v4           #width:I
    :cond_3f
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getWidth()I

    move-result v5

    move v4, v5

    goto :goto_25

    .restart local v3       #t1:[F
    .restart local v4       #width:I
    :cond_45
    move v2, v7

    .line 419
    goto :goto_3e

    .line 412
    nop

    :array_48
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 341
    iget-boolean v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v4, :cond_14

    .line 342
    const/16 v4, 0x13

    if-lt p1, v4, :cond_14

    const/16 v4, 0x16

    if-gt p1, v4, :cond_14

    .line 344
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 404
    :goto_13
    return v4

    .line 348
    :cond_14
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v0

    .line 350
    .local v0, current:I
    const/4 v3, -0x2

    .line 352
    .local v3, nextImagePos:I
    packed-switch p1, :pswitch_data_1ba

    .line 394
    :cond_1e
    :goto_1e
    if-ltz v3, :cond_1a8

    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1a8

    .line 395
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    monitor-enter v4

    .line 396
    :try_start_2f
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 397
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5, v3}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 398
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_1a5

    .line 404
    :cond_3b
    :goto_3b
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_13

    .line 354
    :pswitch_40
    :try_start_40
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1300(Lcom/android/camera/ViewImage;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 355
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 356
    .local v1, img:Lcom/android/camera/ImageManager$IImage;
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ViewImage;->setResult(ILandroid/content/Intent;)V

    .line 358
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-virtual {v4}, Lcom/android/camera/ViewImage;->finish()V
    :try_end_70
    .catchall {:try_start_40 .. :try_end_70} :catchall_71

    goto :goto_1e

    .line 394
    .end local v1           #img:Lcom/android/camera/ImageManager$IImage;
    :catchall_71
    move-exception v4

    if-ltz v3, :cond_1b2

    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1b2

    .line 395
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    monitor-enter v5

    .line 396
    :try_start_83
    iget-object v6, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 397
    iget-object v6, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v6, v3}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 398
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_83 .. :try_end_8f} :catchall_1af

    .line 400
    :cond_8f
    :goto_8f
    throw v4

    .line 363
    :pswitch_90
    const/high16 v4, 0x40e0

    const/4 v5, 0x0

    :try_start_93
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ViewImage$ImageViewTouch;->panBy(FF)V

    .line 364
    if-nez v0, :cond_cc

    move v2, v9

    .line 365
    .local v2, maxOffset:I
    :goto_99
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getScale()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-lez v4, :cond_aa

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->isShiftedToNextImage(ZI)Z
    :try_end_a7
    .catchall {:try_start_93 .. :try_end_a7} :catchall_71

    move-result v4

    if-eqz v4, :cond_d0

    .line 366
    :cond_aa
    sub-int v3, v0, v8

    .line 394
    :goto_ac
    if-ltz v3, :cond_da

    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_da

    .line 395
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    monitor-enter v4

    .line 396
    :try_start_bd
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 397
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5, v3}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 398
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_bd .. :try_end_c9} :catchall_d7

    :cond_c9
    :goto_c9
    move v4, v8

    .line 400
    goto/16 :goto_13

    .line 364
    .end local v2           #maxOffset:I
    :cond_cc
    const/16 v4, 0x28

    move v2, v4

    goto :goto_99

    .line 368
    .restart local v2       #maxOffset:I
    :cond_d0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_d3
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_71

    goto :goto_ac

    .line 398
    :catchall_d7
    move-exception v5

    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v5

    .line 399
    :cond_da
    if-eq v3, v10, :cond_c9

    .line 400
    invoke-virtual {p0, v8, v8, v9}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    goto :goto_c9

    .line 373
    .end local v2           #maxOffset:I
    :pswitch_e0
    const/high16 v4, -0x3f20

    const/4 v5, 0x0

    :try_start_e3
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ViewImage$ImageViewTouch;->panBy(FF)V

    .line 374
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne v0, v4, :cond_127

    move v2, v9

    .line 375
    .restart local v2       #maxOffset:I
    :goto_f4
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getScale()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-lez v4, :cond_105

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->isShiftedToNextImage(ZI)Z
    :try_end_102
    .catchall {:try_start_e3 .. :try_end_102} :catchall_71

    move-result v4

    if-eqz v4, :cond_12b

    .line 376
    :cond_105
    add-int/lit8 v3, v0, 0x1

    .line 394
    :goto_107
    if-ltz v3, :cond_135

    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_135

    .line 395
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    monitor-enter v4

    .line 396
    :try_start_118
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 397
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5, v3}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 398
    monitor-exit v4
    :try_end_124
    .catchall {:try_start_118 .. :try_end_124} :catchall_132

    :cond_124
    :goto_124
    move v4, v8

    .line 400
    goto/16 :goto_13

    .line 374
    .end local v2           #maxOffset:I
    :cond_127
    const/16 v4, 0x28

    move v2, v4

    goto :goto_f4

    .line 378
    .restart local v2       #maxOffset:I
    :cond_12b
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_12e
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_71

    goto :goto_107

    .line 398
    :catchall_132
    move-exception v5

    :try_start_133
    monitor-exit v4
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v5

    .line 399
    :cond_135
    if-eq v3, v10, :cond_124

    .line 400
    invoke-virtual {p0, v8, v8, v9}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    goto :goto_124

    .line 383
    .end local v2           #maxOffset:I
    :pswitch_13b
    const/4 v4, 0x0

    const/high16 v5, 0x40e0

    :try_start_13e
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ViewImage$ImageViewTouch;->panBy(FF)V

    .line 384
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V
    :try_end_147
    .catchall {:try_start_13e .. :try_end_147} :catchall_71

    .line 394
    if-ltz v3, :cond_16a

    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_16a

    .line 395
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    monitor-enter v4

    .line 396
    :try_start_158
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 397
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5, v3}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 398
    monitor-exit v4

    :cond_164
    :goto_164
    move v4, v8

    .line 400
    goto/16 :goto_13

    .line 398
    :catchall_167
    move-exception v5

    monitor-exit v4
    :try_end_169
    .catchall {:try_start_158 .. :try_end_169} :catchall_167

    throw v5

    .line 399
    :cond_16a
    if-eq v3, v10, :cond_164

    .line 400
    invoke-virtual {p0, v8, v8, v9}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    goto :goto_164

    .line 388
    :pswitch_170
    const/4 v4, 0x0

    const/high16 v5, -0x3f20

    :try_start_173
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ViewImage$ImageViewTouch;->panBy(FF)V

    .line 389
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V
    :try_end_17c
    .catchall {:try_start_173 .. :try_end_17c} :catchall_71

    .line 394
    if-ltz v3, :cond_19f

    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_19f

    .line 395
    iget-object v4, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    monitor-enter v4

    .line 396
    :try_start_18d
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 397
    iget-object v5, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v5, v3}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 398
    monitor-exit v4

    :cond_199
    :goto_199
    move v4, v8

    .line 400
    goto/16 :goto_13

    .line 398
    :catchall_19c
    move-exception v5

    monitor-exit v4
    :try_end_19e
    .catchall {:try_start_18d .. :try_end_19e} :catchall_19c

    throw v5

    .line 399
    :cond_19f
    if-eq v3, v10, :cond_199

    .line 400
    invoke-virtual {p0, v8, v8, v9}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    goto :goto_199

    .line 398
    :catchall_1a5
    move-exception v5

    :try_start_1a6
    monitor-exit v4
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a5

    throw v5

    .line 399
    :cond_1a8
    if-eq v3, v10, :cond_3b

    .line 400
    invoke-virtual {p0, v8, v8, v9}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_3b

    .line 398
    :catchall_1af
    move-exception v4

    :try_start_1b0
    monitor-exit v5
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    throw v4

    .line 399
    :cond_1b2
    if-eq v3, v10, :cond_8f

    .line 400
    invoke-virtual {p0, v8, v8, v9}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_8f

    .line 352
    nop

    :pswitch_data_1ba
    .packed-switch 0x13
        :pswitch_13b
        :pswitch_170
        :pswitch_90
        :pswitch_e0
        :pswitch_40
    .end packed-switch
.end method

.method protected postTranslate(FFZ)V
    .registers 6
    .parameter "dx"
    .parameter "dy"
    .parameter "bounceOK"

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    .line 328
    return-void
.end method

.method protected scrollHandler()Lcom/android/camera/ViewImage$ScrollHandler;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mViewImage:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$1000(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$ScrollHandler;

    move-result-object v0

    return-object v0
.end method

.method protected scrollX(I)V
    .registers 4
    .parameter "deltaX"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/camera/ViewImage$ImageViewTouch;->scrollHandler()Lcom/android/camera/ViewImage$ScrollHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ViewImage$ScrollHandler;->scrollBy(II)V

    .line 426
    return-void
.end method

.method public setEnableTrackballScroll(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/android/camera/ViewImage$ImageViewTouch;->mEnableTrackballScroll:Z

    .line 320
    return-void
.end method
