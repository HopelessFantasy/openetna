.class public Lcom/lge/sns/account/ui/AccountCredentialView;
.super Landroid/app/Activity;
.source "AccountCredentialView.java"


# static fields
.field static final CRED_SNS_E:Ljava/lang/String; = "SnsException"

.field static final CRED_UNAUTH_E:Ljava/lang/String; = "UnauthorizedException"

.field private static final TAG:Ljava/lang/String; = "AccountProviderAdapter"


# instance fields
.field accountManager:Lcom/lge/sns/account/IAccountFacade;

.field currentAccount:Lcom/lge/sns/account/Account;

.field currentCredential:Lcom/lge/sns/account/Credential;

.field dlg:Landroid/app/ProgressDialog;

.field private init:Z

.field loginOk:Landroid/widget/Button;

.field final m_handler:Landroid/os/Handler;

.field rem:Z

.field signingin:Z

.field snsId:Ljava/lang/String;

.field uid:Ljava/lang/String;

.field final updateResult:Ljava/lang/Runnable;

.field user_id:Ljava/lang/String;

.field user_password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 58
    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->m_handler:Landroid/os/Handler;

    .line 65
    iput-boolean v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->signingin:Z

    .line 179
    new-instance v0, Lcom/lge/sns/account/ui/AccountCredentialView$4;

    invoke-direct {v0, p0}, Lcom/lge/sns/account/ui/AccountCredentialView$4;-><init>(Lcom/lge/sns/account/ui/AccountCredentialView;)V

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->updateResult:Ljava/lang/Runnable;

    .line 222
    iput-boolean v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->init:Z

    return-void
.end method

.method static synthetic access$100(Lcom/lge/sns/account/ui/AccountCredentialView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/lge/sns/account/ui/AccountCredentialView;->initAccountContents(Ljava/lang/String;)V

    return-void
.end method

.method private initAccountContents(Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"

    .prologue
    .line 225
    iget-boolean v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->init:Z

    if-nez v1, :cond_f

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->init:Z

    .line 227
    invoke-static {}, Lcom/lge/sns/account/AccountInitializeManager;->getInstance()Lcom/lge/sns/account/AccountInitializeManager;

    move-result-object v0

    .line 229
    .local v0, initManager:Lcom/lge/sns/account/AccountInitializeManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/lge/sns/account/AccountInitializeManager;->itializeAccount(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)Z

    .line 231
    .end local v0           #initManager:Lcom/lge/sns/account/AccountInitializeManager;
    :cond_f
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    if-nez p2, :cond_10

    .line 236
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountCredentialView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/account/ui/AccountCredentialView;->setResult(ILandroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountCredentialView;->finish()V

    .line 240
    .end local v0           #intent:Landroid/content/Intent;
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->requestWindowFeature(I)Z

    .line 71
    const v11, 0x7f030001

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountCredentialView;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x7

    const v13, 0x7f030002

    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setFeatureInt(II)V

    .line 75
    const v11, 0x7f080002

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 76
    .local v10, userId:Landroid/widget/TextView;
    const v11, 0x7f080003

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, password:Landroid/widget/TextView;
    const v11, 0x7f080006

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 78
    .local v7, remember:Landroid/widget/CheckBox;
    const v11, 0x7f080005

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 80
    .local v6, remLabel:Landroid/widget/TextView;
    const v11, 0x7f080008

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    .line 81
    const v11, 0x7f080009

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 82
    .local v2, loginCancel:Landroid/widget/Button;
    const v11, 0x7f08000b

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 83
    .local v8, titleImage:Landroid/widget/ImageView;
    const v11, 0x7f08000c

    invoke-virtual {p0, v11}, Lcom/lge/sns/account/ui/AccountCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 85
    .local v9, titleText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountCredentialView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v11

    iput-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 87
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    const-string v12, "sns_id"

    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v11

    iput-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentAccount:Lcom/lge/sns/account/Account;

    .line 88
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v11}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v11

    iput-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    .line 89
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v11}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->snsId:Ljava/lang/String;

    .line 90
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v11}, Lcom/lge/sns/account/Account;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    const v11, 0x7f050046

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 92
    const/high16 v11, 0x104

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    if-eqz v11, :cond_dc

    .line 95
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v11}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, id:Ljava/lang/String;
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v11}, Lcom/lge/sns/account/Credential;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, pw:Ljava/lang/String;
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v11}, Lcom/lge/sns/account/Credential;->isRemeber()Z

    move-result v5

    .line 99
    .local v5, rem:Z
    if-eqz v0, :cond_dc

    .line 100
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 103
    if-eqz v5, :cond_d4

    .line 104
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    const v11, 0x7f02004b

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 108
    :cond_d4
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    if-eqz v5, :cond_10b

    const/4 v12, 0x1

    :goto_d9
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setFocusable(Z)V

    .line 112
    .end local v0           #id:Ljava/lang/String;
    .end local v4           #pw:Ljava/lang/String;
    .end local v5           #rem:Z
    :cond_dc
    const-string v11, "FB"

    iget-object v12, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->snsId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f0

    .line 113
    const-string v11, ""

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    :cond_f0
    new-instance v11, Lcom/lge/sns/account/ui/AccountCredentialView$1;

    invoke-direct {v11, p0, v7}, Lcom/lge/sns/account/ui/AccountCredentialView$1;-><init>(Lcom/lge/sns/account/ui/AccountCredentialView;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v11, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    new-instance v12, Lcom/lge/sns/account/ui/AccountCredentialView$2;

    invoke-direct {v12, p0, v10, v3, v7}, Lcom/lge/sns/account/ui/AccountCredentialView$2;-><init>(Lcom/lge/sns/account/ui/AccountCredentialView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v11, Lcom/lge/sns/account/ui/AccountCredentialView$3;

    invoke-direct {v11, p0}, Lcom/lge/sns/account/ui/AccountCredentialView$3;-><init>(Lcom/lge/sns/account/ui/AccountCredentialView;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void

    .line 108
    .restart local v0       #id:Ljava/lang/String;
    .restart local v4       #pw:Ljava/lang/String;
    .restart local v5       #rem:Z
    :cond_10b
    const/4 v12, 0x0

    goto :goto_d9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_38

    .line 258
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 245
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lge/sns/account/ui/AccountCredentialView$5;

    invoke-direct {v2, p0}, Lcom/lge/sns/account/ui/AccountCredentialView$5;-><init>(Lcom/lge/sns/account/ui/AccountCredentialView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 253
    :pswitch_22
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->dlg:Landroid/app/ProgressDialog;

    .line 254
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->dlg:Landroid/app/ProgressDialog;

    const v1, 0x7f050061

    invoke-virtual {p0, v1}, Lcom/lge/sns/account/ui/AccountCredentialView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView;->dlg:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 243
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_22
        :pswitch_5
    .end packed-switch
.end method
