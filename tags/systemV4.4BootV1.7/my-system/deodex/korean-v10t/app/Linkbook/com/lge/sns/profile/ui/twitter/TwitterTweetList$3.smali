.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$3;
.super Ljava/lang/Object;
.source "TwitterTweetList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 361
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->showDialog(I)V

    .line 363
    return-void
.end method
