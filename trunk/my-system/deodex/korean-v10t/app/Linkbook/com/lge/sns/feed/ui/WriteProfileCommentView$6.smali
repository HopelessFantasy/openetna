.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;
.super Ljava/lang/Object;
.source "WriteProfileCommentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/WriteProfileCommentView;->onProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
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
    .line 514
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;->val$profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 515
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$400(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 516
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_2e

    .line 517
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$400(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/profile/ProfileComment;

    .line 519
    .local v3, pc:Lcom/lge/sns/profile/ProfileComment;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;->val$profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v4, v3}, Lcom/lge/sns/profile/ProfileComment;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 520
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->access$400(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 524
    .end local v0           #childView:Landroid/view/View;
    .end local v3           #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_2e
    return-void

    .line 516
    .restart local v0       #childView:Landroid/view/View;
    .restart local v3       #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
