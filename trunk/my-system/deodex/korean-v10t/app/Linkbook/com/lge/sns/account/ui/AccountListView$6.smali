.class Lcom/lge/sns/account/ui/AccountListView$6;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onAccountAdded(Lcom/lge/sns/account/Account;)V
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
    .line 268
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$6;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/AccountListView$6;->val$account:Lcom/lge/sns/account/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$6;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    .line 270
    .local v0, adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
    if-eqz v0, :cond_f

    .line 271
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$6;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->add(Ljava/lang/Object;)V

    .line 273
    :cond_f
    return-void
.end method
