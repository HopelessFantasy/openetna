.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

.field final synthetic val$orgPic:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;->val$orgPic:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    iget-object v1, v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/MediaFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/MediaFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 268
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$800(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;->val$orgPic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    :cond_1f
    return-void
.end method
