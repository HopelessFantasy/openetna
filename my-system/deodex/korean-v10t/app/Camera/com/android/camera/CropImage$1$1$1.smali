.class Lcom/android/camera/CropImage$1$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/CropImage$1$1;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage$1$1;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iput-object p2, p0, Lcom/android/camera/CropImage$1$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 420
    iget-object v0, p0, Lcom/android/camera/CropImage$1$1$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/camera/CropImage$1$1$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 421
    iget-object v0, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/CropImage$1$1$1;->val$b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 422
    iget-object v0, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    iget-object v1, p0, Lcom/android/camera/CropImage$1$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CropImage$CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 424
    :cond_29
    iget-object v0, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v0}, Lcom/android/camera/CropImage$CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_46

    .line 425
    iget-object v0, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v0, v0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v0, v2, v2, v3}, Lcom/android/camera/CropImage$CropImageView;->center(ZZZ)V

    .line 427
    :cond_46
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/CropImage$1$1$1;->this$2:Lcom/android/camera/CropImage$1$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 428
    return-void
.end method
