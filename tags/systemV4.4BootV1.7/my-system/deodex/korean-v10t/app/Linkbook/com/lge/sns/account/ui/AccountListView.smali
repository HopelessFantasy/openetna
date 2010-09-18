.class public Lcom/lge/sns/account/ui/AccountListView;
.super Landroid/app/ListActivity;
.source "AccountListView.java"

# interfaces
.implements Lcom/lge/sns/account/IAccountFacade$AccountListener;
.implements Lcom/lge/sns/account/AccountInitializer$InitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_ID_LOGIN:I = 0x1

.field private static final CONTEXT_MENU_ID_LOGOUT:I = 0x2

.field private static final CONTEXT_MENU_ID_REMOVE:I = 0x3

.field private static final CONTEXT_MENU_ID_VIEW:I = 0x0

.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AccountListView"


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

.field adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

.field init:Ljava/lang/Boolean;

.field initManager:Lcom/lge/sns/account/AccountInitializeManager;

.field intent:Landroid/content/Intent;

.field private mHandler:Landroid/os/Handler;

.field newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field none:Landroid/widget/TextView;

.field private refreshDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/account/ui/AccountListView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/account/ui/AccountListView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addAccounts()V
    .registers 5

    .prologue
    .line 552
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v1}, Lcom/lge/sns/account/IAccountFacade;->getFixedAccountList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 553
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050041

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 559
    :goto_1b
    return-void

    .line 556
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/lge/sns/account/IAccountFacade;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 557
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b
.end method

.method private changeStatus(Lcom/lge/sns/account/Account;)V
    .registers 9
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    .line 431
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, snsId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 434
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v3, v2, v6}, Lcom/lge/sns/account/IAccountFacade;->setStatus(Ljava/lang/String;Z)V

    .line 435
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/AccountListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    const v3, 0x7f050040

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/lge/sns/account/ui/AccountListView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 443
    .end local v1           #msg:Ljava/lang/String;
    :goto_32
    return-void

    .line 439
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_32
.end method

.method private removeAccounts()V
    .registers 5

    .prologue
    .line 542
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v1}, Lcom/lge/sns/account/IAccountFacade;->getAccountList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 543
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050064

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 549
    :goto_1b
    return-void

    .line 546
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    sget-object v2, Lcom/lge/sns/account/IAccountFacade;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 547
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b
.end method

