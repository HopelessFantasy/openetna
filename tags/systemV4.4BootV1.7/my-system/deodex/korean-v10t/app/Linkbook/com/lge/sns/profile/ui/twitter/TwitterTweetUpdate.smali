.class public Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;
.super Landroid/app/Activity;
.source "TwitterTweetUpdate.java"


# static fields
.field private static final DIALOG_UPDATE:I = 0x3e8

.field private static final REQUEST_SIGNIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwitterTweetUpdate"

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountFacade:Lcom/lge/sns/account/IAccountFacade;

.field private atMode:Z

.field private newTweet:Ljava/lang/String;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private snsId:Ljava/lang/String;

.field private updateStatusDialog:Landroid/app/ProgressDialog;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 44
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->atMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->atMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->newTweet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->newTweet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method private setTitleLayout()V
    .registers 9

    .prologue
    .line 102
    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    iget-object v7, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->snsId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 103
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v1

    .line 104
    .local v1, iconData:[B
    const v6, 0x7f08000b

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 105
    .local v3, snsIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_30

    .line 106
    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, iconImage:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    .end local v2           #iconImage:Landroid/graphics/Bitmap;
    :goto_20
    const v6, 0x7f08000c

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    .local v4, titleText:Landroid/widget/TextView;
    const v6, 0x7f0500b5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 115
    return-void

    .line 109
    .end local v4           #titleText:Landroid/widget/TextView;
    :cond_30
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200ab

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 110
    .local v5, unknown:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_20
.end method

.method private updateStatus(Ljava/lang/String;Z)V
    .registers 5
    .parameter "newTweet"
    .parameter "isRetry"

    .prologue
    .line 136
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->showDialog(I)V

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 187
    if-ne p1, v1, :cond_b

    .line 188
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 189
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->newTweet:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatus(Ljava/lang/String;Z)V

    .line 192
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f030048

    const/4 v6, 0x7

    const/4 v5, 0x1

    const-string v8, "@"

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->snsId:Ljava/lang/String;

    .line 56
    const-string v4, "user_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->userId:Ljava/lang/String;

    .line 57
    const-string v4, "tweet_at"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, userName:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 59
    const v4, 0x7f030047

    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->setContentView(I)V

    .line 60
    iput-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->atMode:Z

    .line 68
    :goto_37
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 70
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->setTitleLayout()V

    .line 72
    iget-boolean v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->atMode:Z

    if-eqz v4, :cond_5c

    const-string v4, "@"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 73
    const v4, 0x7f0800cc

    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, userNameView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v3           #userNameView:Landroid/widget/TextView;
    :cond_5c
    const v4, 0x7f0800ce

    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, updateButtonView:Landroid/widget/Button;
    new-instance v4, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;

    invoke-direct {v4, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 61
    .end local v1           #updateButtonView:Landroid/widget/Button;
    :cond_6e
    invoke-static {v2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 62
    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->setContentView(I)V

    .line 63
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->atMode:Z

    goto :goto_37

    .line 65
    :cond_7b
    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->setContentView(I)V

    .line 66
    iput-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->atMode:Z

    goto :goto_37
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_34

    .line 132
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 120
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatusDialog:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatusDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 122
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatusDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050066

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatusDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->updateStatusDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 118
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method
