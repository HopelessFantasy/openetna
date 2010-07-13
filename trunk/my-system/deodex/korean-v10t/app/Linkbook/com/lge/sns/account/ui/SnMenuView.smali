.class public Lcom/lge/sns/account/ui/SnMenuView;
.super Lcom/lge/sns/common/ui/LiteTabActivity;
.source "SnMenuView.java"

# interfaces
.implements Lcom/lge/sns/account/IAccountFacade$AccountListener;
.implements Lcom/lge/sns/account/AccountInitializer$InitializeListener;


# static fields
.field private static final WAIT_FOR_LOADING:I = 0x1


# instance fields
.field account:Lcom/lge/sns/account/Account;

.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field feedCount:I

.field messageLoading:Ljava/lang/String;

.field notified:Z

.field notifyJob:Ljava/lang/Runnable;

.field refreshDialog:Landroid/app/ProgressDialog;

.field private snsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/lge/sns/common/ui/LiteTabActivity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 51
    iput-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView;->messageLoading:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->feedCount:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->notified:Z

    .line 54
    iput-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView;->notifyJob:Ljava/lang/Runnable;

    return-void
.end method

.method private getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "account"

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v0

    .line 176
    .local v0, icon:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    .local v1, photo:Landroid/graphics/Bitmap;
    return-object v1
.end method