.method private showSnMenu(Lcom/lge/sns/account/Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, uid:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.SELECT_MENU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    .line 473
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    const-string v2, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    const-string v2, "user_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    return-void
.end method

.method private updateSetting()V
    .registers 3

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.MENU_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    return-void
.end method

.method private viewSiteThread(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 446
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/lge/sns/account/ui/AccountListView;->showDialog(I)V

    .line 448
    new-instance v0, Lcom/lge/sns/account/ui/AccountListView$10;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/account/ui/AccountListView$10;-><init>(Lcom/lge/sns/account/ui/AccountListView;Ljava/lang/String;)V

    .line 464
    .local v0, viewSite:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 465
    .local v1, viewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 466
    return-void
.end method


# virtual methods
.method protected isNetworkAvailable()Z
    .registers 4

    .prologue
    .line 154
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/lge/sns/account/ui/AccountListView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 156
    .local v1, ni:Landroid/net/NetworkInfo;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    :goto_f
    return v2

    :cond_10
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    goto :goto_f
.end method

.method public onAccountAdded(Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 267
    new-instance v0, Lcom/lge/sns/account/ui/AccountListView$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/account/ui/AccountListView$6;-><init>(Lcom/lge/sns/account/ui/AccountListView;Lcom/lge/sns/account/Account;)V

    invoke-super {p0, v0}, Landroid/app/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public onAccountRemoved(Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 278
    new-instance v0, Lcom/lge/sns/account/ui/AccountListView$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/account/ui/AccountListView$7;-><init>(Lcom/lge/sns/account/ui/AccountListView;Lcom/lge/sns/account/Account;)V

    invoke-super {p0, v0}, Landroid/app/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public onAccountUpdated(Lcom/lge/sns/account/Account;)V
    .registers 9
    .parameter "account"

    .prologue
    .line 290
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 291
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_2a

    .line 292
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 293
    .local v0, a:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    .line 294
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountList:Ljava/util/List;

    invoke-interface {v3, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v3, Lcom/lge/sns/account/ui/AccountListView$8;

    invoke-direct {v3, p0}, Lcom/lge/sns/account/ui/AccountListView$8;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-super {p0, v3}, Landroid/app/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    .end local v0           #a:Lcom/lge/sns/account/Account;
    :cond_2a
    return-void

    .line 291
    .restart local v0       #a:Lcom/lge/sns/account/Account;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 318
    packed-switch p2, :pswitch_data_20

    .line 330
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 320
    :pswitch_4
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05003f

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 323
    :pswitch_14
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    .line 324
    .local v0, adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {v0}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 318
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_e

    .line 394
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v3, :cond_19

    move v3, v5

    .line 427
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_d
    return v3

    .line 389
    :catch_e
    move-exception v3

    move-object v1, v3

    .line 390
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "AccountListView"

    const-string v4, "bad menuInfo"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 391
    goto :goto_d

    .line 397
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_19
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 399
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_76

    :cond_2a
    :goto_2a
    move v3, v5

    .line 427
    goto :goto_d

    .line 401
    :pswitch_2c
    if-eqz v0, :cond_35

    .line 402
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/sns/account/ui/AccountListView;->viewSiteThread(Ljava/lang/String;)V

    :cond_35
    move v3, v6

    .line 404
    goto :goto_d

    .line 406
    :pswitch_37
    if-eqz v0, :cond_3c

    .line 407
    invoke-direct {p0, v0}, Lcom/lge/sns/account/ui/AccountListView;->changeStatus(Lcom/lge/sns/account/Account;)V

    :cond_3c
    move v3, v6

    .line 409
    goto :goto_d

    .line 411
    :pswitch_3e
    if-eqz v0, :cond_43

    .line 412
    invoke-direct {p0, v0}, Lcom/lge/sns/account/ui/AccountListView;->changeStatus(Lcom/lge/sns/account/Account;)V

    :cond_43
    move v3, v6

    .line 414
    goto :goto_d

    .line 416
    :pswitch_45
    if-eqz v0, :cond_2a

    .line 417
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 418
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/account/IAccountFacade;->setStatus(Ljava/lang/String;Z)V

    .line 420
    :cond_56
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/sns/account/IAccountFacade;->removeAccountList(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05003f

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 422
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/sns/account/ui/AccountListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2a

    .line 399
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_3e
        :pswitch_37
        :pswitch_45
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x104000a

    const/4 v10, 0x7

    .line 160
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/sns/SnsManager;->isActivated()Z

    move-result v8

    if-nez v8, :cond_14

    .line 164
    :try_start_11
    invoke-static {p0}, Lcom/lge/sns/LinkbookApp;->initLinkBook(Landroid/content/Context;)V
    :try_end_14
    .catch Lcom/lge/sns/LinkbookApp$SimStateException; {:try_start_11 .. :try_end_14} :catch_b5
    .catch Lcom/lge/sns/LinkbookApp$UserIdentifyException; {:try_start_11 .. :try_end_14} :catch_d9

    .line 215
    :cond_14
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 216
    invoke-static {}, Lcom/lge/sns/account/AccountInitializeManager;->getInstance()Lcom/lge/sns/account/AccountInitializeManager;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    .line 218
    invoke-virtual {p0, v10}, Lcom/lge/sns/account/ui/AccountListView;->requestWindowFeature(I)Z

    .line 219
    const v8, 0x7f03001d

    invoke-virtual {p0, v8}, Lcom/lge/sns/account/ui/AccountListView;->setContentView(I)V

    .line 220
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f030003

    invoke-virtual {v8, v10, v9}, Landroid/view/Window;->setFeatureInt(II)V

    .line 222
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->isNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 223
    const v8, 0x7f080051

    invoke-virtual {p0, v8}, Lcom/lge/sns/account/ui/AccountListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 224
    .local v7, vg:Landroid/view/ViewGroup;
    const v8, 0x7f080052

    invoke-virtual {p0, v8}, Lcom/lge/sns/account/ui/AccountListView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 225
    .local v5, msg:Landroid/widget/TextView;
    const v8, 0x7f040005

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 226
    const v8, 0x7f05000d

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 229
    .end local v5           #msg:Landroid/widget/TextView;
    .end local v7           #vg:Landroid/view/ViewGroup;
    :cond_5b
    const v8, 0x7f08004f

    invoke-virtual {p0, v8}, Lcom/lge/sns/account/ui/AccountListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 230
    .local v1, btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/sns/account/ui/AccountListView$5;

    invoke-direct {v8, p0}, Lcom/lge/sns/account/ui/AccountListView$5;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v8, 0x7f08000e

    invoke-virtual {p0, v8}, Lcom/lge/sns/account/ui/AccountListView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 244
    .local v6, titleText:Landroid/widget/TextView;
    const v8, 0x7f050011

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v8, p0}, Lcom/lge/sns/account/IAccountFacade;->addAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V

    .line 246
    iget-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v8}, Lcom/lge/sns/account/IAccountFacade;->getAccountList()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->accountList:Ljava/util/List;

    .line 248
    new-instance v8, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    const v9, 0x7f030004

    iget-object v10, p0, Lcom/lge/sns/account/ui/AccountListView;->accountList:Ljava/util/List;

    invoke-direct {v8, p0, p0, v9, v10}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;-><init>(Lcom/lge/sns/account/ui/AccountListView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    .line 249
    iget-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    invoke-virtual {p0, v8}, Lcom/lge/sns/account/ui/AccountListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    iget-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->accountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 251
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v8, p0, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9, p0}, Lcom/lge/sns/account/AccountInitializeManager;->itializeAccount(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)Z

    goto :goto_9f

    .line 165
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v1           #btn:Landroid/widget/Button;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #titleText:Landroid/widget/TextView;
    :catch_b5
    move-exception v3

    .line 167
    .local v3, e:Lcom/lge/sns/LinkbookApp$SimStateException;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, dlg:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/lge/sns/account/ui/AccountListView$1;

    invoke-direct {v8, p0}, Lcom/lge/sns/account/ui/AccountListView$1;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const v8, 0x7f0500c1

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 183
    new-instance v8, Lcom/lge/sns/account/ui/AccountListView$2;

    invoke-direct {v8, p0}, Lcom/lge/sns/account/ui/AccountListView$2;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-virtual {v2, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 254
    .end local v2           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v3           #e:Lcom/lge/sns/LinkbookApp$SimStateException;
    :goto_d8
    return-void

    .line 190
    :catch_d9
    move-exception v3

    .line 192
    .local v3, e:Lcom/lge/sns/LinkbookApp$UserIdentifyException;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local v2       #dlg:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/lge/sns/account/ui/AccountListView$3;

    invoke-direct {v8, p0}, Lcom/lge/sns/account/ui/AccountListView$3;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    const v8, 0x7f0500c2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 206
    new-instance v8, Lcom/lge/sns/account/ui/AccountListView$4;

    invoke-direct {v8, p0}, Lcom/lge/sns/account/ui/AccountListView$4;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-virtual {v2, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_d8

    .line 253
    .end local v2           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v3           #e:Lcom/lge/sns/LinkbookApp$UserIdentifyException;
    .restart local v1       #btn:Landroid/widget/Button;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #titleText:Landroid/widget/TextView;
    :cond_fd
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_d8
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 357
    :try_start_1
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_a

    .line 363
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v5, :cond_13

    .line 383
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_9
    :goto_9
    return-void

    .line 358
    :catch_a
    move-exception v2

    .line 359
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v5, "AccountListView"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 366
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_13
    iget v3, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 367
    .local v3, id:I
    iget-object v5, p0, Lcom/lge/sns/account/ui/AccountListView;->adapter:Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;

    invoke-virtual {v5, v3}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/account/Account;

    .line 369
    .local v1, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 370
    const v5, 0x7f050065

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 372
    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 373
    const/4 v5, 0x2

    const v6, 0x7f05001d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 378
    :goto_37
    iget-object v5, p0, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/sns/account/AccountInitializeManager;->isItializing(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/account/ui/AccountListView;->init:Ljava/lang/Boolean;

    .line 379
    iget-object v5, p0, Lcom/lge/sns/account/ui/AccountListView;->init:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    .line 380
    const/4 v5, 0x3

    const v6, 0x7f050012

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_9

    .line 375
    :cond_57
    const/4 v5, 0x1

    const v6, 0x7f05001c

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_37
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_34

    .line 519
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 490
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 491
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 492
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/account/ui/AccountListView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/account/ui/AccountListView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/account/ui/AccountListView$11;

    invoke-direct {v3, p0}, Lcom/lge/sns/account/ui/AccountListView$11;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 488
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 478
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 479
    .local v0, result:Z
    const v1, 0x7f05000f

    invoke-interface {p1, v4, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 480
    const/4 v1, 0x2

    const v2, 0x7f050010

    invoke-interface {p1, v4, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 481
    const/4 v1, -0x1

    const/4 v2, 0x3

    const v3, 0x7f050028

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 483
    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    if-eqz v0, :cond_c

    .line 259
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/account/IAccountFacade;->removeAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V

    .line 261
    :cond_c
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/account/AccountInitializeManager;->removeListeners(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 264
    :cond_15
    return-void
.end method

.method public onFeedAdded(Ljava/lang/String;I)V
    .registers 3
    .parameter "snsId"
    .parameter "count"

    .prologue
    .line 563
    return-void
.end method

.method public onInitializeCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "snsId"

    .prologue
    .line 307
    new-instance v0, Lcom/lge/sns/account/ui/AccountListView$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/account/ui/AccountListView$9;-><init>(Lcom/lge/sns/account/ui/AccountListView;)V

    invoke-super {p0, v0}, Landroid/app/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 334
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v3}, Lcom/lge/sns/account/IAccountFacade;->getAccountList()Ljava/util/List;

    move-result-object v2

    .line 336
    .local v2, dbAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 337
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    .line 339
    .local v1, cred:Lcom/lge/sns/account/Credential;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 340
    invoke-direct {p0, v0}, Lcom/lge/sns/account/ui/AccountListView;->showSnMenu(Lcom/lge/sns/account/Account;)V

    .line 348
    :goto_19
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/lge/sns/account/ui/AccountListView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    return-void

    .line 342
    :cond_20
    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/lge/sns/account/ui/AccountListView;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 343
    invoke-direct {p0, v0}, Lcom/lge/sns/account/ui/AccountListView;->showSnMenu(Lcom/lge/sns/account/Account;)V

    .line 345
    :cond_2b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    .line 346
    iget-object v3, p0, Lcom/lge/sns/account/ui/AccountListView;->intent:Landroid/content/Intent;

    const-string v4, "sns_id"

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_19
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 523
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 533
    :goto_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 525
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountListView;->addAccounts()V

    move v0, v1

    .line 526
    goto :goto_9

    .line 528
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountListView;->removeAccounts()V

    move v0, v1

    .line 529
    goto :goto_9

    .line 531
    :pswitch_14
    invoke-direct {p0}, Lcom/lge/sns/account/ui/AccountListView;->updateSetting()V

    goto :goto_8

    .line 523
    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method
