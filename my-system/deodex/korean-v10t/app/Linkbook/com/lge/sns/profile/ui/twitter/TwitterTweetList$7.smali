.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;
.super Ljava/lang/Object;
.source "TwitterTweetList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 400
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    move-result-object v1

    monitor-enter v1

    .line 401
    :try_start_7
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;->notifyDataSetChanged()V

    .line 402
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    const v4, 0x7f05002b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    iget v7, v7, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 406
    .end local v0           #message:Ljava/lang/String;
    :cond_61
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_68
    move-exception v2

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_68

    throw v2
.end method
