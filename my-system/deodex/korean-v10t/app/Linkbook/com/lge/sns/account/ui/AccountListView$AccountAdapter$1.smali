.class Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

.field final synthetic val$account:Lcom/lge/sns/account/Account;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iput-object p2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const v6, 0x104000a

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 114
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    const v2, 0x7f05004f

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v4}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/account/ui/AccountListView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$1;-><init>(Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    :goto_36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 137
    return-void

    .line 127
    :cond_3e
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    const v2, 0x7f05004e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v4}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/account/ui/AccountListView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    new-instance v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$2;-><init>(Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_36
.end method
