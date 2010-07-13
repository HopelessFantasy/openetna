.class Lcom/lge/sns/account/ui/AccountListView$8;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onAccountUpdated(Lcom/lge/sns/account/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountListView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$8;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$8;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    .line 298
    .local v0, adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
    invoke-virtual {v0}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->notifyDataSetChanged()V

    .line 299
    return-void
.end method
