.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
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
    .line 416
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 418
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->setNotifyOnChange(Z)V

    .line 419
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->remove(Lcom/lge/sns/media/MediaFile;)V

    .line 420
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0, v2, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->add(ILcom/lge/sns/media/MediaFile;)V

    .line 421
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 422
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->setNotifyOnChange(Z)V

    .line 424
    :cond_3b
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$600(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_52

    .line 425
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-static {v0, v1, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1300(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;Z)V

    .line 427
    :cond_52
    return-void
.end method
