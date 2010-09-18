.class Lcom/lge/sns/feed/ui/WriteProfileCommentView$4;
.super Ljava/lang/Object;
.source "WriteProfileCommentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/WriteProfileCommentView;
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
    .line 463
    iput-object p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$4;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$4;->this$0:Lcom/lge/sns/feed/ui/WriteProfileCommentView;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->clearText()V

    .line 465
    return-void
.end method
