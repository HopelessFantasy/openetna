.class Lcom/lge/sns/feed/ui/myspace/MySpaceHome$7;
.super Ljava/lang/Object;
.source "MySpaceHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$7;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$7;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->dismissDialog(I)V

    .line 378
    return-void
.end method
