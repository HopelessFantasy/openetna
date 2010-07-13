.class Lcom/lge/sns/account/ui/AccountListView$9;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onInitializeCompleted(Ljava/lang/String;)V
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
    .line 308
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$9;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$9;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    .line 310
    .local v0, adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
    if-eqz v0, :cond_d

    .line 311
    invoke-virtual {v0}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->notifyDataSetChanged()V

    .line 313
    :cond_d
    return-void
.end method
