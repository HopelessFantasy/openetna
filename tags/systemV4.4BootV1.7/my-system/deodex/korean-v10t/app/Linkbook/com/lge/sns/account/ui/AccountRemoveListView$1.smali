.class Lcom/lge/sns/account/ui/AccountRemoveListView$1;
.super Ljava/lang/Object;
.source "AccountRemoveListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountRemoveListView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountRemoveListView;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 120
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 121
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/account/IAccountFacade;->setStatus(Ljava/lang/String;Z)V

    .line 123
    :cond_26
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/sns/account/IAccountFacade;->removeAccountList(Ljava/lang/String;)V

    goto :goto_8

    .line 125
    .end local v0           #account:Lcom/lge/sns/account/Account;
    :cond_32
    sget-object v3, Lcom/lge/sns/profile/ui/ProfileView;->updateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 126
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    invoke-virtual {v3}, Lcom/lge/sns/account/ui/AccountRemoveListView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 127
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/lge/sns/account/ui/AccountRemoveListView;->setResult(ILandroid/content/Intent;)V

    .line 128
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$1;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    invoke-virtual {v3}, Lcom/lge/sns/account/ui/AccountRemoveListView;->finish()V

    .line 129
    return-void
.end method
