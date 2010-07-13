.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;
.super Ljava/lang/Object;
.source "WriteProfileCommentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/WriteProfileCommentView;->onProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

.field final synthetic val$profileComment:Lcom/lge/sns/profile/ProfileComment;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Lcom/lge/sns/profile/ProfileComment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->val$profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 498
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$200(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 499
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 500
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 502
    :cond_25
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->val$profileComment:Lcom/lge/sns/profile/ProfileComment;

    const v3, 0x7f030052

    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$400(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$500(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Lcom/lge/sns/profile/ProfileComment;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, commentView:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$400(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 504
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 505
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 508
    .end local v0           #commentView:Landroid/view/View;
    :cond_5d
    return-void
.end method
