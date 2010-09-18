.class Lcom/lge/sns/feed/ui/facebook/FaceBookHome$5;
.super Ljava/lang/Object;
.source "FaceBookHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V
    .registers 2
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$5;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$5;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->dismissDialog(I)V

    .line 534
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$5;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const v1, 0x7f05000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 535
    return-void
.end method
