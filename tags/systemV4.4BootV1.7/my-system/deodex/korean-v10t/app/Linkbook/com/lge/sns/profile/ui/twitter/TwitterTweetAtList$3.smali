.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$3;
.super Ljava/lang/Object;
.source "TwitterTweetAtList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 256
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->showDialog(I)V

    .line 258
    return-void
.end method
