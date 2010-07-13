.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;
.super Ljava/lang/Object;
.source "TwitterTweetAtList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
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
    .line 326
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 327
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2c

    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 329
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$600(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->remove(Ljava/lang/Object;)V

    .line 331
    :cond_2c
    return-void
.end method
