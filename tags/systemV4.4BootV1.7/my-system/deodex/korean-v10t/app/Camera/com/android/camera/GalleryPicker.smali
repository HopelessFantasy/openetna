.class public Lcom/android/camera/GalleryPicker;
.super Landroid/app/Activity;
.source "GalleryPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;,
        Lcom/android/camera/GalleryPicker$Item;,
        Lcom/android/camera/GalleryPicker$ItemInfo;
    }
.end annotation


# static fields
.field private static LOW_STORAGE_THRESHOLD:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "GalleryPicker"


# instance fields
.field mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

.field mCellOutline:Landroid/graphics/drawable/Drawable;

.field mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

.field mGridView:Landroid/widget/GridView;

.field mHandler:Landroid/os/Handler;

.field mMediaScanningDialog:Landroid/app/Dialog;

.field private mNoImagesView:Landroid/view/View;

.field mPausing:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mVideoOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 80
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/camera/GalleryPicker;->LOW_STORAGE_THRESHOLD:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/GalleryPicker;->mPausing:Z

    .line 582
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .prologue
    .line 62
    sget-wide v0, Lcom/android/camera/GalleryPicker;->LOW_STORAGE_THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/camera/GalleryPicker;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/GalleryPicker;->rebake(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/GalleryPicker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/camera/GalleryPicker;->launchFolderGallery(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/GalleryPicker;->createImageList(ILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/GalleryPicker;IILcom/android/camera/ImageManager$IImageList;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/GalleryPicker;->makeMiniThumbBitmap(IILcom/android/camera/ImageManager$IImageList;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/GalleryPicker;->bucketItemCount(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/GalleryPicker;->isEmptyBucket(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bucketItemCount(ILjava/lang/String;)I
    .registers 5
    .parameter "mediaTypes"
    .parameter "bucketId"

    .prologue
    .line 716
    invoke-direct {p0, p1, p2}, Lcom/android/camera/GalleryPicker;->createImageList(ILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    .line 718
    .local v0, list:Lcom/android/camera/ImageManager$IImageList;
    :try_start_4
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->getCount()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v1

    .line 721
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    return v1

    :catchall_c
    move-exception v1

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    throw v1
.end method

.method private createImageList(ILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;
    .registers 10
    .parameter "mediaTypes"
    .parameter "bucketId"

    .prologue
    .line 725
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    const/4 v5, 0x2

    move-object v1, p0

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method private isEmptyBucket(ILjava/lang/String;)Z
    .registers 5
    .parameter "mediaTypes"
    .parameter "bucketId"

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/android/camera/GalleryPicker;->createImageList(ILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    .line 707
    .local v0, list:Lcom/android/camera/ImageManager$IImageList;
    :try_start_4
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v1

    .line 710
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    return v1

    :catchall_c
    move-exception v1

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    throw v1
.end method

.method private launchFolderGallery(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/GalleryPicker$Item;

    invoke-virtual {v0, p0}, Lcom/android/camera/GalleryPicker$Item;->launch(Landroid/app/Activity;)V

    .line 242
    return-void
.end method

.method private makeMiniThumbBitmap(IILcom/android/camera/ImageManager$IImageList;)Landroid/graphics/Bitmap;
    .registers 38
    .parameter "width"
    .parameter "height"
    .parameter "images"

    .prologue
    .line 595
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v19

    .line 600
    .local v19, count:I
    const/16 v29, 0x4

    .line 601
    .local v29, padding:I
    move/from16 v11, p1

    .line 602
    .local v11, imageWidth:I
    move/from16 v13, p2

    .line 603
    .local v13, imageHeight:I
    const/4 v15, 0x0

    .line 604
    .local v15, offsetWidth:I
    const/16 v16, 0x0

    .line 606
    .local v16, offsetHeight:I
    const/4 v6, 0x4

    sub-int v6, v11, v6

    div-int/lit8 v11, v6, 0x2

    .line 607
    const/4 v6, 0x4

    sub-int v6, v13, v6

    div-int/lit8 v13, v6, 0x2

    .line 609
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 610
    .local v28, p:Landroid/graphics/Paint;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 611
    .local v18, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 613
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 616
    .local v22, m:Landroid/graphics/Matrix;
    const/4 v6, 0x0

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 620
    const/4 v6, -0x1

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move v2, v8

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 624
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 625
    .local v10, pdpaint:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 628
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 629
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p1

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 631
    const/16 v17, 0x0

    .local v17, i:I
    :goto_84
    const/4 v6, 0x4

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_17f

    .line 632
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/GalleryPicker;->mPausing:Z

    move v6, v0

    if-eqz v6, :cond_93

    .line 633
    const/4 v6, 0x0

    .line 679
    :goto_92
    return-object v6

    .line 636
    :cond_93
    const/16 v30, 0x0

    .line 637
    .local v30, temp:Landroid/graphics/Bitmap;
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_17a

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v6

    move-object/from16 v20, v6

    .line 639
    .local v20, image:Lcom/android/camera/ImageManager$IImage;
    :goto_a5
    if-eqz v20, :cond_ab

    .line 640
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v30

    .line 643
    :cond_ab
    if-eqz v30, :cond_12e

    .line 644
    invoke-static/range {v20 .. v20}, Lcom/android/camera/ImageManager;->isVideo(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 645
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v30

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 646
    .local v24, newMap:Landroid/graphics/Bitmap;
    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 647
    .local v25, overlayCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    .line 648
    .local v27, overlayWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    .line 649
    .local v26, overlayHeight:I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v6, v27

    div-int/lit8 v21, v6, 0x2

    .line 650
    .local v21, left:I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v6, v26

    div-int/lit8 v33, v6, 0x2

    .line 651
    .local v33, top:I
    new-instance v23, Landroid/graphics/Rect;

    add-int v6, v21, v27

    add-int v7, v33, v26

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v33

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 652
    .local v23, newBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 654
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 655
    move-object/from16 v30, v24

    .line 658
    .end local v21           #left:I
    .end local v23           #newBounds:Landroid/graphics/Rect;
    .end local v24           #newMap:Landroid/graphics/Bitmap;
    .end local v25           #overlayCanvas:Landroid/graphics/Canvas;
    .end local v26           #overlayHeight:I
    .end local v27           #overlayWidth:I
    .end local v33           #top:I
    :cond_117
    const/4 v6, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move v2, v11

    move v3, v13

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ImageLoader;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 659
    .local v31, temp2:Landroid/graphics/Bitmap;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_12c

    .line 660
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 661
    :cond_12c
    move-object/from16 v30, v31

    .line 664
    .end local v31           #temp2:Landroid/graphics/Bitmap;
    :cond_12e
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v13, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 665
    .local v8, thumb:Landroid/graphics/Bitmap;
    new-instance v32, Landroid/graphics/Canvas;

    move-object/from16 v0, v32

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 666
    .local v32, tempCanvas:Landroid/graphics/Canvas;
    if-eqz v30, :cond_151

    .line 667
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 668
    :cond_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mCellOutline:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/GalleryPicker;->mCellOutline:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 671
    const/4 v12, 0x4

    const/4 v14, 0x4

    move-object/from16 v7, p0

    move-object v9, v5

    invoke-direct/range {v7 .. v17}, Lcom/android/camera/GalleryPicker;->placeImage(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIIII)V

    .line 673
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 675
    if-eqz v30, :cond_176

    .line 676
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 631
    :cond_176
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_84

    .line 637
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    .end local v20           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v32           #tempCanvas:Landroid/graphics/Canvas;
    :cond_17a
    const/4 v6, 0x0

    move-object/from16 v20, v6

    goto/16 :goto_a5

    .end local v30           #temp:Landroid/graphics/Bitmap;
    :cond_17f
    move-object/from16 v6, v18

    .line 679
    goto/16 :goto_92
.end method

.method private placeImage(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIIII)V
    .registers 17
    .parameter "image"
    .parameter "c"
    .parameter "paint"
    .parameter "imageWidth"
    .parameter "widthPadding"
    .parameter "imageHeight"
    .parameter "heightPadding"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "pos"

    .prologue
    .line 585
    div-int/lit8 v1, p10, 0x2

    .line 586
    .local v1, row:I
    mul-int/lit8 v4, v1, 0x2

    sub-int v0, p10, v4

    .line 588
    .local v0, col:I
    add-int v4, p4, p5

    mul-int/2addr v4, v0

    sub-int v2, v4, p8

    .line 589
    .local v2, xPos:I
    add-int v4, p6, p7

    mul-int/2addr v4, v1

    sub-int v3, v4, p9

    .line 591
    .local v3, yPos:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p2, p1, v4, v5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 592
    return-void
.end method

.method private rebake(ZZ)V
    .registers 10
    .parameter "unmounted"
    .parameter "scanning"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 86
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mMediaScanningDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_e

    .line 87
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mMediaScanningDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 88
    iput-object v6, p0, Lcom/android/camera/GalleryPicker;->mMediaScanningDialog:Landroid/app/Dialog;

    .line 90
    :cond_e
    if-eqz p2, :cond_21

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v6, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/GalleryPicker;->mMediaScanningDialog:Landroid/app/Dialog;

    .line 99
    :cond_21
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    if-nez v2, :cond_26

    .line 146
    :cond_25
    :goto_25
    return-void

    .line 103
    :cond_26
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    if-eqz v2, :cond_39

    .line 104
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-virtual {v2}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    if-nez p1, :cond_61

    if-nez p2, :cond_61

    move v3, v4

    :goto_36
    invoke-virtual {v2, v3}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->init(Z)V

    .line 108
    :cond_39
    if-nez p1, :cond_48

    .line 110
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/GalleryPicker$1;

    invoke-direct {v2, p0}, Lcom/android/camera/GalleryPicker$1;-><init>(Lcom/android/camera/GalleryPicker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 135
    .end local v1           #t:Ljava/lang/Thread;
    :cond_48
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mNoImagesView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    if-nez p2, :cond_25

    .line 137
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v2, v2, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    .local v0, numItems:I
    if-nez v0, :cond_63

    .line 139
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mNoImagesView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .end local v0           #numItems:I
    :cond_61
    move v3, v5

    .line 105
    goto :goto_36

    .line 140
    .restart local v0       #numItems:I
    :cond_63
    if-ne v0, v4, :cond_25

    .line 141
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v2, v2, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/GalleryPicker$Item;

    invoke-virtual {v2, p0}, Lcom/android/camera/GalleryPicker$Item;->launch(Landroid/app/Activity;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker;->finish()V

    goto :goto_25
.end method

.method private setBackgrounds(Landroid/content/res/Resources;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 576
    const v0, 0x7f02000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    .line 578
    const v0, 0x108001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mCellOutline:Landroid/graphics/drawable/Drawable;

    .line 579
    const v0, 0x7f020038

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    .line 580
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mPrefs:Landroid/content/SharedPreferences;

    .line 154
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/camera/GalleryPicker;->setContentView(I)V

    .line 156
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/camera/GalleryPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mNoImagesView:Landroid/view/View;

    .line 157
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/android/camera/GalleryPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    .line 158
    iget-object v0, p0, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 160
    new-instance v0, Lcom/android/camera/GalleryPicker$2;

    invoke-direct {v0, p0}, Lcom/android/camera/GalleryPicker$2;-><init>(Lcom/android/camera/GalleryPicker;)V

    iput-object v0, p0, Lcom/android/camera/GalleryPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iget-object v0, p0, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/android/camera/GalleryPicker$3;

    invoke-direct {v1, p0}, Lcom/android/camera/GalleryPicker$3;-><init>(Lcom/android/camera/GalleryPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/android/camera/GalleryPicker$4;

    invoke-direct {v1, p0}, Lcom/android/camera/GalleryPicker$4;-><init>(Lcom/android/camera/GalleryPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 237
    invoke-static {}, Lcom/android/camera/ImageManager;->ensureOSXCompatibleFolder()V

    .line 238
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 684
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 686
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->addCaptureMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V

    .line 688
    const/4 v0, 0x5

    const v1, 0x7f09007b

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/GalleryPicker$5;

    invoke-direct {v1, p0}, Lcom/android/camera/GalleryPicker$5;-><init>(Lcom/android/camera/GalleryPicker;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/GalleryPicker;->mPausing:Z

    .line 541
    iget-object v0, p0, Lcom/android/camera/GalleryPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/GalleryPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iput-object v1, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    .line 545
    iget-object v0, p0, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 546
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 547
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 552
    iput-boolean v4, p0, Lcom/android/camera/GalleryPicker;->mPausing:Z

    .line 554
    new-instance v2, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;-><init>(Lcom/android/camera/GalleryPicker;)V

    iput-object v2, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    .line 555
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/GalleryPicker;->setBackgrounds(Landroid/content/res/Resources;)V

    .line 558
    invoke-static {p0}, Lcom/android/camera/ImageManager;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    .line 559
    .local v1, scanning:Z
    invoke-direct {p0, v4, v1}, Lcom/android/camera/GalleryPicker;->rebake(ZZ)V

    .line 562
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/GalleryPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    iget-object v2, p0, Lcom/android/camera/GalleryPicker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Lcom/android/camera/MenuHelper;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    .line 571
    return-void
.end method
