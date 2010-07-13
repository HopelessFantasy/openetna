.class Lcom/lge/sns/account/ui/AccountCredentialView$4;
.super Ljava/lang/Object;
.source "AccountCredentialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/ui/AccountCredentialView;
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
    .line 211
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProcessedCred()Lcom/lge/sns/account/Credential;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 212
    new-instance v0, Lcom/lge/sns/account/Credential;

    invoke-direct {v0}, Lcom/lge/sns/account/Credential;-><init>()V

    .line 213
    .local v0, cred:Lcom/lge/sns/account/Credential;
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/Credential;->setUserId(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-boolean v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->rem:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->user_password:Ljava/lang/String;

    :goto_17
    invoke-virtual {v0, v1}, Lcom/lge/sns/account/Credential;->setUserPassword(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-boolean v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->rem:Z

    if-eqz v1, :cond_31

    move v1, v2

    :goto_21
    invoke-virtual {v0, v1}, Lcom/lge/sns/account/Credential;->setRemeber(Z)V

    .line 216
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/Credential;->setUid(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Credential;->setLogin(Z)V

    .line 218
    return-object v0

    .line 214
    :cond_2f
    const/4 v1, 0x0

    goto :goto_17

    .line 215
    :cond_31
    const/4 v1, 0x0

    goto :goto_21
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 181
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;

    const-string v3, "UnauthorizedException"

    if-ne v2, v3, :cond_28

    .line 182
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 183
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v2}, Lcom/lge/sns/account/ui/AccountCredentialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050042

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_27
    return-void

    .line 186
    :cond_28
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;

    const-string v3, "SnsException"

    if-ne v2, v3, :cond_4f

    .line 187
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 188
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v2}, Lcom/lge/sns/account/ui/AccountCredentialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_27

    .line 192
    :cond_4f
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    :cond_71
    move v1, v5

    .line 196
    .local v1, newAccount:Z
    :goto_72
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountCredentialView$4;->getProcessedCred()Lcom/lge/sns/account/Credential;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    .line 197
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountCredentialView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v4, v4, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/account/IAccountFacade;->saveCredential(Ljava/lang/String;Lcom/lge/sns/account/Credential;)I

    .line 198
    if-nez v1, :cond_9f

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    if-eqz v2, :cond_a8

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->isLogin()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 199
    :cond_9f
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountCredentialView;->snsId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/sns/account/ui/AccountCredentialView;->access$100(Lcom/lge/sns/account/ui/AccountCredentialView;Ljava/lang/String;)V

    .line 202
    :cond_a8
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v2}, Lcom/lge/sns/account/ui/AccountCredentialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050043

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v2}, Lcom/lge/sns/account/ui/AccountCredentialView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 206
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/lge/sns/account/ui/AccountCredentialView;->setResult(ILandroid/content/Intent;)V

    .line 207
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$4;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v2}, Lcom/lge/sns/account/ui/AccountCredentialView;->finish()V

    goto/16 :goto_27

    .line 194
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newAccount:Z
    :cond_cb
    const/4 v2, 0x0

    move v1, v2

    goto :goto_72
.end method
