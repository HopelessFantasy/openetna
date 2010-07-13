.class Lcom/lge/sns/media/ui/MediaUploadActivity$5;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onMediaUploadFail(Ljava/lang/Exception;)V
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
    .line 328
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 330
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 332
    :cond_1d
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void
.end method
