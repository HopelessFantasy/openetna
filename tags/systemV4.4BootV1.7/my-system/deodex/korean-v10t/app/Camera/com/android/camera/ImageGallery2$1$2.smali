.class Lcom/android/camera/ImageGallery2$1$2;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$1;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageGallery2$1;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$1;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/camera/MenuHelper$MenuCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SelectedImageGetter;->getCurrentImageUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/camera/MenuHelper$MenuCallback;->run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->clearCache()V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->invalidate()V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->requestLayout()V

    .line 150
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->start()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$700(Lcom/android/camera/ImageGallery2;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$1$2;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lez v1, :cond_5b

    const/16 v1, 0x8

    :goto_57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 151
    :cond_5b
    const/4 v1, 0x0

    goto :goto_57
.end method
