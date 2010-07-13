.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;
.super Ljava/lang/Thread;
.source "PhotoGalleryViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 120
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/lge/sns/media/IMediaFacade;->getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$002(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Ljava/util/List;)Ljava/util/List;

    .line 122
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$000(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Landroid/content/Context;Ljava/util/List;Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;)V

    invoke-static {v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$202(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    .line 123
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;

    invoke-direct {v1, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
