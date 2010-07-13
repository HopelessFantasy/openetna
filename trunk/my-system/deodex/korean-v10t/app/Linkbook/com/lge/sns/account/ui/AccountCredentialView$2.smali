.class Lcom/lge/sns/account/ui/AccountCredentialView$2;
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

.field final synthetic val$password:Landroid/widget/TextView;

.field final synthetic val$remember:Landroid/widget/CheckBox;

.field final synthetic val$userId:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountCredentialView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->val$userId:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->val$password:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/account/ui/AccountCredentialView$2;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountCredentialView$2;->checkAuth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkAuth()Ljava/lang/String;
    .registers 10

    .prologue
    const-string v8, "UnauthorizedException"

    const-string v7, "AccountProviderAdapter"

    .line 157
    :try_start_4
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v3, v3, Lcom/lge/sns/account/ui/AccountCredentialView;->snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v4, v4, Lcom/lge/sns/account/ui/AccountCredentialView;->user_id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v5, v5, Lcom/lge/sns/account/ui/AccountCredentialView;->user_password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-boolean v6, v6, Lcom/lge/sns/account/ui/AccountCredentialView;->rem:Z

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/lge/sns/account/IAccountFacade;->checkAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;
    :try_end_2c
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_4 .. :try_end_2c} :catch_2d
    .catch Lcom/lge/sns/SnsException; {:try_start_4 .. :try_end_2c} :catch_3a

    .line 165
    :goto_2c
    return-object v1

    .line 159
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v1, "AccountProviderAdapter"

    const-string v1, "UnauthorizedException"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "UnauthorizedException"

    move-object v1, v8

    goto :goto_2c

    .line 163
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v1, "AccountProviderAdapter"

    const-string v1, "AccountCredentialView"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const-string v1, "SnsException"

    goto :goto_2c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 127
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->val$userId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->user_id:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->val$password:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->user_password:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->rem:Z

    .line 131
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->user_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->user_password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4c

    .line 132
    :cond_3b
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    invoke-virtual {v1}, Lcom/lge/sns/account/ui/AccountCredentialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05004a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_4b
    return-void

    .line 135
    :cond_4c
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    monitor-enter v1

    .line 136
    :try_start_51
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-boolean v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->signingin:Z

    if-nez v2, :cond_72

    .line 137
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->signingin:Z

    .line 138
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/sns/account/ui/AccountCredentialView;->showDialog(I)V

    .line 139
    new-instance v0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;-><init>(Lcom/lge/sns/account/ui/AccountCredentialView$2;)V

    .line 148
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    .end local v0           #t:Ljava/lang/Thread;
    :cond_72
    monitor-exit v1

    goto :goto_4b

    :catchall_74
    move-exception v2

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_74

    throw v2
.end method
