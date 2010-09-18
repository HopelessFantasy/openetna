.class Lcom/lge/sns/account/ui/AccountListView$5;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onCreate(Landroid/os/Bundle;)V
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
    .line 231
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$5;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$5;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$5;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v2}, Lcom/lge/sns/account/IAccountFacade;->getFixedAccountList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/account/ui/AccountListView;->newList:Ljava/util/List;

    .line 233
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$5;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountListView;->newList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 234
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$5;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050041

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 240
    :goto_27
    return-void

    .line 237
    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/lge/sns/account/IAccountFacade;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView$5;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_27
.end method
