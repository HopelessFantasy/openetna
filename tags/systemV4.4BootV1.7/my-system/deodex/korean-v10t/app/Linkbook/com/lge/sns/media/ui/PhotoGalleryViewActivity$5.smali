.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 394
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->add(ILcom/lge/sns/media/MediaFile;)V

    .line 396
    :cond_14
    return-void
.end method
