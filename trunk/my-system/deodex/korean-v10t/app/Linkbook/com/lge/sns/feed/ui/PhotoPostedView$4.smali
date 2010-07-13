.class Lcom/lge/sns/feed/ui/PhotoPostedView$4;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    iput-boolean p2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 377
    const/4 v0, 0x1

    .line 379
    .local v0, commentViewFlag:Z
    :try_start_1
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    iget-object v4, v4, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v5}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$200(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/media/MediaFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v6}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$200(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/media/MediaFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v7}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$200(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/media/MediaFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v8}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$200(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/media/MediaFile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/sns/media/MediaFile;->getFileId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/lge/sns/media/IMediaFacade;->getMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/sns/feed/ui/PhotoPostedView;->MediaCommentList:Ljava/util/List;

    .line 381
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v4, Lcom/lge/sns/feed/ui/PhotoPostedView$4$1;

    invoke-direct {v4, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$1;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_aa
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1 .. :try_end_3f} :catch_59
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_3f} :catch_92

    .line 416
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v4, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;

    invoke-direct {v4, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    :goto_49
    if-eqz v0, :cond_58

    .line 426
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    iget-object v3, v3, Lcom/lge/sns/feed/ui/PhotoPostedView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$400(Lcom/lge/sns/feed/ui/PhotoPostedView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    :cond_58
    return-void

    .line 388
    :catch_59
    move-exception v3

    move-object v1, v3

    .line 389
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    const/4 v0, 0x0

    .line 390
    :try_start_5c
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v4, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;

    invoke-direct {v4, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    iget-boolean v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->val$retry:Z

    if-eqz v3, :cond_87

    .line 401
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$000(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    sget v4, Lcom/lge/sns/feed/ui/FeedAction;->RESULTCODE_SIGNIN:I

    invoke-virtual {v3, v2, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_87
    .catchall {:try_start_5c .. :try_end_87} :catchall_aa

    .line 416
    .end local v2           #intent:Landroid/content/Intent;
    :cond_87
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v4, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;

    invoke-direct {v4, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_49

    .line 405
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_92
    move-exception v3

    move-object v1, v3

    .line 406
    .local v1, e:Lcom/lge/sns/SnsException;
    const/4 v0, 0x0

    .line 407
    :try_start_95
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v4, Lcom/lge/sns/feed/ui/PhotoPostedView$4$3;

    invoke-direct {v4, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$3;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_aa

    .line 416
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v4, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;

    invoke-direct {v4, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_49

    .end local v1           #e:Lcom/lge/sns/SnsException;
    :catchall_aa
    move-exception v3

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    new-instance v5, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$4$4;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v3
.end method
