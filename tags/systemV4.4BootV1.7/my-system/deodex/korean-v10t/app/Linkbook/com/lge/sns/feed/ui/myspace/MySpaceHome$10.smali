.class Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;
.super Ljava/lang/Object;
.source "MySpaceHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->onFeedAdded(Lcom/lge/sns/feed/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

.field final synthetic val$feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 421
    :try_start_0
    const-string v0, "FR"

    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 422
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$400(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->removeFeed(Lcom/lge/sns/feed/Feed;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_25

    .line 425
    :cond_19
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$400(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->addFeed(Lcom/lge/sns/feed/Feed;)V

    .line 427
    return-void

    .line 425
    :catchall_25
    move-exception v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$400(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1, v2}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->addFeed(Lcom/lge/sns/feed/Feed;)V

    throw v0
.end method
