.class Lcom/lge/sns/account/ui/SnMenuView$4;
.super Ljava/lang/Object;
.source "SnMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/SnMenuView;->onAccountUpdated(Lcom/lge/sns/account/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/SnMenuView;

.field final synthetic val$account:Lcom/lge/sns/account/Account;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/SnMenuView;Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenuView$4;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/SnMenuView$4;->val$account:Lcom/lge/sns/account/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView$4;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView$4;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isInitilaized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 200
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView$4;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->dismissDialog(I)V

    .line 202
    :cond_14
    return-void
.end method
