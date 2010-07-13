.class public Lcom/lge/sns/feed/ui/ProfileStatusView;
.super Landroid/app/Activity;
.source "ProfileStatusView.java"


# static fields
.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private feed:Lcom/lge/sns/feed/Feed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/ProfileStatusView;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/ProfileStatusView;)Lcom/lge/sns/feed/Feed;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    return-object v0
.end method

.method private addButtonView()V
    .registers 5

    .prologue
    .line 152
    const v2, 0x7f0800a4

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    .local v0, commentButtonView:Landroid/widget/Button;
    sget-object v2, Lcom/lge/sns/feed/ui/ProfileStatusView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, myUid:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 156
    new-instance v2, Lcom/lge/sns/feed/ui/ProfileStatusView$1;

    invoke-direct {v2, p0}, Lcom/lge/sns/feed/ui/ProfileStatusView$1;-><init>(Lcom/lge/sns/feed/ui/ProfileStatusView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_2d
    return-void

    .line 165
    :cond_2e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2d
.end method

.method private addMyStatusView()V
    .registers 9

    .prologue
    .line 109
    const v6, 0x7f08009e

    invoke-virtual {p0, v6}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    .local v0, avatarView:Landroid/widget/ImageView;
    const v6, 0x7f08009d

    invoke-virtual {p0, v6}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 111
    .local v5, userNameView:Landroid/widget/TextView;
    const v6, 0x7f0800bb

    invoke-virtual {p0, v6}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 112
    .local v3, statusDateView:Landroid/widget/TextView;
    const v6, 0x7f08009f

    invoke-virtual {p0, v6}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    .local v4, statusTextView:Landroid/widget/TextView;
    sget-object v6, Lcom/lge/sns/feed/ui/ProfileStatusView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 115
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_94

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :goto_3f
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9b

    .line 127
    :cond_53
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_5c
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a5

    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a5

    .line 133
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_79
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_ac

    .line 139
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v6, v7}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_93
    return-void

    .line 122
    :cond_94
    const v6, 0x7f020091

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f

    .line 129
    :cond_9b
    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5c

    .line 135
    :cond_a5
    const v6, 0x7f050034

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_79

    .line 142
    :cond_ac
    const v6, 0x7f05003b

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_93
.end method

.method private addSnsNameImage()V
    .registers 5

    .prologue
    .line 90
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_43

    .line 94
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void

    .line 96
    :cond_43
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private getProfileStatus(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, dataUri:Landroid/net/Uri;
    if-eqz v0, :cond_12

    .line 84
    sget-object v2, Lcom/lge/sns/feed/ui/ProfileStatusView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v1

    .line 85
    .local v1, feedFacade:Lcom/lge/sns/feed/IFeedFacade;
    invoke-interface {v1, v0}, Lcom/lge/sns/feed/IFeedFacade;->getFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    .line 87
    .end local v1           #feedFacade:Lcom/lge/sns/feed/IFeedFacade;
    :cond_12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const v1, 0x7f030040

    const/4 v2, 0x7

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 51
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileStatusView;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/ProfileStatusView;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 57
    :goto_1d
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 59
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->getProfileStatus(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_37

    .line 62
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->addSnsNameImage()V

    .line 64
    :cond_37
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->addMyStatusView()V

    .line 66
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->addButtonView()V

    .line 67
    return-void

    .line 55
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/ProfileStatusView;->setContentView(I)V

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileStatusView;->feed:Lcom/lge/sns/feed/Feed;

    if-eqz v0, :cond_a

    .line 73
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->addMyStatusView()V

    .line 74
    :cond_a
    return-void
.end method
