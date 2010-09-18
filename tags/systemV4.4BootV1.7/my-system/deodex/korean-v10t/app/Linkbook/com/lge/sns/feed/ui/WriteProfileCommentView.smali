.class public Lcom/lge/sns/feed/ui/WriteProfileCommentView;
.super Landroid/app/Activity;
.source "WriteProfileCommentView.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final MENU_ID_REFRESH:I = 0x1

.field public static final RC_GETPROFILE:I = 0x7d4

.field public static final RC_RESEND:I = 0x7d3

.field public static final RC_SIGNIN:I = 0x7d2

.field private static saveFormat:Ljava/text/DateFormat;

.field private static snsManager:Lcom/lge/sns/SnsManager;

.field private static final updateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private static wallLayoutReset:Z


# instance fields
.field private NEWLINE:Ljava/lang/String;

.field SettingManager:Lcom/lge/sns/setting/ISettingFacade;

.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private addFlag:Z

.field public clearEditText:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private profile:Lcom/lge/sns/profile/Profile;

.field profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private progress:Landroid/widget/ProgressBar;

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private wallLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayoutReset:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->updateMap:Ljava/util/Map;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->saveFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->SettingManager:Lcom/lge/sns/setting/ISettingFacade;

    .line 58
    iput-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addFlag:Z

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->NEWLINE:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 71
    iput-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->progress:Landroid/widget/ProgressBar;

    .line 74
    iput-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->mHandler:Landroid/os/Handler;

    .line 462
    new-instance v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$4;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$4;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->clearEditText:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Lcom/lge/sns/profile/ProfileComment;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->createCommentView(Lcom/lge/sns/profile/ProfileComment;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addButtonView()V
    .registers 3

    .prologue
    .line 408
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 410
    .local v0, sendButtonView:Landroid/widget/Button;
    new-instance v1, Lcom/lge/sns/feed/ui/WriteProfileCommentView$3;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$3;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method

.method private addSnsNameImage()V
    .registers 5

    .prologue
    .line 356
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 357
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_43

    .line 360
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    return-void

    .line 362
    :cond_43
    iget-object v2, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private addStatusView()V
    .registers 8

    .prologue
    .line 371
    const v5, 0x7f08009e

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 372
    .local v0, avartarView:Landroid/widget/ImageView;
    const v5, 0x7f08009f

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 373
    .local v3, statusCommentView:Landroid/widget/TextView;
    const v5, 0x7f08009d

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 375
    .local v4, userNameView:Landroid/widget/TextView;
    sget-object v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 376
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 378
    .local v1, photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_71

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    :goto_36
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_78

    .line 388
    :cond_4a
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :goto_53
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_95

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_95

    .line 396
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_70
    return-void

    .line 383
    :cond_71
    const v5, 0x7f020091

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_36

    .line 389
    :cond_78
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8a

    .line 390
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 392
    :cond_8a
    const v5, 0x7f0500a3

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 398
    :cond_95
    const v5, 0x7f050088

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_70
.end method

.method private commentListCheckUpdate()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 147
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getCommentListUpdated()Ljava/util/Date;

    move-result-object v3

    .line 148
    .local v3, updatedDate:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 149
    .local v0, currentDate:Ljava/util/Date;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->SettingManager:Lcom/lge/sns/setting/ISettingFacade;

    invoke-interface {v4}, Lcom/lge/sns/setting/ISettingFacade;->getUpdateTime()Lcom/lge/sns/setting/UpdateTime;

    move-result-object v2

    .line 151
    .local v2, settingInfo:Lcom/lge/sns/setting/UpdateTime;
    if-nez v3, :cond_21

    .line 152
    sget-object v4, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->updateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v9

    .line 167
    :goto_20
    return v4

    .line 154
    :cond_21
    sget-object v4, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->updateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3c

    .line 155
    sget-object v4, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->updateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v9

    .line 156
    goto :goto_20

    .line 159
    :cond_3c
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sget-object v4, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->updateMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v4, v5, v7

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 162
    .local v1, currentIntervalMiniute:I
    invoke-virtual {v2}, Lcom/lge/sns/setting/UpdateTime;->getIntervalValue()I

    move-result v4

    if-ge v4, v1, :cond_6c

    .line 163
    sget-object v4, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->updateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v9

    .line 164
    goto :goto_20

    .line 167
    :cond_6c
    const/4 v4, 0x0

    goto :goto_20
.end method

.method private createCommentView(Lcom/lge/sns/profile/ProfileComment;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "item"
    .parameter "textViewResourceId"
    .parameter "parent"

    .prologue
    .line 302
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 303
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v0, p2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 305
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0800df

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 306
    .local v2, userNameView:Landroid/widget/TextView;
    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 307
    .local v3, userPublishedView:Landroid/widget/TextView;
    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 309
    .local v1, userCommentView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5d

    .line 310
    :cond_34
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_3b
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v5, v6}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    .line 323
    return-object v4

    .line 312
    :cond_5d
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b
.end method

.method private getUserProfile(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const-string v6, "sns_id"

    .line 332
    const-string v5, "sns_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, snsId:Ljava/lang/String;
    const-string v5, "user_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, userId:Ljava/lang/String;
    sget-object v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 337
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :try_start_14
    invoke-interface {v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;
    :try_end_1a
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_14 .. :try_end_1a} :catch_3b
    .catch Lcom/lge/sns/SnsException; {:try_start_14 .. :try_end_1a} :catch_55

    .line 347
    :goto_1a
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    if-nez v5, :cond_3a

    .line 348
    new-instance v5, Lcom/lge/sns/profile/Profile;

    invoke-direct {v5}, Lcom/lge/sns/profile/Profile;-><init>()V

    iput-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    .line 349
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5, v3}, Lcom/lge/sns/profile/Profile;->setSnsId(Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5, v4}, Lcom/lge/sns/profile/Profile;->setUserId(Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    const-string v6, "user_name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/sns/profile/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 353
    :cond_3a
    return-void

    .line 338
    :catch_3b
    move-exception v5

    move-object v0, v5

    .line 339
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, intentCredential:Landroid/content/Intent;
    const-string v5, "sns_id"

    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const/16 v5, 0x7d4

    invoke-virtual {p0, v1, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a

    .line 343
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intentCredential:Landroid/content/Intent;
    :catch_55
    move-exception v5

    move-object v0, v5

    .line 344
    .local v0, e:Lcom/lge/sns/SnsException;
    const v5, 0x7f05000d

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1a
.end method

.method private initCommentListView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 276
    const v5, 0x7f0800e2

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayout:Landroid/view/ViewGroup;

    .line 277
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 278
    .local v1, currentFormat:Ljava/text/DateFormat;
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v6, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7, p0}, Lcom/lge/sns/profile/IProfileFacade;->getProfileCommentList(JLcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)Ljava/util/List;

    move-result-object v4

    .line 279
    .local v4, profileCommentList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileComment;>;"
    if-nez v4, :cond_4c

    move v3, v8

    .line 281
    .local v3, l:I
    :goto_1f
    sget-boolean v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayoutReset:Z

    if-eqz v5, :cond_32

    sget-object v5, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->saveFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 282
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 283
    sput-boolean v8, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayoutReset:Z

    .line 286
    :cond_32
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    if-ge v2, v3, :cond_52

    .line 287
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/sns/profile/ProfileComment;

    const v6, 0x7f030052

    iget-object v7, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v6, v7}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->createCommentView(Lcom/lge/sns/profile/ProfileComment;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, commentView:Landroid/view/View;
    iget-object v5, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 279
    .end local v0           #commentView:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #l:I
    :cond_4c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    goto :goto_1f

    .line 291
    .restart local v2       #i:I
    .restart local v3       #l:I
    :cond_52
    return-void
.end method

.method private refresh(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 208
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->showDialog(I)V

    .line 210
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 211
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->progress:Landroid/widget/ProgressBar;

    .line 212
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    :cond_1c
    invoke-static {}, Lcom/lge/sns/BackgroundJobManager;->getInstance()Lcom/lge/sns/BackgroundJobManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$2;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Z)V

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method


# virtual methods
.method public clearText()V
    .registers 3

    .prologue
    .line 469
    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 471
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 472
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 475
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 477
    packed-switch p1, :pswitch_data_1c

    .line 489
    :cond_9
    :goto_9
    return-void

    .line 479
    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refresh(Z)V

    goto :goto_9

    .line 482
    :pswitch_f
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->sendProfileComment()V

    goto :goto_9

    .line 485
    :pswitch_13
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getUserProfile(Landroid/content/Intent;)V

    goto :goto_9

    .line 477
    nop

    :pswitch_data_1c
    .packed-switch 0x7d2
        :pswitch_a
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f030053

    const/4 v3, 0x7

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_53

    .line 87
    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 95
    :goto_1d
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 96
    sget-object v1, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 98
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getUserProfile(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 102
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addSnsNameImage()V

    .line 104
    :cond_3f
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addStatusView()V

    .line 106
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addButtonView()V

    .line 108
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->commentListCheckUpdate()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 109
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refresh(Z)V

    .line 111
    :cond_4f
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->initCommentListView()V

    .line 112
    return-void

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    :cond_53
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->setContentView(I)V

    goto :goto_1d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_34

    .line 189
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 178
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 179
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 180
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/WriteProfileCommentView$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$1;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 176
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    return v2
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 204
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 201
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->refresh(Z)V

    move v0, v1

    .line 202
    goto :goto_9

    .line 199
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public onProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 3
    .parameter "profileComment"

    .prologue
    .line 496
    new-instance v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$5;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Lcom/lge/sns/profile/ProfileComment;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method public onProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 3
    .parameter "profileComment"

    .prologue
    .line 513
    new-instance v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/WriteProfileCommentView$6;-><init>(Lcom/lge/sns/feed/ui/WriteProfileCommentView;Lcom/lge/sns/profile/ProfileComment;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 118
    .local v0, currentFormat:Ljava/text/DateFormat;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v1, :cond_1d

    .line 119
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addStatusView()V

    .line 120
    sget-boolean v1, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayoutReset:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->saveFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 121
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->initCommentListView()V

    .line 124
    :cond_1d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 130
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->saveFormat:Ljava/text/DateFormat;

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->wallLayoutReset:Z

    .line 133
    :cond_10
    return-void
.end method

.method public sendProfileComment()V
    .registers 13

    .prologue
    const v11, 0x7f05009e

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 418
    const v8, 0x7f080096

    invoke-virtual {p0, v8}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 419
    .local v2, editText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, comment:Ljava/lang/String;
    const/4 v6, 0x0

    .line 422
    .local v6, sendedComment:Ljava/lang/String;
    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a9

    .line 423
    sget-object v8, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v8, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v5

    .line 425
    .local v5, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v7, 0x1

    .line 428
    .local v7, successOrNot:Z
    const/4 v8, 0x0

    :try_start_27
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->addFlag:Z

    .line 429
    iget-object v8, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v9}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9, v0}, Lcom/lge/sns/profile/IProfileFacade;->sendProfileComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_27 .. :try_end_38} :catch_4c
    .catch Lcom/lge/sns/SnsException; {:try_start_27 .. :try_end_38} :catch_67

    move-result-object v6

    .line 443
    :goto_39
    if-eqz v7, :cond_75

    if-eqz v6, :cond_75

    .line 444
    invoke-static {p0, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 447
    iget-object v8, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->clearEditText:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    .end local v5           #profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    .end local v7           #successOrNot:Z
    :cond_4b
    :goto_4b
    return-void

    .line 431
    .restart local v5       #profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    .restart local v7       #successOrNot:Z
    :catch_4c
    move-exception v8

    move-object v1, v8

    .line 432
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    const/4 v7, 0x0

    .line 433
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "sns_id"

    iget-object v9, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v9}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const/16 v8, 0x7d3

    invoke-virtual {p0, v3, v8}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_39

    .line 436
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_67
    move-exception v8

    move-object v1, v8

    .line 437
    .local v1, e:Lcom/lge/sns/SnsException;
    const v8, 0x7f0500a0

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 440
    const/4 v7, 0x0

    goto :goto_39

    .line 449
    .end local v1           #e:Lcom/lge/sns/SnsException;
    :cond_75
    if-eqz v7, :cond_4b

    .line 450
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0500c0

    invoke-virtual {p0, v9}, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, notifyMessage:Ljava/lang/String;
    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 454
    const/4 v7, 0x1

    .line 455
    iget-object v8, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/lge/sns/feed/ui/WriteProfileCommentView;->clearEditText:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 458
    .end local v4           #notifyMessage:Ljava/lang/String;
    .end local v5           #profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    .end local v7           #successOrNot:Z
    :cond_a9
    const v8, 0x7f05009d

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_4b
.end method
