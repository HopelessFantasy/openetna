.class Lcom/lge/sns/account/ui/NewAccountListView$1$1;
.super Ljava/lang/Object;
.source "NewAccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/NewAccountListView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/NewAccountListView$1;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 108
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v1, v1, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/NewAccountListView;->newAccountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 109
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v1, v1, Lcom/lge/sns/account/ui/NewAccountListView$1;->val$progressGroup:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 110
    new-instance v0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;

    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v1, v1, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    const/high16 v3, 0x7f03

    iget-object v4, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v4, v4, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    iget-object v4, v4, Lcom/lge/sns/account/ui/NewAccountListView;->newAccountList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;-><init>(Lcom/lge/sns/account/ui/NewAccountListView;Landroid/content/Context;ILjava/util/List;)V

    .line 112
    .local v0, m_adapter:Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v1, v1, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    invoke-virtual {v1, v0}, Lcom/lge/sns/account/ui/NewAccountListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    .end local v0           #m_adapter:Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;
    :goto_31
    return-void

    .line 114
    :cond_32
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$1;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v1, v1, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/NewAccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050041

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_31
.end method
