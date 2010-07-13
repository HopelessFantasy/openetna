.class Lcom/lge/sns/feed/linkbook/FeedFacade$3;
.super Ljava/lang/Thread;
.source "FeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

.field final synthetic val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

.field final synthetic val$feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iput-object p2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    iput-object p3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1127
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    if-eqz v2, :cond_9

    .line 1128
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    invoke-interface {v2}, Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;->onFeedDataUpdateStarted()V

    .line 1131
    :cond_9
    const/4 v1, 0x0

    .line 1133
    .local v1, uri:Landroid/net/Uri;
    :try_start_a
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/sns/feed/linkbook/FeedFacade;->access$100(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/Feed;Z)Landroid/net/Uri;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_4a
    .catch Lcom/lge/sns/SnsException; {:try_start_a .. :try_end_12} :catch_29

    move-result-object v1

    .line 1139
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    if-eqz v2, :cond_28

    .line 1140
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;->onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V

    .line 1143
    :cond_28
    :goto_28
    return-void

    .line 1134
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 1135
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_2b
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    if-eqz v2, :cond_34

    .line 1136
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    invoke-interface {v2, v0}, Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;->onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_4a

    .line 1139
    :cond_34
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    if-eqz v2, :cond_28

    .line 1140
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;->onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V

    goto :goto_28

    .line 1139
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catchall_4a
    move-exception v2

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    if-eqz v3, :cond_60

    .line 1140
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$cb:Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;->onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V

    :cond_60
    throw v2
.end method
