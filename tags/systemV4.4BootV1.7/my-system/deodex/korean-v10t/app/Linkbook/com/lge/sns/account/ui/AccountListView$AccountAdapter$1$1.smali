.class Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, snsId:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v2, v1, v6}, Lcom/lge/sns/account/IAccountFacade;->setStatus(Ljava/lang/String;Z)V

    .line 120
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/lge/sns/account/IAccountFacade;->saveCredential(Ljava/lang/String;Lcom/lge/sns/account/Credential;)I

    .line 121
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v3}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/account/ui/AccountListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    const v3, 0x7f050040

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v5, v5, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v5}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/lge/sns/account/ui/AccountListView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v2}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 125
    return-void
.end method
