.class Lcom/lge/sns/account/ui/AccountListView$7;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onAccountRemoved(Lcom/lge/sns/account/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountListView;

.field final synthetic val$account:Lcom/lge/sns/account/Account;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView;Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$7;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/AccountListView$7;->val$account:Lcom/lge/sns/account/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 280
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$7;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    .line 281
    .local v0, adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
    if-eqz v0, :cond_1e

    .line 282
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$7;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->remove(Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$7;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$7;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView$7;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/account/AccountInitializeManager;->removeListener(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 285
    :cond_1e
    return-void
.end method
