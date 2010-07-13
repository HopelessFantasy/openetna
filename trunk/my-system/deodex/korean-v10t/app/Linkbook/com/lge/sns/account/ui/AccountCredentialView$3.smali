.class Lcom/lge/sns/account/ui/AccountCredentialView$3;
.super Ljava/lang/Object;
.source "AccountCredentialView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountCredentialView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountCredentialView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountCredentialView;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$3;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$3;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountCredentialView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$3;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/lge/sns/account/ui/AccountCredentialView;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$3;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountCredentialView;->finish()V

    .line 175
    return-void
.end method
