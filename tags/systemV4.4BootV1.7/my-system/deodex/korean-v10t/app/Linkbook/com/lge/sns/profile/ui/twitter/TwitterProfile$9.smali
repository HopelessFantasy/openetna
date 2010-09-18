.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
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
    .line 359
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 361
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 362
    .local v0, location:I
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$800(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    .end local v0           #location:I
    :cond_38
    return-void
.end method
