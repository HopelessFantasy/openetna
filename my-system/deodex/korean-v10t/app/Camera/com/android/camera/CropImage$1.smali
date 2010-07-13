.class Lcom/android/camera/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 402
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    invoke-virtual {v0}, Lcom/android/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 432
    :goto_a
    return-void

    .line 405
    :cond_b
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    invoke-virtual {v3}, Lcom/android/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/CropImage;->access$202(Lcom/android/camera/CropImage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 409
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    iget-object v1, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, v1, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/camera/CropImage$CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v0}, Lcom/android/camera/CropImage$CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_44

    .line 411
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->this$0:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v0, v5, v5, v6}, Lcom/android/camera/CropImage$CropImageView;->center(ZZZ)V

    .line 413
    :cond_44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CropImage$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CropImage$1$1;-><init>(Lcom/android/camera/CropImage$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_a
.end method
