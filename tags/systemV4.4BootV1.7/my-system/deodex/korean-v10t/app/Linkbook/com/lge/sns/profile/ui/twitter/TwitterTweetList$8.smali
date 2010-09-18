.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$8;
.super Ljava/lang/Object;
.source "TwitterTweetList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V
    .registers 2
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;->notifyDataSetChanged()V

    .line 485
    return-void
.end method
