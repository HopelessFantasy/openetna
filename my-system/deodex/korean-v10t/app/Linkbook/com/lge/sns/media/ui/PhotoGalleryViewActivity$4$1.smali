.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    iget-object v1, v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/MediaFile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1300(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;Z)V

    .line 354
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1000(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1000(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 355
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1000(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    :cond_33
    return-void
.end method
