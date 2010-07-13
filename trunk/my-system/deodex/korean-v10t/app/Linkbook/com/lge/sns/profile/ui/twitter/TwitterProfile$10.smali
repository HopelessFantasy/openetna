.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

.field final synthetic val$feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 373
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$800(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_2e
    return-void
.end method
