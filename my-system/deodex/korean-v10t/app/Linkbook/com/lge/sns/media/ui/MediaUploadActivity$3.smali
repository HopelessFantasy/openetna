.class Lcom/lge/sns/media/ui/MediaUploadActivity$3;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onMediaPartUploadFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$300(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    .line 309
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$300(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    :cond_1f
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const v3, 0x7f050098

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$400(Lcom/lge/sns/media/ui/MediaUploadActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    return-void
.end method
