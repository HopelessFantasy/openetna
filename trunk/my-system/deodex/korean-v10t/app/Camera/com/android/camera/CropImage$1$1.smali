.class Lcom/android/camera/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CropImage$1;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage$1;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    const/16 v2, 0x1f4

    invoke-interface {v1, v2}, Lcom/android/camera/ImageManager$IImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 418
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_15
    iget-object v1, p0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/CropImage$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CropImage$1$1$1;-><init>(Lcom/android/camera/CropImage$1$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void

    .line 415
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_24
    iget-object v1, p0, Lcom/android/camera/CropImage$1$1;->this$1:Lcom/android/camera/CropImage$1;

    iget-object v1, v1, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_15
.end method
