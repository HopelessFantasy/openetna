.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
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
    .line 435
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 437
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 439
    :cond_11
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/MediaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 440
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;->val$mf:Lcom/lge/sns/media/MediaFile;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1300(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;Z)V

    .line 442
    :cond_35
    return-void
.end method
