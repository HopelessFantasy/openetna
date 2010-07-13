.class Lcom/lge/sns/media/ui/MediaUploadActivity$6;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onMediaUploadFinished(Ljava/lang/String;)V
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
    .line 339
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$6;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$6;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$6;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 341
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$6;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 343
    :cond_1d
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$6;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    .line 344
    return-void
.end method
