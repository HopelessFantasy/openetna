.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iput-boolean p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/sns/media/IMediaFacade;->updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V

    .line 351
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$1;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_20} :catch_4b

    .line 385
    :cond_20
    :goto_20
    return-void

    .line 359
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 360
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$2;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    iget-boolean v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->val$retry:Z

    if-eqz v2, :cond_20

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$1100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v1, v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    .line 375
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_4b
    move-exception v2

    move-object v0, v2

    .line 376
    .local v0, e:Lcom/lge/sns/SnsException;
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4$3;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_20
.end method