# virtual methods
.method public onAccountAdded(Lcom/lge/sns/account/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 183
    return-void
.end method

.method public onAccountRemoved(Lcom/lge/sns/account/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 187
    new-instance v0, Lcom/lge/sns/account/ui/SnMenuView$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/account/ui/SnMenuView$3;-><init>(Lcom/lge/sns/account/ui/SnMenuView;)V

    invoke-super {p0, v0}, Lcom/lge/sns/common/ui/LiteTabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    :cond_14
    return-void
.end method

.method public onAccountUpdated(Lcom/lge/sns/account/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 197
    new-instance v0, Lcom/lge/sns/account/ui/SnMenuView$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/account/ui/SnMenuView$4;-><init>(Lcom/lge/sns/account/ui/SnMenuView;Lcom/lge/sns/account/Account;)V

    invoke-super {p0, v0}, Lcom/lge/sns/common/ui/LiteTabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    :cond_14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 21
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super/range {p0 .. p1}, Lcom/lge/sns/common/ui/LiteTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/account/ui/SnMenuView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 61
    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->requestWindowFeature(I)Z

    .line 62
    const v16, 0x7f030023

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->setContentView(I)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/account/ui/SnMenuView;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7

    const v18, 0x7f030002

    invoke-virtual/range {v16 .. v18}, Landroid/view/Window;->setFeatureInt(II)V

    .line 65
    const v16, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 66
    .local v13, titleImage:Landroid/widget/ImageView;
    const v16, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 68
    .local v14, titleText:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/account/ui/SnMenuView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 70
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/lge/sns/account/IAccountFacade;->addAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V

    .line 71
    const-string v16, "sns_id"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15d

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    .line 85
    :goto_8c
    invoke-static {}, Lcom/lge/sns/account/AccountInitializeManager;->getInstance()Lcom/lge/sns/account/AccountInitializeManager;

    move-result-object v5

    .line 87
    .local v5, initManager:Lcom/lge/sns/account/AccountInitializeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/account/AccountInitializeManager;->isItializing(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)Z

    move-result v16

    if-eqz v16, :cond_b6

    .line 88
    const v16, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 89
    .local v10, progress:Landroid/widget/ProgressBar;
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    .end local v10           #progress:Landroid/widget/ProgressBar;
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/account/Account;->isInitilaized()Z

    move-result v16

    if-nez v16, :cond_da

    .line 93
    new-instance v16, Lcom/lge/sns/account/ui/SnMenuView$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView$1;-><init>(Lcom/lge/sns/account/ui/SnMenuView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/account/ui/SnMenuView;->notifyJob:Ljava/lang/Runnable;

    .line 104
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->showDialog(I)V

    .line 107
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/account/ui/SnMenuView;->getTabHost()Lcom/lge/sns/common/ui/LiteTabHost;

    move-result-object v11

    .line 112
    .local v11, tabHost:Lcom/lge/sns/common/ui/LiteTabHost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/lge/sns/account/ui/SnMenuFactory;->getSnMenus(Landroid/content/Context;Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus;

    move-result-object v9

    .line 113
    .local v9, menus:Lcom/lge/sns/account/ui/SnMenus;
    invoke-virtual {v9}, Lcom/lge/sns/account/ui/SnMenus;->getItemCount()I

    move-result v8

    .line 114
    .local v8, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_115
    if-ge v4, v8, :cond_190

    .line 115
    invoke-virtual {v9, v4}, Lcom/lge/sns/account/ui/SnMenus;->getTag(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/common/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v12

    .line 116
    .local v12, tabSpec:Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    invoke-virtual {v9, v4}, Lcom/lge/sns/account/ui/SnMenus;->getLabel(I)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, label:Ljava/lang/String;
    if-nez v7, :cond_134

    .line 118
    invoke-virtual {v9, v4}, Lcom/lge/sns/account/ui/SnMenus;->getLabelIndex(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/account/ui/SnMenuView;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 120
    :cond_134
    invoke-virtual {v9, v4}, Lcom/lge/sns/account/ui/SnMenus;->getIcon(I)I

    move-result v16

    if-lez v16, :cond_18c

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/account/ui/SnMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual {v9, v4}, Lcom/lge/sns/account/ui/SnMenus;->getIcon(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    .line 125
    :goto_14d
    invoke-virtual {v9, v4}, Lcom/lge/sns/account/ui/SnMenus;->getIntent(I)Landroid/content/Intent;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    .line 126
    invoke-virtual {v11, v12}, Lcom/lge/sns/common/ui/LiteTabHost;->addTab(Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 75
    .end local v4           #i:I
    .end local v5           #initManager:Lcom/lge/sns/account/AccountInitializeManager;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #length:I
    .end local v9           #menus:Lcom/lge/sns/account/ui/SnMenus;
    .end local v11           #tabHost:Lcom/lge/sns/common/ui/LiteTabHost;
    .end local v12           #tabSpec:Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    :cond_15d
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 76
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_188

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Landroid/net/Uri;)Lcom/lge/sns/account/Account;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    goto/16 :goto_8c

    .line 80
    :cond_188
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/account/ui/SnMenuView;->finish()V

    .line 143
    .end local v15           #uri:Landroid/net/Uri;
    :goto_18b
    return-void

    .line 123
    .restart local v4       #i:I
    .restart local v5       #initManager:Lcom/lge/sns/account/AccountInitializeManager;
    .restart local v7       #label:Ljava/lang/String;
    .restart local v8       #length:I
    .restart local v9       #menus:Lcom/lge/sns/account/ui/SnMenus;
    .restart local v11       #tabHost:Lcom/lge/sns/common/ui/LiteTabHost;
    .restart local v12       #tabSpec:Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    :cond_18c
    invoke-virtual {v12, v7}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    goto :goto_14d

    .line 130
    .end local v7           #label:Ljava/lang/String;
    .end local v12           #tabSpec:Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    :cond_190
    const/4 v3, 0x0

    .line 131
    .local v3, activeTab:Ljava/lang/String;
    if-eqz p1, :cond_19d

    .line 132
    const-string v16, "currentTab"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_19d
    if-nez v3, :cond_1ad

    const-string v16, "com.lge.sns.account.intent.action.VIEW_MESSAGE"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1ad

    .line 135
    const-string v3, "Inbox"

    .line 138
    :cond_1ad
    if-eqz v3, :cond_1b3

    .line 139
    invoke-virtual {v11, v3}, Lcom/lge/sns/common/ui/LiteTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_18b

    .line 141
    :cond_1b3
    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/sns/common/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_18b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_38

    .line 171
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 157
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 158
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/lge/sns/account/ui/SnMenuView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->messageLoading:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 160
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView;->messageLoading:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/account/ui/SnMenuView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/account/ui/SnMenuView$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/account/ui/SnMenuView$2;-><init>(Lcom/lge/sns/account/ui/SnMenuView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 155
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isInitilaized()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sns/account/ui/SnMenuView;->dismissDialog(I)V

    .line 149
    :cond_10
    invoke-super {p0}, Lcom/lge/sns/common/ui/LiteTabActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/account/IAccountFacade;->removeAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V

    .line 151
    invoke-static {}, Lcom/lge/sns/account/AccountInitializeManager;->getInstance()Lcom/lge/sns/account/AccountInitializeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lge/sns/account/AccountInitializeManager;->removeListener(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 152
    return-void
.end method

.method public onFeedAdded(Ljava/lang/String;I)V
    .registers 4
    .parameter "snsId"
    .parameter "count"

    .prologue
    .line 220
    iput p2, p0, Lcom/lge/sns/account/ui/SnMenuView;->feedCount:I

    .line 221
    monitor-enter p0

    .line 222
    :try_start_3
    iget-boolean v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->notified:Z

    if-eqz v0, :cond_c

    .line 223
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/account/ui/SnMenuView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/account/ui/SnMenuView;->notified:Z

    .line 226
    monitor-exit p0

    .line 227
    return-void

    .line 226
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onInitializeCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "snsId"

    .prologue
    .line 208
    new-instance v0, Lcom/lge/sns/account/ui/SnMenuView$5;

    invoke-direct {v0, p0}, Lcom/lge/sns/account/ui/SnMenuView$5;-><init>(Lcom/lge/sns/account/ui/SnMenuView;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/account/ui/SnMenuView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method
