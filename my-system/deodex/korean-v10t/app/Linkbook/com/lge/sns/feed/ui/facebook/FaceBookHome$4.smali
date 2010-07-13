.class Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;
.super Ljava/lang/Object;
.source "FaceBookHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

.field final synthetic val$feedCount:I


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iput p2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->val$feedCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->dismissDialog(I)V

    .line 517
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    .line 518
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 520
    :cond_28
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const v2, 0x7f05002b

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->val$feedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 522
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iput v5, v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    .line 523
    return-void
.end method
