.class Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;
.super Ljava/lang/Thread;
.source "TwitterAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterAt;->updateContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    iput-boolean p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterAt;Z)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, tweets:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    const v4, 0x7f03000b

    invoke-direct {v0, v3, v4, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 80
    .local v0, adapter:Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;

    invoke-direct {v4, p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1b
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_1b} :catch_29

    .line 107
    .end local v0           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;
    .end local v2           #tweets:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    :goto_1b
    return-void

    .line 86
    :catch_1c
    move-exception v3

    move-object v1, v3

    .line 87
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;

    invoke-direct {v4, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 99
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_29
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, e:Lcom/lge/sns/SnsException;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$3;

    invoke-direct {v4, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1b
.end method
