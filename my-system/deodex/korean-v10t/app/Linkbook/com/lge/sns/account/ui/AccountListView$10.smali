.class Lcom/lge/sns/account/ui/AccountListView$10;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->viewSiteThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountListView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$10;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/AccountListView$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 450
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$10;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 453
    new-instance v0, Lcom/lge/sns/account/ui/AccountListView$10$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/account/ui/AccountListView$10$1;-><init>(Lcom/lge/sns/account/ui/AccountListView$10;)V

    .line 459
    .local v0, dismissDlg:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$10;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-static {v2}, Lcom/lge/sns/account/ui/AccountListView;->access$100(Lcom/lge/sns/account/ui/AccountListView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountListView$10;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v2, v1}, Lcom/lge/sns/account/ui/AccountListView;->startActivity(Landroid/content/Intent;)V

    .line 461
    return-void
.end method
