.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;
.super Ljava/lang/Object;
.source "TwitterTweetAtList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

.field final synthetic val$feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 318
    .local v0, index:I
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$600(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->notifyDataSetChanged()V

    .line 320
    return-void
.end method
