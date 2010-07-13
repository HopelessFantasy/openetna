.class Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;
.super Ljava/lang/Object;
.source "MySpaceHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
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
    .line 433
    iput-object p1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$400(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->updateFeed(Lcom/lge/sns/feed/Feed;)V

    .line 435
    return-void
.end method
