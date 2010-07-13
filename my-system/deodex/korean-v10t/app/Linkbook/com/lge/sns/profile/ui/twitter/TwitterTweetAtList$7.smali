.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;
.super Ljava/lang/Object;
.source "TwitterTweetAtList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->onFeedAdded(Lcom/lge/sns/feed/Feed;)V
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
    .line 293
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 294
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_3a

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_3a

    .line 296
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-static {v1, v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v0

    .line 297
    .local v0, location:I
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$600(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1, v2, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->insert(Ljava/lang/Object;I)V

    .line 299
    .end local v0           #location:I
    :cond_3a
    return-void
.end method
