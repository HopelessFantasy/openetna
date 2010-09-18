.class Lcom/lge/sns/feed/linkbook/FeedFacade$1;
.super Ljava/lang/Thread;
.source "FeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/linkbook/FeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

.field final synthetic val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iput-object p2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    iput-object p3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 393
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    if-eqz v2, :cond_10

    .line 394
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;->onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->yield()V

    .line 397
    :cond_10
    const/4 v0, 0x0

    .line 399
    .local v0, count:I
    :try_start_11
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lge/sns/feed/linkbook/FeedFacade;->refreshFeedList(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_46
    .catch Lcom/lge/sns/SnsException; {:try_start_11 .. :try_end_1a} :catch_29

    move-result v0

    .line 405
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    if-eqz v2, :cond_28

    .line 406
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;->onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    :cond_28
    :goto_28
    return-void

    .line 400
    :catch_29
    move-exception v2

    move-object v1, v2

    .line 401
    .local v1, e:Lcom/lge/sns/SnsException;
    :try_start_2b
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    if-eqz v2, :cond_38

    .line 402
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;->onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_46

    .line 405
    :cond_38
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    if-eqz v2, :cond_28

    .line 406
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;->onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_28

    .line 405
    .end local v1           #e:Lcom/lge/sns/SnsException;
    :catchall_46
    move-exception v2

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    if-eqz v3, :cond_54

    .line 406
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$snsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;->val$userId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;->onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_54
    throw v2
.end method
