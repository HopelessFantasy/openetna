.class public Lcom/lge/sns/profile/ui/twitter/TwitterProfile;
.super Landroid/app/Activity;
.source "TwitterProfile.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final MENU_ID_REFRESH:I = 0x2

.field private static final PHOTO_PICKED:I = 0x7d1

.field private static final RC_DOWNLOAD_IMAGE:I = 0x7d0

.field private static final RC_SIGNIN:I = 0x7d2

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field SettingManager:Lcom/lge/sns/setting/ISettingFacade;

.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private completeMessage:Ljava/lang/Runnable;

.field private feedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private mHandler:Landroid/os/Handler;

.field myProfile:Z

.field private profile:Lcom/lge/sns/profile/Profile;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private tweetAddViewFromFeed:Ljava/lang/Runnable;

.field private tweetLayout:Landroid/view/ViewGroup;

.field tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation
.end field

.field tweetsFeed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->SettingManager:Lcom/lge/sns/setting/ISettingFacade;

    .line 54
    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->myProfile:Z

    .line 68
    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweets:Ljava/util/List;

    .line 69
    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->mHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->completeMessage:Ljava/lang/Runnable;

    .line 304
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetAddViewFromFeed:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Lcom/lge/sns/profile/Profile;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->completeMessage:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Ljava/lang/Object;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->createTweetView(Ljava/lang/Object;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/feed/IFeedFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetAddViewFromFeed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->initInfoView()V

    return-void
.end method

.method private addSnsNameImage()V
    .registers 5

    .prologue
    .line 104
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_43

    .line 108
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void

    .line 110
    :cond_43
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private createTweetView(Ljava/lang/Object;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "obj"
    .parameter "textViewResourceId"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    .line 381
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 382
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v2, p2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 384
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0800d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 385
    .local v1, date:Landroid/widget/TextView;
    const v6, 0x7f0800d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 387
    .local v4, message:Landroid/widget/TextView;
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/feed/Feed;

    move-object v3, v0

    .line 388
    .local v3, item:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v6, v7}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 397
    invoke-static {v4, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 399
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 401
    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 402
    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 403
    return-object v5
.end method

.method private getProfile()Lcom/lge/sns/profile/Profile;
    .registers 12

    .prologue
    const/4 v9, 0x1

    const-string v10, "sns_id"

    .line 407
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 408
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 410
    .local v5, profile:Lcom/lge/sns/profile/Profile;
    const/4 v6, 0x0

    .line 411
    .local v6, snsId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 414
    .local v7, userId:Ljava/lang/String;
    :try_start_e
    const-string v8, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 415
    const-string v8, "sns_id"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 416
    const-string v8, "user_id"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 417
    sget-object v8, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v8, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, myUid:Ljava/lang/String;
    if-eqz v7, :cond_3e

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 420
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->myProfile:Z

    .line 421
    iget-object v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v8, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    .line 434
    .end local v4           #myUid:Ljava/lang/String;
    :cond_3d
    :goto_3d
    return-object v5

    .line 423
    .restart local v4       #myUid:Ljava/lang/String;
    :cond_3e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->myProfile:Z

    .line 424
    iget-object v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v8, v6, v4}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_46
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_e .. :try_end_46} :catch_48
    .catch Lcom/lge/sns/SnsException; {:try_start_e .. :try_end_46} :catch_5c

    move-result-object v5

    goto :goto_3d

    .line 427
    .end local v4           #myUid:Ljava/lang/String;
    :catch_48
    move-exception v8

    move-object v1, v8

    .line 428
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, intentCredential:Landroid/content/Intent;
    const-string v8, "sns_id"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/16 v8, 0x7d2

    invoke-virtual {p0, v3, v8}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3d

    .line 431
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v3           #intentCredential:Landroid/content/Intent;
    :catch_5c
    move-exception v8

    move-object v1, v8

    .line 432
    .local v1, e:Lcom/lge/sns/SnsException;
    const v8, 0x7f05000d

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_3d
.end method

.method private initInfoView()V
    .registers 8

    .prologue
    .line 229
    const v5, 0x7f08009e

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 230
    .local v0, avartarView:Landroid/widget/ImageView;
    const v5, 0x7f0800d6

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .local v2, profileDisplayName:Landroid/widget/TextView;
    const v5, 0x7f0800d5

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 233
    .local v4, profileName:Landroid/widget/TextView;
    sget-object v5, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v3

    .line 234
    .local v3, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    .local v1, photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5c

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :goto_36
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 244
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_47
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 248
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_58
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->showFollwerFollowing()V

    .line 252
    return-void

    .line 240
    :cond_5c
    const v5, 0x7f020091

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_36
.end method

.method private initWallView()V
    .registers 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshContent()V

    .line 302
    return-void
.end method

.method private refresh(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 144
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->showDialog(I)V

    .line 145
    invoke-static {}, Lcom/lge/sns/BackgroundJobManager;->getInstance()Lcom/lge/sns/BackgroundJobManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Z)V

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method private refreshContent()V
    .registers 2

    .prologue
    .line 320
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$6;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    .line 326
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 327
    return-void
