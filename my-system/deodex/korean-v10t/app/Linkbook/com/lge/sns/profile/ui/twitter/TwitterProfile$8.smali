.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->onFeedAdded(Lcom/lge/sns/feed/Feed;)V
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
    .line 348
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 349
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->val$feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 350
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->val$feed:Lcom/lge/sns/feed/Feed;

    const v3, 0x7f03004b

    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$600(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Ljava/lang/Object;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, tweetView:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 353
    .end local v0           #tweetView:Landroid/view/View;
    :cond_31
    return-void
.end method
