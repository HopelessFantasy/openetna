.class Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$2;
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
    .line 129
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$2;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$2;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1$2;->this$2:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
