.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;
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
    .line 232
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 234
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    :cond_23
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-boolean v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->val$retry:Z

    if-nez v0, :cond_38

    .line 237
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2$2;->this$1:Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    const v1, 0x7f05000c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_38
    return-void
.end method
