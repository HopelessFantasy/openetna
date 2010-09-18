.class Lcom/lge/sns/feed/ui/FeedList$14;
.super Ljava/lang/Object;
.source "FeedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FeedList;->onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
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
    .line 399
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedList$14;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/FeedList$14;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 400
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$14;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/FeedList;->access$100(Lcom/lge/sns/feed/ui/FeedList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList$14;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 401
    .local v0, index:I
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$14;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/FeedList;->access$100(Lcom/lge/sns/feed/ui/FeedList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList$14;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$14;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/FeedList;->access$300(Lcom/lge/sns/feed/ui/FeedList;)Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->notifyDataSetChanged()V

    .line 403
    return-void
.end method
