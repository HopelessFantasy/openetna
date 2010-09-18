.class Lcom/lge/sns/feed/ui/myspace/MySpaceHome$2;
.super Ljava/lang/Object;
.source "MySpaceHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 330
    iput-object p1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$2;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$2;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->showDialog(I)V

    .line 332
    return-void
.end method
