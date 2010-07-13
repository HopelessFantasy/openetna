.class Lcom/lge/sns/feed/ui/FeedList$5;
.super Ljava/lang/Object;
.source "FeedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FeedList;->onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/FeedList;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/FeedList;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedList$5;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList$5;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/FeedList;->dismissDialog(I)V

    return-void
.end method
