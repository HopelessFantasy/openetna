.class Lcom/android/camera/ImageGallery2$4;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Lcom/android/camera/SelectedImageGetter;


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
    .line 216
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$4;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentImage()Lcom/android/camera/ImageManager$IImage;
    .registers 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$4;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v0

    .line 218
    .local v0, currentSelection:I
    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$4;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_18

    .line 219
    :cond_16
    const/4 v1, 0x0

    .line 221
    :goto_17
    return-object v1

    :cond_18
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$4;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    goto :goto_17
.end method

.method public getCurrentImageUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$4;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    .line 211
    .local v0, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v0, :cond_b

    .line 212
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 214
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method
