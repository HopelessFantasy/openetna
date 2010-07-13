.class Lcom/lge/sns/feed/ui/myspace/MySpaceHome$9;
.super Ljava/lang/Object;
.source "MySpaceHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
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
    .line 409
    iput-object p1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$9;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$9;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->dismissDialog(I)V

    .line 411
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$9;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 412
    return-void
.end method
