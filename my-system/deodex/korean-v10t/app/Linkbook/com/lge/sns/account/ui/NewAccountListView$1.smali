.class Lcom/lge/sns/account/ui/NewAccountListView$1;
.super Ljava/lang/Thread;
.source "NewAccountListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/NewAccountListView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/NewAccountListView;

.field final synthetic val$progressGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/NewAccountListView;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/NewAccountListView$1;->val$progressGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/NewAccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v2}, Lcom/lge/sns/account/IAccountFacade;->getNewAccountList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/account/ui/NewAccountListView;->newAccountList:Ljava/util/List;

    .line 106
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    new-instance v2, Lcom/lge/sns/account/ui/NewAccountListView$1$1;

    invoke-direct {v2, p0}, Lcom/lge/sns/account/ui/NewAccountListView$1$1;-><init>(Lcom/lge/sns/account/ui/NewAccountListView$1;)V

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/ui/NewAccountListView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_16} :catch_17

    .line 126
    :goto_16
    return-void

    .line 119
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Lcom/lge/sns/SnsException;
    iget-object v1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    new-instance v2, Lcom/lge/sns/account/ui/NewAccountListView$1$2;

    invoke-direct {v2, p0}, Lcom/lge/sns/account/ui/NewAccountListView$1$2;-><init>(Lcom/lge/sns/account/ui/NewAccountListView$1;)V

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/ui/NewAccountListView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_16
.end method
