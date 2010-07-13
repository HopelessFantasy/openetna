.class Lcom/lge/sns/media/ui/MediaUploadActivity$7;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onMediaUploadStarted(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

.field final synthetic val$numberOfpart:I


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaUploadActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    iput p2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->val$numberOfpart:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->showDialog(I)V

    .line 352
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->val$numberOfpart:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 353
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 355
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_38

    .line 356
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$300(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 358
    :cond_38
    return-void
.end method
