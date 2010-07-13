.class Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
.super Ljava/lang/Object;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageBlock"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mBlockNumber:I

.field mCanvas:Landroid/graphics/Canvas;

.field mCellOutline:Landroid/graphics/drawable/Drawable;

.field mCompletedMask:I

.field mIsVisible:Z

.field mPaint:Landroid/graphics/Paint;

.field mRequestedMask:I

.field final synthetic this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V
    .registers 5
    .parameter

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-virtual {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->blockHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    .line 1387
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    .line 1388
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    .line 1404
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1405
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1407
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    .line 1408
    iget-object v0, p1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCellOutline:Landroid/graphics/drawable/Drawable;

    .line 1409
    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->recycleBitmaps()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->repaintSelection()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->startLoading()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->setStart(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->setVisibility(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;Lcom/android/camera/ImageManager$IImage;IILandroid/graphics/Bitmap;II)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 1383
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->drawBitmap(Lcom/android/camera/ImageManager$IImage;IILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method private cancelExistingRequests()V
    .registers 6

    .prologue
    .line 1419
    monitor-enter p0

    .line 1420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v3, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    if-ge v0, v3, :cond_4b

    .line 1421
    const/4 v3, 0x1

    shl-int v1, v3, v0

    .line 1422
    .local v1, mask:I
    iget v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_48

    .line 1423
    iget v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v3, v4

    add-int v2, v3, v0

    .line 1424
    .local v2, pos:I
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Lcom/android/camera/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ImageLoader;->cancel(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1425
    iget v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    .line 1420
    .end local v2           #pos:I
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1429
    .end local v1           #mask:I
    :cond_4b
    monitor-exit p0

    .line 1430
    return-void

    .line 1429
    :catchall_4d
    move-exception v3

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_2 .. :try_end_4f} :catchall_4d

    throw v3
.end method

.method private drawBitmap(Lcom/android/camera/ImageManager$IImage;IILandroid/graphics/Bitmap;II)V
    .registers 39
    .parameter "image"
    .parameter "base"
    .parameter "baseOffset"
    .parameter "b"
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1524
    if-eqz p4, :cond_176

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    move/from16 v30, v0

    .line 1529
    .local v30, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    move/from16 v18, v0

    .line 1531
    .local v18, h:I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1532
    .local v12, bw:I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1534
    .local v11, bh:I
    sub-int v14, v12, v30

    .line 1535
    .local v14, deltaW:I
    sub-int v13, v11, v18

    .line 1537
    .local v13, deltaH:I
    const/16 v5, 0xa

    if-ge v14, v5, :cond_141

    const/16 v5, 0xa

    if-ge v13, v5, :cond_141

    .line 1538
    div-int/lit8 v20, v14, 0x2

    .line 1539
    .local v20, halfDeltaW:I
    div-int/lit8 v19, v13, 0x2

    .line 1540
    .local v19, halfDeltaH:I
    new-instance v28, Landroid/graphics/Rect;

    add-int/lit8 v5, v20, 0x0

    add-int/lit8 v6, v19, 0x0

    sub-int v7, v12, v20

    sub-int v8, v11, v19

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1541
    .local v28, src:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    add-int v5, p5, v30

    add-int v6, p6, v18

    move-object/from16 v0, v16

    move/from16 v1, p5

    move/from16 v2, p6

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1542
    .local v16, dst:Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_7f

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v5, v6, :cond_7f

    .line 1548
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p4

    move-object/from16 v2, v28

    move-object/from16 v3, v16

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1565
    .end local v11           #bh:I
    .end local v12           #bw:I
    .end local v13           #deltaH:I
    .end local v14           #deltaW:I
    .end local v16           #dst:Landroid/graphics/Rect;
    .end local v18           #h:I
    .end local v19           #halfDeltaH:I
    .end local v20           #halfDeltaW:I
    .end local v28           #src:Landroid/graphics/Rect;
    .end local v30           #w:I
    :goto_94
    invoke-static/range {p1 .. p1}, Lcom/android/camera/ImageManager;->isVideo(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v5

    if-eqz v5, :cond_134

    .line 1566
    const/16 v24, 0x0

    .line 1567
    .local v24, overlay:Landroid/graphics/drawable/Drawable;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/MenuHelper;->getImageFileSize(Lcom/android/camera/ImageManager$IImage;)J

    move-result-wide v25

    .line 1568
    .local v25, size:J
    const-wide/16 v5, 0x0

    cmp-long v5, v25, v5

    if-ltz v5, :cond_1eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)J

    move-result-wide v5

    cmp-long v5, v25, v5

    if-gtz v5, :cond_1eb

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$4500(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_da

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$4502(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1573
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$4500(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1585
    :goto_e3
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    .line 1586
    .local v31, width:I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    .line 1587
    .local v21, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v5

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    sub-int v5, v5, v31

    div-int/lit8 v5, v5, 0x2

    add-int v22, v5, p5

    .line 1588
    .local v22, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v5

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    sub-int v5, v5, v21

    div-int/lit8 v5, v5, 0x2

    add-int v29, v5, p6

    .line 1589
    .local v29, top:I
    new-instance v23, Landroid/graphics/Rect;

    add-int v5, v22, v31

    add-int v6, v29, v21

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v29

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1590
    .local v23, newBounds:Landroid/graphics/Rect;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1593
    .end local v21           #height:I
    .end local v22           #left:I
    .end local v23           #newBounds:Landroid/graphics/Rect;
    .end local v24           #overlay:Landroid/graphics/drawable/Drawable;
    .end local v25           #size:J
    .end local v29           #top:I
    .end local v31           #width:I
    :cond_134
    add-int v5, p2, p3

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->paintSel(III)V

    .line 1594
    return-void

    .line 1550
    .restart local v11       #bh:I
    .restart local v12       #bw:I
    .restart local v13       #deltaH:I
    .restart local v14       #deltaW:I
    .restart local v18       #h:I
    .restart local v30       #w:I
    :cond_141
    new-instance v28, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move v3, v12

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1551
    .restart local v28       #src:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    add-int v5, p5, v30

    add-int v6, p6, v18

    move-object/from16 v0, v16

    move/from16 v1, p5

    move/from16 v2, p6

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1552
    .restart local v16       #dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p4

    move-object/from16 v2, v28

    move-object/from16 v3, v16

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_94

    .line 1556
    .end local v11           #bh:I
    .end local v12           #bw:I
    .end local v13           #deltaH:I
    .end local v14           #deltaW:I
    .end local v16           #dst:Landroid/graphics/Rect;
    .end local v18           #h:I
    .end local v28           #src:Landroid/graphics/Rect;
    .end local v30           #w:I
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->getErrorBitmap(Lcom/android/camera/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1557
    .local v17, error:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    .line 1558
    .restart local v31       #width:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 1559
    .restart local v21       #height:I
    new-instance v27, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v5

    move v2, v6

    move/from16 v3, v31

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1560
    .local v27, source:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v5

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    sub-int v5, v5, v31

    div-int/lit8 v5, v5, 0x2

    add-int v22, v5, p5

    .line 1561
    .restart local v22       #left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v5

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    sub-int v5, v5, v21

    div-int/lit8 v5, v5, 0x2

    add-int v29, v5, p6

    .line 1562
    .restart local v29       #top:I
    new-instance v15, Landroid/graphics/Rect;

    add-int v5, v22, v31

    add-int v6, v29, v21

    move-object v0, v15

    move/from16 v1, v22

    move/from16 v2, v29

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1563
    .local v15, dest:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-object v3, v15

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_94

    .line 1575
    .end local v15           #dest:Landroid/graphics/Rect;
    .end local v17           #error:Landroid/graphics/Bitmap;
    .end local v21           #height:I
    .end local v22           #left:I
    .end local v27           #source:Landroid/graphics/Rect;
    .end local v29           #top:I
    .end local v31           #width:I
    .restart local v24       #overlay:Landroid/graphics/drawable/Drawable;
    .restart local v25       #size:J
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$4600(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_210

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$4602(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1579
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$4600(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1580
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 1581
    .local v10, paint:Landroid/graphics/Paint;
    const/16 v5, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v10, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v8}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v8

    iget v8, v8, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int v8, v8, p5

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v9

    iget v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int v9, v9, p6

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_e3
.end method

.method private loadImage(IILcom/android/camera/ImageManager$IImage;II)V
    .registers 16
    .parameter "base"
    .parameter "baseOffset"
    .parameter "image"
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 1642
    monitor-enter p0

    .line 1643
    :try_start_1
    iget v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    .line 1644
    .local v2, startBlock:I
    add-int v9, p1, p2

    .line 1645
    .local v9, pos:I
    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;

    move-object v1, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;ILcom/android/camera/ImageManager$IImage;IIII)V

    .line 1686
    .local v0, r:Lcom/android/camera/ImageLoader$LoadedCallback;
    iget v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    const/4 v3, 0x1

    shl-int/2addr v3, p2

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    .line 1687
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Lcom/android/camera/ImageLoader;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    const/4 v8, 0x0

    move-object v4, p3

    move v5, v9

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/ImageLoader;->getBitmap(Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;

    .line 1688
    monitor-exit p0

    .line 1689
    return-void

    .line 1688
    .end local v0           #r:Lcom/android/camera/ImageLoader$LoadedCallback;
    .end local v2           #startBlock:I
    .end local v9           #pos:I
    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private paintSel(III)V
    .registers 8
    .parameter "pos"
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 1621
    invoke-static {}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4700()[I

    move-result-object v0

    .line 1622
    .local v0, stateSet:[I
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v1

    if-ne p1, v1, :cond_26

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1623
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4800(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1624
    invoke-static {}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4900()[I

    move-result-object v0

    .line 1630
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCellOutline:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1631
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1632
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCellOutline:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v2, v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v3, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v3, p3

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1633
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCellOutline:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1634
    return-void

    .line 1626
    :cond_55
    invoke-static {}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$5000()[I

    move-result-object v0

    goto :goto_26
.end method

.method private recycleBitmaps()V
    .registers 2

    .prologue
    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    .line 1415
    monitor-exit p0

    .line 1416
    return-void

    .line 1415
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private repaintSelection()V
    .registers 13

    .prologue
    .line 1597
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    .line 1598
    .local v1, count:I
    iget v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    iget-object v11, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v11, v11, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v11}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v11

    iget v11, v11, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int v7, v10, v11

    .line 1599
    .local v7, startPos:I
    monitor-enter p0

    .line 1600
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    :try_start_20
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    if-ge v2, v10, :cond_30

    .line 1601
    add-int v4, v7, v2

    .line 1603
    .local v4, pos:I
    if-lt v4, v1, :cond_32

    .line 1617
    .end local v4           #pos:I
    :cond_30
    monitor-exit p0

    .line 1618
    return-void

    .line 1606
    .restart local v4       #pos:I
    :cond_32
    const/4 v5, 0x0

    .line 1607
    .local v5, row:I
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v10, v5

    sub-int v0, v2, v10

    .line 1610
    .local v0, col:I
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v6, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    .line 1611
    .local v6, spacing:I
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v3, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    .line 1612
    .local v3, leftSpacing:I
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v10, v6

    mul-int/2addr v10, v5

    add-int v9, v6, v10

    .line 1613
    .local v9, yPos:I
    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v10, v6

    mul-int/2addr v10, v0

    add-int v8, v3, v10

    .line 1615
    .local v8, xPos:I
    invoke-direct {p0, v4, v8, v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->paintSel(III)V

    .line 1600
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1617
    .end local v0           #col:I
    .end local v3           #leftSpacing:I
    .end local v4           #pos:I
    .end local v5           #row:I
    .end local v6           #spacing:I
    .end local v8           #xPos:I
    .end local v9           #yPos:I
    :catchall_76
    move-exception v10

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_20 .. :try_end_78} :catchall_76

    throw v10
.end method

.method private setStart(I)V
    .registers 16
    .parameter "blockNumber"

    .prologue
    .line 1433
    monitor-enter p0

    .line 1434
    :try_start_1
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    if-ne p1, v0, :cond_7

    .line 1435
    monitor-exit p0

    .line 1460
    :goto_6
    return-void

    .line 1437
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->cancelExistingRequests()V

    .line 1439
    iput p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    .line 1440
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    .line 1441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCompletedMask:I

    .line 1442
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1443
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int v7, p1, v0

    .line 1445
    .local v7, imageNumber:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    .line 1447
    .local v9, lastImageNumber:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v11, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    .line 1448
    .local v11, spacing:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v10, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    .line 1450
    .local v10, leftSpacing:I
    move v13, v11

    .line 1452
    .local v13, yPos:I
    const/4 v6, 0x0

    .local v6, col:I
    move v8, v7

    .end local v7           #imageNumber:I
    .local v8, imageNumber:I
    :goto_57
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    if-ge v6, v0, :cond_a3

    .line 1453
    add-int/lit8 v7, v8, 0x1

    .end local v8           #imageNumber:I
    .restart local v7       #imageNumber:I
    if-lt v8, v9, :cond_6c

    .line 1459
    :goto_67
    monitor-exit p0

    goto :goto_6

    .end local v6           #col:I
    .end local v7           #imageNumber:I
    .end local v9           #lastImageNumber:I
    .end local v10           #leftSpacing:I
    .end local v11           #spacing:I
    .end local v13           #yPos:I
    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_69

    throw v0

    .line 1455
    .restart local v6       #col:I
    .restart local v7       #imageNumber:I
    .restart local v9       #lastImageNumber:I
    .restart local v10       #leftSpacing:I
    .restart local v11       #spacing:I
    .restart local v13       #yPos:I
    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v0, v11

    mul-int/2addr v0, v6

    add-int v12, v10, v0

    .line 1456
    .local v12, xPos:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v12

    int-to-float v2, v13

    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v3, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v4, v13

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1457
    const/4 v0, 0x0

    invoke-direct {p0, v0, v12, v13}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->paintSel(III)V
    :try_end_9f
    .catchall {:try_start_6c .. :try_end_9f} :catchall_69

    .line 1452
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7           #imageNumber:I
    .restart local v8       #imageNumber:I
    goto :goto_57

    .end local v12           #xPos:I
    :cond_a3
    move v7, v8

    .end local v8           #imageNumber:I
    .restart local v7       #imageNumber:I
    goto :goto_67
.end method

.method private setVisibility(Z)Z
    .registers 4
    .parameter "isVis"

    .prologue
    .line 1463
    monitor-enter p0

    .line 1464
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    if-eq v1, p1, :cond_b

    const/4 v1, 0x1

    move v0, v1

    .line 1465
    .local v0, retval:Z
    :goto_7
    iput-boolean p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    .line 1466
    monitor-exit p0

    return v0

    .line 1464
    .end local v0           #retval:Z
    :cond_b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_7

    .line 1467
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private startLoading()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1471
    monitor-enter p0

    .line 1472
    :try_start_2
    iget v11, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    .line 1473
    .local v11, startRow:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v6

    .line 1475
    .local v6, count:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_1a

    .line 1476
    monitor-exit p0

    move v0, v12

    .line 1505
    :goto_19
    return v0

    .line 1478
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v0, v11

    if-lt v0, v6, :cond_2a

    .line 1479
    monitor-exit p0

    move v0, v12

    goto :goto_19

    .line 1482
    :cond_2a
    const/4 v9, 0x0

    .line 1483
    .local v9, retVal:I
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    iget-object v12, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v12, v12, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v12}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v12

    iget v12, v12, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int v1, v0, v12

    .line 1484
    .local v1, base:I
    const/4 v2, 0x0

    .local v2, col:I
    :goto_3a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    if-ge v2, v0, :cond_77

    .line 1485
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCompletedMask:I

    const/4 v12, 0x1

    shl-int/2addr v12, v2

    and-int/2addr v0, v12

    if-eqz v0, :cond_50

    .line 1484
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1489
    :cond_50
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v10, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    .line 1490
    .local v10, spacing:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v7, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    .line 1491
    .local v7, leftSpacing:I
    move v5, v10

    .line 1492
    .local v5, yPos:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v0, v10

    mul-int/2addr v0, v2

    add-int v4, v7, v0

    .line 1494
    .local v4, xPos:I
    add-int v8, v1, v2

    .line 1495
    .local v8, pos:I
    if-lt v8, v6, :cond_7a

    .line 1505
    .end local v4           #xPos:I
    .end local v5           #yPos:I
    .end local v7           #leftSpacing:I
    .end local v8           #pos:I
    .end local v10           #spacing:I
    :cond_77
    monitor-exit p0

    move v0, v9

    goto :goto_19

    .line 1498
    .restart local v4       #xPos:I
    .restart local v5       #yPos:I
    .restart local v7       #leftSpacing:I
    .restart local v8       #pos:I
    .restart local v10       #spacing:I
    :cond_7a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v3

    .line 1499
    .local v3, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v3, :cond_4d

    move-object v0, p0

    .line 1501
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->loadImage(IILcom/android/camera/ImageManager$IImage;II)V

    .line 1502
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 1507
    .end local v1           #base:I
    .end local v2           #col:I
    .end local v3           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v4           #xPos:I
    .end local v5           #yPos:I
    .end local v6           #count:I
    .end local v7           #leftSpacing:I
    .end local v8           #pos:I
    .end local v9           #retVal:I
    .end local v10           #spacing:I
    .end local v11           #startRow:I
    :catchall_93
    move-exception v0

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_2 .. :try_end_95} :catchall_93

    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "line1"
    .parameter "line2"

    .prologue
    .line 1396
    monitor-enter p0

    .line 1398
    :try_start_1
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCompletedMask:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_17

    const/16 v0, 0x4c

    :goto_9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1399
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x56

    :goto_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1400
    monitor-exit p0

    .line 1401
    return-void

    .line 1398
    :cond_17
    const/16 v0, 0x5f

    goto :goto_9

    .line 1399
    :cond_1a
    const/16 v0, 0x20

    goto :goto_12

    .line 1400
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 1512
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v2, v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    if-ne v0, v2, :cond_25

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v2, v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    if-ne v0, v2, :cond_25

    :cond_23
    move-object v0, p1

    .line 1519
    :goto_24
    return-object v0

    .line 1515
    :cond_25
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 1516
    .local v8, scale:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1517
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v8, v8, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1518
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, b2:Landroid/graphics/Bitmap;
    move-object v0, v7

    .line 1519
    goto :goto_24
.end method
