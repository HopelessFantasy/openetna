.class Lcom/lge/sns/feed/ui/FeedList$13;
.super Ljava/lang/Object;
.source "FeedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FeedList;->onFeedAdded(Lcom/lge/sns/feed/Feed;)V
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
    .line 375
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedList$13;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/FeedList$13;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 376
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$13;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList$13;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/sns/feed/ui/FeedList;->access$000(Lcom/lge/sns/feed/ui/FeedList;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 377
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$13;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList$13;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/FeedList;->access$100(Lcom/lge/sns/feed/ui/FeedList;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedList$13;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-static {v1, v2, v3}, Lcom/lge/sns/feed/ui/FeedList;->access$200(Lcom/lge/sns/feed/ui/FeedList;Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v0

    .line 378
    .local v0, location:I
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$13;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/FeedList;->access$300(Lcom/lge/sns/feed/ui/FeedList;)Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList$13;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1, v2, v0}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->insert(Ljava/lang/Object;I)V

    .line 380
    .end local v0           #location:I
    :cond_28
    return-void
.end method
