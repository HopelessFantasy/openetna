.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;
.super Ljava/lang/Object;
.source "TwitterTweetUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatus(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

.field final synthetic val$isRetry:Z

.field final synthetic val$newTweet:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->val$newTweet:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->val$isRetry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->val$newTweet:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->requestProfileStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_22} :catch_56

    .line 181
    :goto_22
    return-void

    .line 152
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 153
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    iget-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->val$isRetry:Z

    if-ne v2, v6, :cond_34

    .line 154
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 161
    :cond_34
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-virtual {v2, v1, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22

    .line 171
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_56
    move-exception v2

    move-object v0, v2

    .line 172
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v2, "TwitterTweetUpdate"

    const-string v3, "Fail to update tweet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$4;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$4;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_22
.end method
