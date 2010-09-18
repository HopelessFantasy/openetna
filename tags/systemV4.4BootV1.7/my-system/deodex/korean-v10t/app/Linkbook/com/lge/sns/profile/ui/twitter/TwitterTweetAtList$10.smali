.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$10;
.super Ljava/lang/Object;
.source "TwitterTweetAtList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$600(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->notifyDataSetChanged()V

    .line 354
    return-void
.end method
