.class Lcom/android/camera/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field mUnion:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .registers 3
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/CropImage$4;->mScale:F

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImage$4;->mUnion:Landroid/graphics/RectF;

    .line 648
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/android/camera/CropImage$4;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/CropImage$4;Landroid/media/FaceDetector$Face;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/android/camera/CropImage$4;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CropImage$4;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/camera/CropImage$4;->makeDefault()V

    return-void
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .registers 14
    .parameter "f"

    .prologue
    .line 652
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 654
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Lcom/android/camera/CropImage$4;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 655
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 656
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/android/camera/CropImage$4;->mScale:F

    mul-float/2addr v1, v2

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 657
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/camera/CropImage$4;->mScale:F

    mul-float/2addr v1, v2

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 659
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 660
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 662
    .local v9, midY:I
    invoke-direct {p0}, Lcom/android/camera/CropImage$4;->makeHighlightView()Lcom/android/camera/HighlightView;

    move-result-object v0

    .line 664
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 665
    .local v11, width:I
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 667
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 669
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v6, v9

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 670
    .end local v6           #height:I
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 671
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_61

    .line 672
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 674
    :cond_61
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_71

    .line 675
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 677
    :cond_71
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_89

    .line 678
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 680
    :cond_89
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a1

    .line 681
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 683
    :cond_a1
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v5}, Lcom/android/camera/CropImage;->access$1200(Lcom/android/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d0

    iget-object v5, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v5}, Lcom/android/camera/CropImage;->access$1300(Lcom/android/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d0

    const/4 v5, 0x1

    :goto_ba
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 685
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->mUnion:Landroid/graphics/RectF;

    if-nez v1, :cond_d2

    .line 686
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/android/camera/CropImage$4;->mUnion:Landroid/graphics/RectF;

    .line 691
    :goto_c8
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/CropImage$CropImageView;->add(Lcom/android/camera/HighlightView;)V

    .line 692
    return-void

    .line 683
    :cond_d0
    const/4 v5, 0x0

    goto :goto_ba

    .line 688
    :cond_d2
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->mUnion:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_c8
.end method

.method private makeDefault()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 699
    invoke-direct {p0}, Lcom/android/camera/CropImage$4;->makeHighlightView()Lcom/android/camera/HighlightView;

    move-result-object v0

    .line 701
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 702
    .local v9, width:I
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 704
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v13, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 707
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 708
    .local v7, cropWidth:I
    move v6, v7

    .line 710
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->access$1200(Lcom/android/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->access$1300(Lcom/android/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_50

    .line 711
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->access$1200(Lcom/android/camera/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$1300(Lcom/android/camera/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_89

    .line 712
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->access$1300(Lcom/android/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$1200(Lcom/android/camera/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 720
    :cond_50
    :goto_50
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 721
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 723
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v5, v10, v7

    int-to-float v5, v5

    add-int v12, v11, v6

    int-to-float v12, v12

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 724
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v5}, Lcom/android/camera/CropImage;->access$1200(Lcom/android/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v5}, Lcom/android/camera/CropImage;->access$1300(Lcom/android/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_99

    const/4 v5, 0x1

    :goto_7e
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 725
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/CropImage$CropImageView;->add(Lcom/android/camera/HighlightView;)V

    .line 726
    return-void

    .line 715
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_89
    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->access$1200(Lcom/android/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$1300(Lcom/android/camera/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_50

    .restart local v3       #cropRect:Landroid/graphics/RectF;
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_99
    move v5, v13

    .line 724
    goto :goto_7e
.end method

.method private makeHighlightView()Lcom/android/camera/HighlightView;
    .registers 3

    .prologue
    .line 695
    new-instance v0, Lcom/android/camera/HighlightView;

    iget-object v1, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/HighlightView;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 730
    const/4 v0, 0x0

    .line 741
    :goto_8
    return-object v0

    .line 734
    :cond_9
    iget-object v0, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_23

    .line 735
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CropImage$4;->mScale:F

    .line 737
    :cond_23
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 738
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/android/camera/CropImage$4;->mScale:F

    iget v2, p0, Lcom/android/camera/CropImage$4;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 739
    iget-object v0, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    move-object v0, v7

    .line 741
    goto :goto_8
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 745
    iget-object v2, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v2}, Lcom/android/camera/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage$4;->mImageMatrix:Landroid/graphics/Matrix;

    .line 746
    invoke-direct {p0}, Lcom/android/camera/CropImage$4;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 748
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/android/camera/CropImage$4;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/CropImage$4;->mScale:F

    .line 749
    if-eqz v1, :cond_37

    iget-object v2, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v2}, Lcom/android/camera/CropImage;->access$1400(Lcom/android/camera/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 750
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/CropImage$4;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 752
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/android/camera/CropImage$4;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CropImage$4;->mNumFaces:I

    .line 756
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_37
    iget-object v2, p0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/CropImage$4$1;

    invoke-direct {v3, p0}, Lcom/android/camera/CropImage$4$1;-><init>(Lcom/android/camera/CropImage$4;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    return-void
.end method
