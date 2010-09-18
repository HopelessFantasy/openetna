.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;
.super Ljava/lang/Object;
.source "WriteProfileCommentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    iput-boolean p2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 217
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$100(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, snsId:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$100(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, userId:Ljava/lang/String;
    :try_start_14
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$202(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Z)Z

    .line 222
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    iget-object v4, v4, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v4, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$1;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$1;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_7b
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_14 .. :try_end_2b} :catch_36
    .catch Lcom/lge/sns/SnsException; {:try_start_14 .. :try_end_2b} :catch_64

    .line 256
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    :goto_35
    return-void

    .line 230
    :catch_36
    move-exception v4

    move-object v0, v4

    .line 231
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    :try_start_38
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    iget-boolean v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->val$retry:Z

    if-eqz v4, :cond_59

    .line 242
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    const/16 v5, 0x7d2

    invoke-virtual {v4, v1, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_7b

    .line 256
    .end local v1           #intent:Landroid/content/Intent;
    :cond_59
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_35

    .line 246
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_64
    move-exception v4

    move-object v0, v4

    .line 247
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_66
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$3;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_7b

    .line 256
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;

    invoke-direct {v5, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_35

    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catchall_7b
    move-exception v4

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    new-instance v6, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;

    invoke-direct {v6, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V

    invoke-virtual {v5, v6}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v4
.end method
