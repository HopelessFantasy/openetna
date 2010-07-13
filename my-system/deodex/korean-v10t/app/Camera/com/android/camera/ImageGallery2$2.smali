.class Lcom/android/camera/ImageGallery2$2;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2;->addSlideShowMenu(Landroid/view/Menu;I)Landroid/view/MenuItem;
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
    .line 169
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$2;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const-string v8, "bucketId"

    .line 170
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$2;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 171
    .local v1, img:Lcom/android/camera/ImageManager$IImage;
    if-nez v1, :cond_1e

    .line 172
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$2;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 173
    if-nez v1, :cond_1e

    move v5, v7

    .line 188
    :goto_1d
    return v5

    .line 177
    :cond_1e
    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 178
    .local v3, targetUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$2;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v5}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 179
    .local v4, thisUri:Landroid/net/Uri;
    if-eqz v4, :cond_44

    .line 180
    const-string v5, "bucketId"

    invoke-virtual {v4, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, bucket:Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 182
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "bucketId"

    invoke-virtual {v5, v8, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 185
    .end local v0           #bucket:Ljava/lang/String;
    :cond_44
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "slideshow"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$2;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v5, v2}, Lcom/android/camera/ImageGallery2;->startActivity(Landroid/content/Intent;)V

    move v5, v7

    .line 188
    goto :goto_1d
.end method
