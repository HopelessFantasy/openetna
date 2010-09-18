.class Lcom/android/camera/SlideShow$FileImageList$FileImage;
.super Lcom/android/camera/ImageManager$SimpleBaseImage;
.source "SlideShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlideShow$FileImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileImage"
.end annotation


# instance fields
.field mId:J

.field mPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/camera/SlideShow$FileImageList;


# direct methods
.method constructor <init>(Lcom/android/camera/SlideShow$FileImageList;JLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "path"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->this$1:Lcom/android/camera/SlideShow$FileImageList;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SimpleBaseImage;-><init>()V

    .line 316
    iput-wide p2, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->mId:J

    .line 317
    iput-object p4, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->mPath:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "targetWidthOrHeight"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .registers 3
    .parameter "targetWidthOrHeight"

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageId()J
    .registers 3

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->mId:J

    return-wide v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public imageId()J
    .registers 3

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/android/camera/SlideShow$FileImageList$FileImage;->mId:J

    return-wide v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/camera/SlideShow$FileImageList$FileImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 337
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/android/camera/SlideShow$FileImageList$FileImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 339
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v2, v3

    .line 340
    .local v7, scale:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 342
    .local v8, scaledBitmap:Landroid/graphics/Bitmap;
    return-object v8
.end method
