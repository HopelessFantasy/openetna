.class Lcom/android/camera/ViewImage$4;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/android/camera/SelectedImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/camera/ViewImage$4;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentImage()Lcom/android/camera/ImageManager$IImage;
    .registers 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/camera/ViewImage$4;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ViewImage$4;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentImageUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/ViewImage$4;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ViewImage$4;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
