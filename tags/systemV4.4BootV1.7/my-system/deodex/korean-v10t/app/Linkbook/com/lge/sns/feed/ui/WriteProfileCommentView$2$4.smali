.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;
.super Ljava/lang/Object;
.source "WriteProfileCommentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 259
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 261
    :cond_23
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$300(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_48

    .line 262
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$4;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$300(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 264
    :cond_48
    return-void
.end method
