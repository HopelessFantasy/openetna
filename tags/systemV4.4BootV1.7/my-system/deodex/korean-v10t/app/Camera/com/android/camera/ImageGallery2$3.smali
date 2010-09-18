.class Lcom/android/camera/ImageGallery2$3;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageGallery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageGallery2;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->clearCache()V

    .line 197
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    .line 198
    .local v0, currentImage:Lcom/android/camera/ImageManager$IImage;
    if-eqz v0, :cond_1c

    .line 199
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/ImageManager$IImageList;->removeImage(Lcom/android/camera/ImageManager$IImage;)Z

    .line 201
    :cond_1c
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->invalidate()V

    .line 202
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->requestLayout()V

    .line 203
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->start()V

    .line 204
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$700(Lcom/android/camera/ImageGallery2;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$3;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImageList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    :goto_44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    return-void

    .line 204
    :cond_48
    const/16 v2, 0x8

    goto :goto_44
.end method
