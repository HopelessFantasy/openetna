.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 125
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    iget-object v1, v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    iget-object v2, v2, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-static {v1, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$400(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    .line 126
    .local v0, position:I
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    iget-object v1, v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$500(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/Gallery;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    iget-object v2, v2, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    if-ltz v0, :cond_2d

    .line 128
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1$1;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    iget-object v1, v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$500(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/Gallery;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 130
    :cond_2d
    return-void
.end method
