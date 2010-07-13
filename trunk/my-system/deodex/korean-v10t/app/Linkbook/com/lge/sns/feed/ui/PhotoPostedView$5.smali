.class Lcom/lge/sns/feed/ui/PhotoPostedView$5;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V
    .registers 2
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$500(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    .line 437
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$600(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 438
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$600(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 440
    :cond_24
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$702(Z)Z

    .line 441
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 442
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 444
    :cond_45
    return-void
.end method
