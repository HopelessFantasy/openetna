.class Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView$4;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 393
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    :cond_23
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    iget-boolean v0, v0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->val$retry:Z

    if-nez v0, :cond_38

    .line 396
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$4$2;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/PhotoPostedView$4;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    const v1, 0x7f0500a1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    :cond_38
    return-void
.end method
