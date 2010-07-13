.class Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;
.super Ljava/lang/Object;
.source "FaceBookHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 498
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->showDialog(I)V

    .line 500
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v1, v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->loadingMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_32

    .line 503
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 505
    :cond_32
    return-void
.end method
