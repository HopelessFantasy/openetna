.class Lcom/lge/sns/media/ui/MediaUploadActivity$4;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onMediaPartUploaded(Ljava/lang/String;I)V
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
    .line 318
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 320
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 322
    :cond_1e
    return-void
.end method
