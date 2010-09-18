.class public Lcom/lge/sns/account/ui/AccountRemoveListView;
.super Landroid/app/ListActivity;
.source "AccountRemoveListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;
    }
.end annotation


# instance fields
.field accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field accountManager:Lcom/lge/sns/account/IAccountFacade;

.field added:Z

.field flag:I

.field initManager:Lcom/lge/sns/account/AccountInitializeManager;

.field removeListView:Landroid/widget/ListView;

.field removeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    .line 61
    iput v1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->flag:I

    .line 62
    iput-boolean v1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->added:Z

    .line 63
    iput-boolean v1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removed:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/account/ui/AccountRemoveListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->remove()V

    return-void
.end method

.method private deselectAll()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 232
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;

    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->notifyDataSetChanged()V

    .line 233
    return-void
.end method

.method private remove()V
    .registers 7

    .prologue
    .line 107
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_76

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->titleList:Ljava/util/List;

    .line 109
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 110
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->titleList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 111
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->titleList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 114
    .end local v0           #account:Lcom/lge/sns/account/Account;
    :cond_37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, dlg:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f050010

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->titleList:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->titleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    const v3, 0x104000a

    new-instance v4, Lcom/lge/sns/account/ui/AccountRemoveListView$1;

    invoke-direct {v4, p0}, Lcom/lge/sns/account/ui/AccountRemoveListView$1;-><init>(Lcom/lge/sns/account/ui/AccountRemoveListView;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    const/high16 v3, 0x104

    new-instance v4, Lcom/lge/sns/account/ui/AccountRemoveListView$2;

    invoke-direct {v4, p0}, Lcom/lge/sns/account/ui/AccountRemoveListView$2;-><init>(Lcom/lge/sns/account/ui/AccountRemoveListView;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 140
    .end local v1           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_75
    return-void

    .line 137
    :cond_76
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050049

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_75
.end method

.method private selectAll()V
    .registers 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 221
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/account/AccountInitializeManager;->isItializing(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 222
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 224
    :cond_24
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 227
    .end local v0           #account:Lcom/lge/sns/account/Account;
    :cond_2a
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;

    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->notifyDataSetChanged()V

    .line 228
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x7

    .line 143
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/lge/sns/account/ui/AccountRemoveListView;->requestWindowFeature(I)Z

    .line 145
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/AccountRemoveListView;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f030003

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 148
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 150
    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/AccountRemoveListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    .local v2, titleText:Landroid/widget/TextView;
    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 153
    invoke-static {}, Lcom/lge/sns/account/AccountInitializeManager;->getInstance()Lcom/lge/sns/account/AccountInitializeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    .line 154
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v3}, Lcom/lge/sns/account/IAccountFacade;->getAccountList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountList:Ljava/util/List;

    .line 155
    new-instance v1, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;

    const v3, 0x7f030006

    iget-object v4, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountList:Ljava/util/List;

    invoke-direct {v1, p0, p0, v3, v4}, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;-><init>(Lcom/lge/sns/account/ui/AccountRemoveListView;Landroid/content/Context;ILjava/util/List;)V

    .line 156
    .local v1, r_adapter:Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;
    invoke-virtual {p0, v1}, Lcom/lge/sns/account/ui/AccountRemoveListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    const v3, 0x7f080056

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/AccountRemoveListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 159
    .local v0, deleteOk:Landroid/widget/Button;
    new-instance v3, Lcom/lge/sns/account/ui/AccountRemoveListView$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/account/ui/AccountRemoveListView$3;-><init>(Lcom/lge/sns/account/ui/AccountRemoveListView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 167
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 168
    const v2, 0x7f080013

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 169
    .local v1, chk:Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->accountList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 171
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 172
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 174
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removed:Z

    .line 180
    :cond_2c
    :goto_2c
    return-void

    .line 176
    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->added:Z

    goto :goto_2c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    move v0, v2

    .line 215
    :goto_a
    return v0

    .line 202
    :pswitch_b
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->remove()V

    move v0, v1

    .line 203
    goto :goto_a

    .line 206
    :pswitch_10
    iput v1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->flag:I

    .line 207
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->selectAll()V

    move v0, v1

    .line 208
    goto :goto_a

    .line 211
    :pswitch_17
    iput v2, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->flag:I

    .line 212
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->deselectAll()V

    move v0, v1

    .line 213
    goto :goto_a

    .line 200
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const v5, 0x7f050012

    const v4, 0x108003c

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_12
    iput v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->flag:I

    .line 184
    iget v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView;->flag:I

    packed-switch v0, :pswitch_data_50

    move v0, v2

    .line 196
    :goto_1a
    return v0

    :cond_1b
    move v0, v2

    .line 183
    goto :goto_12

    .line 186
    :pswitch_1d
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 187
    invoke-interface {p1, v1, v1, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    const v0, 0x104000d

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v2

    .line 189
    goto :goto_1a

    .line 191
    :pswitch_36
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 192
    invoke-interface {p1, v1, v1, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    const v0, 0x7f05004c

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v2

    .line 194
    goto :goto_1a

    .line 184
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_36
    .end packed-switch
.end method
