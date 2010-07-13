.class public Lcom/lge/sns/feed/ui/ProfileCommentView;
.super Landroid/app/Activity;
.source "ProfileCommentView.java"


# static fields
.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final RC_SIGNIN:I = 0x7d2

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private hasProfile:Z

.field private profile:Lcom/lge/sns/profile/Profile;

.field private profileComment:Lcom/lge/sns/profile/ProfileComment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/ProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    .line 50
    iput-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->hasProfile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/ProfileCommentView;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/ProfileCommentView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->hasProfile:Z

    return v0
.end method

.method private addButtonView()V
    .registers 3

    .prologue
    .line 218
    const v1, 0x7f0800a4

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 220
    .local v0, commentButtonView:Landroid/widget/Button;
    new-instance v1, Lcom/lge/sns/feed/ui/ProfileCommentView$1;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/ProfileCommentView$1;-><init>(Lcom/lge/sns/feed/ui/ProfileCommentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    return-void
.end method

.method private addCommentView()V
    .registers 6

    .prologue
    .line 201
    const v3, 0x7f0800a1

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    .local v2, user_name:Landroid/widget/TextView;
    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    .local v0, comment_date:Landroid/widget/TextView;
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    .local v1, user_comment:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_60

    .line 206
    :cond_2f
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_38
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v3, v4}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5f

    .line 213
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileComment;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_5f
    return-void

    .line 208
    :cond_60
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method

.method private addMyStatusView()V
    .registers 8

    .prologue
    .line 162
    const v5, 0x7f08009e

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .local v0, avartarView:Landroid/widget/ImageView;
    const v5, 0x7f08009d

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, userNameView:Landroid/widget/TextView;
    const v5, 0x7f08009f

    invoke-virtual {p0, v5}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 166
    .local v3, statusCommentView:Landroid/widget/TextView;
    sget-object v5, Lcom/lge/sns/feed/ui/ProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 167
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v1, 0x0

    .line 168
    .local v1, photo:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->hasProfile:Z

    if-eqz v5, :cond_36

    .line 169
    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    :cond_36
    if-eqz v1, :cond_76

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    :goto_3b
    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7d

    .line 184
    :cond_4f
    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_58
    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_87

    .line 190
    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_75
    return-void

    .line 179
    :cond_76
    const v5, 0x7f020091

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3b

    .line 186
    :cond_7d
    iget-object v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 192
    :cond_87
    const v5, 0x7f050088

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_75
.end method

.method private addSnsNameImage()V
    .registers 5

    .prologue
    .line 147
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_43

    .line 151
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void

    .line 153
    :cond_43
    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private getProfileComment(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 111
    .local v0, dataUri:Landroid/net/Uri;
    if-eqz v0, :cond_12

    .line 112
    sget-object v2, Lcom/lge/sns/feed/ui/ProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    .line 113
    .local v1, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v1, v0}, Lcom/lge/sns/profile/IProfileFacade;->getProfileComment(Landroid/net/Uri;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    .line 115
    .end local v1           #profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :cond_12
    return-void
.end method

.method private getUserProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v5, 0x0

    .line 118
    sget-object v3, Lcom/lge/sns/feed/ui/ProfileCommentView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 121
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :try_start_7
    invoke-interface {v2, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;
    :try_end_d
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_7 .. :try_end_d} :catch_14
    .catch Lcom/lge/sns/SnsException; {:try_start_7 .. :try_end_d} :catch_2e

    .line 130
    :goto_d
    iget-object v3, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    if-nez v3, :cond_13

    .line 131
    iput-boolean v5, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->hasProfile:Z

    .line 133
    :cond_13
    return-void

    .line 122
    :catch_14
    move-exception v3

    move-object v0, v3

    .line 123
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/16 v3, 0x7d2

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/feed/ui/ProfileCommentView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 126
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2e
    move-exception v3

    move-object v0, v3

    .line 127
    .local v0, e:Lcom/lge/sns/SnsException;
    const v3, 0x7f05000d

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 138
    packed-switch p1, :pswitch_data_e

    .line 144
    :cond_9
    :goto_9
    return-void

    .line 141
    :pswitch_a
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->finish()V

    goto :goto_9

    .line 138
    :pswitch_data_e
    .packed-switch 0x7d2
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const v1, 0x7f030038

    const/4 v2, 0x7

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_80

    .line 63
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/ProfileCommentView;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/ProfileCommentView;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 71
    :goto_1d
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 72
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->getProfileComment(Landroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/feed/ui/ProfileCommentView;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->hasProfile:Z

    if-nez v0, :cond_69

    .line 77
    new-instance v0, Lcom/lge/sns/profile/Profile;

    invoke-direct {v0}, Lcom/lge/sns/profile/Profile;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    .line 78
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/Profile;->setSnsId(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profileComment:Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/Profile;->setUserId(Ljava/lang/String;)V

    .line 83
    :cond_69
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->hasProfile:Z

    if-eqz v0, :cond_76

    .line 84
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->addSnsNameImage()V

    .line 87
    :cond_76
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->addMyStatusView()V

    .line 89
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->addCommentView()V

    .line 90
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->addButtonView()V

    .line 91
    return-void

    .line 68
    :cond_80
    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/ProfileCommentView;->setContentView(I)V

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/lge/sns/feed/ui/ProfileCommentView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_d

    .line 98
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->addMyStatusView()V

    .line 99
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->addCommentView()V

    .line 101
    :cond_d
    return-void
.end method
