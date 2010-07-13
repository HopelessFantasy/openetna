.class Lcom/lge/newbay/client/impl/Message$1;
.super Ljava/lang/Thread;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/newbay/client/impl/Message;

.field final synthetic val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

.field final synthetic val$entries:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/lge/newbay/client/impl/Message$1;->this$0:Lcom/lge/newbay/client/impl/Message;

    iput-object p2, p0, Lcom/lge/newbay/client/impl/Message$1;->val$entries:Ljava/util/List;

    iput-object p3, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 478
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->val$entries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 480
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v5, :cond_32

    .line 481
    :try_start_9
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->val$entries:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Entry;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_49

    .line 483
    .local v1, entry:Lcom/lge/feed/atom/Entry;
    :try_start_11
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->this$0:Lcom/lge/newbay/client/impl/Message;

    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v2

    .line 484
    .local v2, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz v2, :cond_46

    .line 485
    invoke-virtual {v2}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v3

    .line 486
    .local v3, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v3, :cond_46

    .line 487
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->this$0:Lcom/lge/newbay/client/impl/Message;

    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-static {v6, v7, v8}, Lcom/lge/newbay/client/impl/Message;->access$000(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)Z
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_3c

    move-result v6

    if-nez v6, :cond_46

    .line 499
    .end local v1           #entry:Lcom/lge/feed/atom/Entry;
    .end local v2           #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    .end local v3           #feed:Lcom/lge/feed/atom/AtomFeed;
    :cond_32
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    if-eqz v6, :cond_3b

    .line 500
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-interface {v6}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageFinished()V

    .line 503
    :cond_3b
    return-void

    .line 492
    .restart local v1       #entry:Lcom/lge/feed/atom/Entry;
    :catch_3c
    move-exception v6

    move-object v0, v6

    .line 493
    .local v0, e:Ljava/lang/Exception;
    :try_start_3e
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-interface {v6, v1, v0}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_49

    move-result v6

    if-eqz v6, :cond_32

    .line 480
    .end local v0           #e:Ljava/lang/Exception;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 499
    .end local v1           #entry:Lcom/lge/feed/atom/Entry;
    :catchall_49
    move-exception v6

    iget-object v7, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    if-eqz v7, :cond_53

    .line 500
    iget-object v7, p0, Lcom/lge/newbay/client/impl/Message$1;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-interface {v7}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageFinished()V

    :cond_53
    throw v6
.end method
