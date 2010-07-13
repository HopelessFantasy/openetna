.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$3;
.super Ljava/lang/Object;
.source "WriteProfileCommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$3;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$3;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->sendProfileComment()V

    .line 413
    return-void
.end method
