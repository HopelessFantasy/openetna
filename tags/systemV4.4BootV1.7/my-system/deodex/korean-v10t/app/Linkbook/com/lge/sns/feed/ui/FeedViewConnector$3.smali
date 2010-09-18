.class Lcom/lge/sns/feed/ui/FeedViewConnector$3;
.super Ljava/lang/Object;
.source "FeedViewConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FeedViewConnector;->onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/FeedViewConnector;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector$3;->this$0:Lcom/lge/sns/feed/ui/FeedViewConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedViewConnector$3;->this$0:Lcom/lge/sns/feed/ui/FeedViewConnector;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->dismissDialog(I)V

    .line 88
    return-void
.end method
