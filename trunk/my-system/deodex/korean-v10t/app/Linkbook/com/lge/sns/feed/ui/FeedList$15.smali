.class Lcom/lge/sns/feed/ui/FeedList$15;
.super Ljava/lang/Object;
.source "FeedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FeedList;->onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/FeedList;

.field final synthetic val$feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/FeedList;Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedList$15;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/FeedList$15;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList$15;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$15;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/sns/feed/ui/FeedList;->access$000(Lcom/lge/sns/feed/ui/FeedList;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 413
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList$15;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/FeedList;->access$300(Lcom/lge/sns/feed/ui/FeedList;)Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$15;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->remove(Ljava/lang/Object;)V

    .line 415
    :cond_1a
    return-void
.end method
