.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;
.super Ljava/lang/Thread;
.source "TwitterProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$700(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/feed/IFeedFacade;->getFeedListByUser(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$800(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method
