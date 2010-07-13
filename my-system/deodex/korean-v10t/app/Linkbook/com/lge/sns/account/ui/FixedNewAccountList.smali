.class public Lcom/lge/sns/account/ui/FixedNewAccountList;
.super Landroid/app/ListActivity;
.source "FixedNewAccountList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/ui/FixedNewAccountList$FixedNewAdapter;
    }
.end annotation


# instance fields
.field accountManager:Lcom/lge/sns/account/IAccountFacade;

.field featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;"
        }
    .end annotation
.end field

.field newAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 49
    return-void
.end method

.method private setTitleView()V
    .registers 4

    .prologue
    .line 116
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/lge/sns/account/ui/FixedNewAccountList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 117
    .local v1, icon:Landroid/widget/ImageView;
    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/lge/sns/account/ui/FixedNewAccountList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, community:Landroid/widget/TextView;
    const v2, 0x7f050045

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    if-ne p2, v1, :cond_10

    .line 137
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->finish()V

    .line 141
    .end local v0           #intent:Landroid/content/Intent;
    :cond_10
    if-nez p2, :cond_1d

    .line 142
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->finish()V

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/sns/account/ui/FixedNewAccountList;->requestWindowFeature(I)Z

    .line 105
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lcom/lge/sns/account/ui/FixedNewAccountList;->setContentView(I)V

    .line 107
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 108
    invoke-direct {p0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->setTitleView()V

    .line 109
    iget-object v1, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v1}, Lcom/lge/sns/account/IAccountFacade;->getFixedAccountList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->newAccountList:Ljava/util/List;

    .line 110
    new-instance v0, Lcom/lge/sns/account/ui/FixedNewAccountList$FixedNewAdapter;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->newAccountList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/lge/sns/account/ui/FixedNewAccountList$FixedNewAdapter;-><init>(Lcom/lge/sns/account/ui/FixedNewAccountList;Landroid/content/Context;ILjava/util/List;)V

    .line 112
    .local v0, m_adapter:Lcom/lge/sns/account/ui/FixedNewAccountList$FixedNewAdapter;
    invoke-virtual {p0, v0}, Lcom/lge/sns/account/ui/FixedNewAccountList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 124
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 125
    iget-object v2, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->newAccountList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 126
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/ui/FixedNewAccountList;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v2, v0}, Lcom/lge/sns/account/IAccountFacade;->addAccount(Lcom/lge/sns/account/Account;)V

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/lge/sns/account/ui/FixedNewAccountList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method
