.class Lcom/lge/sns/feed/ui/bebo/BeboHome$15;
.super Ljava/lang/Object;
.source "BeboHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/bebo/BeboHome;->onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

.field final synthetic val$feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$15;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$15;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$15;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$500(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$15;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->updateFeed(Lcom/lge/sns/feed/Feed;)V

    .line 607
    return-void
.end method
