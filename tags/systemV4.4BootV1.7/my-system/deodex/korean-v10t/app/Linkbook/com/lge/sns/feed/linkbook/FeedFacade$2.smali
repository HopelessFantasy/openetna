.class Lcom/lge/sns/feed/linkbook/FeedFacade$2;
.super Ljava/lang/Thread;
.source "FeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeedContents(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

.field final synthetic val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

.field final synthetic val$feedType:[Ljava/lang/String;

.field final synthetic val$snsId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iput-object p2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    iput-object p3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1097
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    if-eqz v2, :cond_10

    .line 1098
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;->onContentUpdateStarted(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1099
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->yield()V

    .line 1101
    :cond_10
    const/4 v1, 0x0

    .line 1103
    .local v1, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_11
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeedContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_46
    .catch Lcom/lge/sns/SnsException; {:try_start_11 .. :try_end_1a} :catch_29

    move-result-object v1

    .line 1109
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    if-eqz v2, :cond_28

    .line 1110
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;->onContentUpdateFinished(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 1113
    :cond_28
    :goto_28
    return-void

    .line 1104
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 1105
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_2b
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    if-eqz v2, :cond_38

    .line 1106
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;->onContentUpdateFail(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_46

    .line 1109
    :cond_38
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    if-eqz v2, :cond_28

    .line 1110
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;->onContentUpdateFinished(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    goto :goto_28

    .line 1109
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catchall_46
    move-exception v2

    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    if-eqz v3, :cond_54

    .line 1110
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$cb:Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;

    iget-object v4, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$snsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;->val$feedType:[Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;->onContentUpdateFinished(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    :cond_54
    throw v2
.end method
