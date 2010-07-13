.class public Lcom/lge/sns/account/ui/NewAccountListView;
.super Landroid/app/ListActivity;
.source "NewAccountListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x1000


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
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 32
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

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    if-ne p2, v1, :cond_10

    .line 148
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/NewAccountListView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/account/ui/NewAccountListView;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/NewAccountListView;->finish()V

    .line 152
    .end local v0           #intent:Landroid/content/Intent;
    :cond_10
    if-nez p2, :cond_1d

    .line 153
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/NewAccountListView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 154
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/account/ui/NewAccountListView;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/NewAccountListView;->finish()V

    .line 157
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x7

    .line 89
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/account/ui/NewAccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 91
    invoke-virtual {p0, v5}, Lcom/lge/sns/account/ui/NewAccountListView;->requestWindowFeature(I)Z

    .line 92
    const v3, 0x7f03001e

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/NewAccountListView;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/NewAccountListView;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 96
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/NewAccountListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, titleText:Landroid/widget/TextView;
    const v3, 0x7f050045

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const v3, 0x7f080053

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/NewAccountListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    .local v0, progressGroup:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    new-instance v1, Lcom/lge/sns/account/ui/NewAccountListView$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/sns/account/ui/NewAccountListView$1;-><init>(Lcom/lge/sns/account/ui/NewAccountListView;Landroid/view/ViewGroup;)V

    .line 128
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 132
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 133
    iget-object v2, p0, Lcom/lge/sns/account/ui/NewAccountListView;->newAccountList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 136
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/ui/NewAccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v2, v0}, Lcom/lge/sns/account/IAccountFacade;->addAccount(Lcom/lge/sns/account/Account;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/lge/sns/account/ui/NewAccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method