.end method

.method private showFollwerFollowing()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, -0xbbbbbc

    .line 256
    const v6, 0x7f0800dc

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 257
    .local v1, followerNumber:Landroid/widget/TextView;
    const v6, 0x7f0800d9

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 259
    .local v3, followingNumber:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getFollowerCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getFollowingCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const v6, 0x7f0800db

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 263
    .local v0, followerLayout:Landroid/widget/LinearLayout;
    const v6, 0x7f0800d8

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 265
    .local v2, followingLayout:Landroid/widget/LinearLayout;
    iget-boolean v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->myProfile:Z

    if-eqz v6, :cond_5e

    .line 266
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 267
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 269
    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$4;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$4;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :goto_5d
    return-void

    .line 290
    :cond_5e
    const v6, 0x7f0800dd

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 291
    .local v4, textFollower:Landroid/widget/TextView;
    const v6, 0x7f0800da

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 293
    .local v5, textFollowing:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 296
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_5d
.end method


# virtual methods
.method public confirmMyFriend(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 486
    sget-object v1, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    .line 488
    .local v0, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v0, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    if-nez v1, :cond_e

    .line 489
    const/4 v1, 0x0

    .line 491
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isMyProfile()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->myProfile:Z

    return v0
.end method

.method public matchCurrentProfile(J)Z
    .registers 6
    .parameter "profileId"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    move v0, v1

    .line 220
    .local v0, compareResult:Z
    :goto_c
    return v0

    .line 219
    .end local v0           #compareResult:Z
    :cond_d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_c
.end method

.method public matchCurrentProfile(Ljava/lang/String;)Z
    .registers 4
    .parameter "userId"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_b

    const/4 v1, 0x1

    move v0, v1

    .line 225
    .local v0, compareResult:Z
    :goto_a
    return v0

    .line 224
    .end local v0           #compareResult:Z
    :cond_b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    const/4 v2, -0x1

    if-ne p2, v2, :cond_9

    .line 127
    packed-switch p1, :pswitch_data_34

    .line 141
    :cond_9
    :goto_9
    return-void

    .line 129
    :pswitch_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, imageUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.UPLOAD"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 137
    .end local v0           #imageUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2f
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshContent()V

    goto :goto_9

    .line 127
    nop

    :pswitch_data_34
    .packed-switch 0x7d0
        :pswitch_2f
        :pswitch_a
        :pswitch_2f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 468
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/lge/sns/profile/ProfileComment;

    if-eqz v6, :cond_42

    .line 469
    move-object v0, v4

    check-cast v0, Lcom/lge/sns/profile/ProfileComment;

    move-object v3, v0

    .line 470
    .local v3, pc:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->confirmMyFriend(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 471
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 472
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->startActivity(Landroid/content/Intent;)V

    .line 483
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_29
    :goto_29
    return-void

    .line 475
    .restart local v3       #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_2a
    const v6, 0x7f0500a6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, toastMessage:Ljava/lang/String;
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_29

    .line 478
    .end local v3           #pc:Lcom/lge/sns/profile/ProfileComment;
    .end local v5           #toastMessage:Ljava/lang/String;
    :cond_42
    instance-of v6, v4, Lcom/lge/sns/media/MediaFile;

    if-eqz v6, :cond_29

    .line 479
    move-object v0, v4

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    move-object v2, v0

    .line 480
    .local v2, mf:Lcom/lge/sns/media/MediaFile;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->startActivity(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const v1, 0x7f03004c

    const/4 v2, 0x7

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_52

    .line 76
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 83
    :goto_1d
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 84
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 85
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 87
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getProfile()Lcom/lge/sns/profile/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    .line 88
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 90
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    if-nez v0, :cond_56

    .line 91
    const v0, 0x7f05008c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_51
    :goto_51
    return-void

    .line 80
    :cond_52
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->setContentView(I)V

    goto :goto_1d

    .line 95
    :cond_56
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->initInfoView()V

    .line 96
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->initWallView()V

    .line 98
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_51

    .line 99
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->addSnsNameImage()V

    goto :goto_51
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_34

    .line 343
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 332
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    .line 333
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 334
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$7;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$7;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 330
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v0, 0x2

    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 121
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 122
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 347
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$8;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 370
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$10;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 358
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$9;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 211
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 208
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refresh(Z)V

    move v0, v1

    .line 209
    goto :goto_9

    .line 206
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method

.method public onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 439
    return-void
.end method

.method public onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 458
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$12;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$12;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 464
    :cond_24
    return-void
.end method

.method public onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 443
    return-void
.end method

.method public onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0, p1}, Lcom/lge/sns/profile/Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 447
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->profile:Lcom/lge/sns/profile/Profile;

    .line 448
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$11;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$11;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 454
    :cond_16
    return-void
.end method
