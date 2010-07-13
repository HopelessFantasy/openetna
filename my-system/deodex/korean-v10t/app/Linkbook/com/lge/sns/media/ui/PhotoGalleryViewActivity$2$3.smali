.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;
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


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;->this$1:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$900(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 289
    return-void
.end method
