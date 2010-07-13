.class public Lcom/lge/sns/feed/ui/FriendRequestView;
.super Landroid/app/Activity;
.source "FriendRequestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DIALOG_PROGRESS:I = 0x3e8

.field private static final RC_SIGNIN:I = 0x7d2

.field static final TAG:Ljava/lang/String; = "FriendRequestView"

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private acceptFlag:Z

.field private clickButtonDialog:Landroid/app/ProgressDialog;

.field private completeFriendRequest:Ljava/lang/Runnable;

.field private friendRequest:Lcom/lge/sns/profile/FriendRequest;

.field private final handler:Landroid/os/Handler;

.field private saveFeedId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/FriendRequestView;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    .line 55
    iput-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->handler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->acceptFlag:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->saveFeedId:J

    .line 188
    new-instance v0, Lcom/lge/sns/feed/ui/FriendRequestView$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/FriendRequestView$2;-><init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->completeFriendRequest:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/FriendRequestView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/FriendRequestView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->finishFunctionCall()V

    return-void
.end method

.method static synthetic access$202(Lcom/lge/sns/feed/ui/FriendRequestView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->acceptFlag:Z

    return p1
.end method

.method private addButtonView()V
    .registers 5

    .prologue
    .line 268
    const v3, 0x7f080034

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, acceptButtonView:Landroid/widget/Button;
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 270
    .local v2, ignoreButtonView:Landroid/widget/Button;
    const v3, 0x7f080036

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 272
    .local v1, cancelButtonView:Landroid/widget/Button;
    new-instance v3, Lcom/lge/sns/feed/ui/FriendRequestView$4;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/FriendRequestView$4;-><init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v3, Lcom/lge/sns/feed/ui/FriendRequestView$5;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/FriendRequestView$5;-><init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance v3, Lcom/lge/sns/feed/ui/FriendRequestView$6;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/FriendRequestView$6;-><init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method private addFriendRequestView()V
    .registers 4

    .prologue
    .line 132
    const v2, 0x7f080032

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, requestUserView:Landroid/widget/TextView;
    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    .local v0, requestMessage:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    invoke-virtual {v2}, Lcom/lge/sns/profile/FriendRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 138
    iget-object v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    invoke-virtual {v2}, Lcom/lge/sns/profile/FriendRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_23
    const v2, 0x7f050038

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    return-void

    .line 139
    :cond_2a
    iget-object v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    invoke-virtual {v2}, Lcom/lge/sns/profile/FriendRequest;->getUserName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 140
    iget-object v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    invoke-virtual {v2}, Lcom/lge/sns/profile/FriendRequest;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 142
    :cond_3c
    const v2, 0x7f0500a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_23
.end method

.method private finishFunctionCall()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->acceptFlag:Z

    if-ne v1, v2, :cond_22

    .line 205
    const v1, 0x7f05009b

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 210
    :goto_f
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "feed_id"

    iget-wide v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->saveFeedId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->setResult(ILandroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->finish()V

    .line 214
    return-void

    .line 207
    .end local v0           #intent:Landroid/content/Intent;
    :cond_22
    const v1, 0x7f05009c

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method private getFriendRequest(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "feed_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->saveFeedId:J

    .line 120
    if-eqz v1, :cond_1c

    .line 121
    sget-object v2, Lcom/lge/sns/feed/ui/FriendRequestView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    .line 122
    .local v0, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v0, v1}, Lcom/lge/sns/profile/IProfileFacade;->getFriendRequest(Landroid/net/Uri;)Lcom/lge/sns/profile/FriendRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    .line 124
    .end local v0           #profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :cond_1c
    return-void
.end method

.method private responseFriendRequestSummit(Z)V
    .registers 11
    .parameter "accept"

    .prologue
    .line 223
    sget-object v7, Lcom/lge/sns/feed/ui/FriendRequestView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v7, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v3

    .line 224
    .local v3, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    sget-object v7, Lcom/lge/sns/feed/ui/FriendRequestView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v7, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 226
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v7, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    invoke-virtual {v7}, Lcom/lge/sns/profile/FriendRequest;->getSnsId()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, snsId:Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, userId:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->friendRequest:Lcom/lge/sns/profile/FriendRequest;

    invoke-virtual {v7}, Lcom/lge/sns/profile/FriendRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, requestId:Ljava/lang/String;
    :try_start_1c
    invoke-interface {v3, v5, v6, v4, p1}, Lcom/lge/sns/profile/IProfileFacade;->responseFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1f
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1c .. :try_end_1f} :catch_20
    .catch Lcom/lge/sns/SnsException; {:try_start_1c .. :try_end_1f} :catch_33

    .line 244
    :goto_1f
    return-void

    .line 232
    :catch_20
    move-exception v1

    .line 233
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "sns_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/16 v7, 0x7d2

    invoke-virtual {p0, v2, v7}, Lcom/lge/sns/feed/ui/FriendRequestView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1f

    .line 236
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_33
    move-exception v1

    .line 237
    .local v1, e:Lcom/lge/sns/SnsException;
    const-string v7, "FriendRequestView"

    const-string v8, "Fail to process Friend Request"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    new-instance v7, Lcom/lge/sns/feed/ui/FriendRequestView$3;

    invoke-direct {v7, p0}, Lcom/lge/sns/feed/ui/FriendRequestView$3;-><init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    invoke-virtual {p0, v7}, Lcom/lge/sns/feed/ui/FriendRequestView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1f
.end method


# virtual methods
.method public addFriendRequestTopView()V
    .registers 4

    .prologue
    .line 84
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 85
    .local v1, icon:Landroid/widget/ImageView;
    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FriendRequestView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, friendRequest:Landroid/widget/TextView;
    const v2, 0x7f05001b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    const/4 v1, -0x1

    if-ne p2, v1, :cond_9

    .line 253
    packed-switch p1, :pswitch_data_16

    .line 260
    :cond_9
    :goto_9
    return-void

    .line 255
    :pswitch_a
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->setResult(ILandroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->finish()V

    goto :goto_9

    .line 253
    :pswitch_data_16
    .packed-switch 0x7d2
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->requestWindowFeature(I)Z

    .line 67
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->getFriendRequest(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->addFriendRequestTopView()V

    .line 74
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->addFriendRequestView()V

    .line 76
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->addButtonView()V

    .line 77
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_34

    .line 164
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 151
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    .line 152
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 153
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f05009a

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FriendRequestView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FriendRequestView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/FriendRequestView$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/FriendRequestView$1;-><init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->clickButtonDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 149
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onFriendRequestStarted()V
    .registers 3

    .prologue
    .line 172
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FriendRequestView;->showDialog(I)V

    .line 174
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v1, 0x4

    if-ne p1, v1, :cond_10

    .line 99
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FriendRequestView;->finish()V

    .line 102
    const/4 v1, 0x1

    .line 105
    .end local v0           #intent:Landroid/content/Intent;
    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f
.end method

.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->acceptFlag:Z

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->responseFriendRequestSummit(Z)V

    .line 185
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/FriendRequestView;->completeFriendRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method
