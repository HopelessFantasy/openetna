.class Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;
.super Ljava/lang/Thread;
.source "TwitterHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterHome;->refreshContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    iput-boolean p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterHome;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterHome;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->access$100()I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getFriendStatusHistory(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, tweets:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    const v4, 0x7f03000b

    invoke-direct {v0, v3, v4, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 120
    .local v0, adapter:Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2$1;

    invoke-direct {v4, p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2a
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_2a} :catch_38

    .line 147
    .end local v0           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;
    .end local v2           #tweets:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    :goto_2a
    return-void

    .line 126
    :catch_2b
    move-exception v3

    move-object v1, v3

    .line 127
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2$2;

    invoke-direct {v4, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 139
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_38
    move-exception v3

    move-object v1, v3

    .line 140
    .local v1, e:Lcom/lge/sns/SnsException;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterHome;

    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2$3;

    invoke-direct {v4, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2a
.end method
