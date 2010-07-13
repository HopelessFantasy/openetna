.class public Lcom/lge/sns/feed/ui/PhotoPostedView;
.super Landroid/app/Activity;
.source "PhotoPostedView.java"

# interfaces
.implements Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final MENU_ID_COMMENT:I = 0x0

.field private static final MENU_ID_GO_TO_SITE:I = 0x4

.field private static final MENU_ID_REFRESH:I = 0x5

.field private static final MENU_ID_SAVE_PROFILE_TO_CONTACT:I = 0x2

.field private static final MENU_ID_SAVE_TO_GALLERY:I = 0x3

.field private static final MENU_ID_SN_MESSAGE:I = 0x1

.field private static final RC_DOWNLOAD_IMAGE:I = 0x7d0

.field public static final RC_GETPROFILE:I = 0x7d4

.field public static final RC_RESEND:I = 0x7d3

.field private static final RC_SIGNIN:I = 0x7d2

.field private static enableRefresh:Z

.field private static hasProfile:Z

.field private static saveFormat:Ljava/text/DateFormat;

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field MediaCommentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaComment;",
            ">;"
        }
    .end annotation
.end field

.field private UpdateCommentList:Ljava/lang/Runnable;

.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field public clearEditText:Ljava/lang/Runnable;

.field private dismissDialog:Ljava/lang/Runnable;

.field private goToSnsSite:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;

.field mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field private mediaFile:Lcom/lge/sns/media/MediaFile;

.field private profile:Lcom/lge/sns/profile/Profile;

.field private progress:Landroid/widget/ProgressBar;

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private wallLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/PhotoPostedView;->snsManager:Lcom/lge/sns/SnsManager;

    .line 86
    sput-boolean v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->hasProfile:Z

    .line 87
    sput-boolean v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->enableRefresh:Z

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/sns/feed/ui/PhotoPostedView;->saveFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    .line 73
    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    .line 75
    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->MediaCommentList:Ljava/util/List;

    .line 76
    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 81
    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->progress:Landroid/widget/ProgressBar;

    .line 432
    new-instance v0, Lcom/lge/sns/feed/ui/PhotoPostedView$5;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$5;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->UpdateCommentList:Ljava/lang/Runnable;

    .line 542
    new-instance v0, Lcom/lge/sns/feed/ui/PhotoPostedView$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$7;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->clearEditText:Ljava/lang/Runnable;

    .line 614
    new-instance v0, Lcom/lge/sns/feed/ui/PhotoPostedView$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$8;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->goToSnsSite:Ljava/lang/Runnable;

    .line 620
    new-instance v0, Lcom/lge/sns/feed/ui/PhotoPostedView$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$9;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->dismissDialog:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/media/MediaFile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/sns/feed/ui/PhotoPostedView;Lcom/lge/sns/media/MediaFile;)Lcom/lge/sns/media/MediaFile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/sns/feed/ui/PhotoPostedView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->addMediaFileView()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/sns/feed/ui/PhotoPostedView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->UpdateCommentList:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/feed/ui/PhotoPostedView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->initCommentListView()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput-boolean p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->enableRefresh:Z

    return p0
.end method

.method static synthetic access$800(Lcom/lge/sns/feed/ui/PhotoPostedView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->goToSnsSite()V

    return-void
.end method

.method private addButtonView()V
    .registers 3

    .prologue
    .line 498
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 500
    .local v0, sendButtonView:Landroid/widget/Button;
    new-instance v1, Lcom/lge/sns/feed/ui/PhotoPostedView$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$6;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    return-void
.end method

.method private addMediaFileView()V
    .registers 5

    .prologue
    .line 283
    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 285
    .local v1, userMediaView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-interface {v2, v3}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .local v0, photo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_28

    .line 288
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    :goto_16
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 296
    new-instance v2, Lcom/lge/sns/feed/ui/PhotoPostedView$2;

    invoke-direct {v2, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$2;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 322
    return-void

    .line 290
    :cond_28
    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16
.end method

.method private addMyStatusView()V
    .registers 6

    .prologue
    .line 217
    const v3, 0x7f080090

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 218
    .local v1, nameView:Landroid/widget/TextView;
    const v3, 0x7f080091

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 219
    .local v2, statusDateView:Landroid/widget/TextView;
    const v3, 0x7f080093

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    .local v0, mediaTitleView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_68

    .line 222
    :cond_2f
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_38
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 228
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v3, v4}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_52
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 231
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_67
    return-void

    .line 224
    :cond_68
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 232
    :cond_72
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 233
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 235
    :cond_88
    const v3, 0x7f0500a2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_67
.end method

.method private addSnsNameImage()V
    .registers 5

    .prologue
    .line 684
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 685
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 687
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_43

    .line 688
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    return-void

    .line 690
    :cond_43
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private createCommentView(Lcom/lge/sns/media/MediaComment;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "item"
    .parameter "textViewResourceId"
    .parameter "parent"

    .prologue
    .line 470
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 471
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v0, p2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 473
    .local v4, view:Landroid/view/View;
    const v5, 0x7f08008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 474
    .local v2, userNameView:Landroid/widget/TextView;
    const v5, 0x7f08008e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 475
    .local v3, userPublishedView:Landroid/widget/TextView;
    const v5, 0x7f08008f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 477
    .local v1, userCommentView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5d

    .line 478
    :cond_34
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :goto_3b
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getPublished()Ljava/util/Date;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v5, v6}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 487
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 488
    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    .line 490
    return-object v4

    .line 480
    :cond_5d
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b
.end method

.method private getMediaPosted(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, dataUri:Landroid/net/Uri;
    if-eqz v0, :cond_12

    .line 164
    sget-object v2, Lcom/lge/sns/feed/ui/PhotoPostedView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    .line 165
    .local v1, mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    invoke-interface {v1, v0}, Lcom/lge/sns/media/IMediaFacade;->getMediaFile(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFile;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    .line 167
    .end local v1           #mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    :cond_12
    return-void
.end method

.method private getUserProfile()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 174
    sget-object v3, Lcom/lge/sns/feed/ui/PhotoPostedView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 177
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :try_start_7
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;
    :try_end_19
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_7 .. :try_end_19} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_7 .. :try_end_19} :catch_57

    .line 186
    :goto_19
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    if-nez v3, :cond_3c

    .line 187
    sput-boolean v5, Lcom/lge/sns/feed/ui/PhotoPostedView;->hasProfile:Z

    .line 188
    new-instance v3, Lcom/lge/sns/profile/Profile;

    invoke-direct {v3}, Lcom/lge/sns/profile/Profile;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    .line 189
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/Profile;->setSnsId(Ljava/lang/String;)V

    .line 192
    :cond_3c
    return-void

    .line 178
    :catch_3d
    move-exception v3

    move-object v0, v3

    .line 179
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/16 v3, 0x7d4

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_19

    .line 182
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_57
    move-exception v3

    move-object v0, v3

    .line 183
    .local v0, e:Lcom/lge/sns/SnsException;
    const v3, 0x7f05000d

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_19
.end method

.method private goToSnsSite()V
    .registers 9

    .prologue
    .line 627
    const/4 v3, 0x0

    .line 628
    .local v3, linkUri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, intent:Landroid/content/Intent;
    sget-object v6, Lcom/lge/sns/feed/ui/PhotoPostedView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    .line 630
    .local v4, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v5, 0x1

    .line 633
    .local v5, start:Z
    :try_start_f
    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getDeepLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_f .. :try_end_1e} :catch_33
    .catch Lcom/lge/sns/SnsException; {:try_start_f .. :try_end_1e} :catch_5b

    move-result-object v3

    .line 650
    :cond_1f
    :goto_1f
    if-eqz v5, :cond_32

    .line 651
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 652
    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->dismissDialog:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivity(Landroid/content/Intent;)V

    .line 655
    :cond_32
    return-void

    .line 634
    :catch_33
    move-exception v6

    move-object v0, v6

    .line 635
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const/4 v5, 0x0

    .line 636
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, intentCredential:Landroid/content/Intent;
    const-string v6, "sns_id"

    iget-object v7, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const/16 v6, 0x7d2

    invoke-virtual {p0, v2, v6}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 639
    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 640
    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1f

    .line 642
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v2           #intentCredential:Landroid/content/Intent;
    :catch_5b
    move-exception v6

    move-object v0, v6

    .line 643
    .local v0, e:Lcom/lge/sns/SnsException;
    const/4 v5, 0x0

    .line 644
    const v6, 0x7f05000d

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 645
    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 646
    iget-object v6, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1f
.end method

.method private goToSnsSiteThreadStart()V
    .registers 3

    .prologue
    .line 607
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->showDialog(I)V

    .line 609
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->goToSnsSite:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 611
    .local v0, goToSnsThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 612
    return-void
.end method

.method private initCommentListView()V
    .registers 7

    .prologue
    .line 453
    const v3, 0x7f080094

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->wallLayout:Landroid/view/ViewGroup;

    .line 454
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->MediaCommentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 456
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v2, :cond_2d

    .line 457
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->MediaCommentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/media/MediaComment;

    const v4, 0x7f030035

    iget-object v5, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->wallLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/sns/feed/ui/PhotoPostedView;->createCommentView(Lcom/lge/sns/media/MediaComment;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, commentView:Landroid/view/View;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->wallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 460
    .end local v0           #commentView:Landroid/view/View;
    :cond_2d
    return-void
.end method

.method private profileCommentStart()V
    .registers 4

    .prologue
    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivity(Landroid/content/Intent;)V

    .line 669
    return-void
.end method

.method private refresh(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    const/4 v1, 0x0

    .line 366
    sput-boolean v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->enableRefresh:Z

    .line 367
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->wallLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 368
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->wallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 370
    :cond_c
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->showDialog(I)V

    .line 371
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 372
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    :cond_1c
    invoke-static {}, Lcom/lge/sns/BackgroundJobManager;->getInstance()Lcom/lge/sns/BackgroundJobManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/feed/ui/PhotoPostedView$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/sns/feed/ui/PhotoPostedView$4;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;Z)V

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method private snMessageStart()V
    .registers 4

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.send"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v1, "recipient_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivity(Landroid/content/Intent;)V

    .line 677
    return-void
.end method


# virtual methods
.method public clearText()V
    .registers 3

    .prologue
    .line 549
    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 551
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 552
    return-void
.end method

.method public mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 252
    return-void
.end method

.method public mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 256
    return-void
.end method

.method public mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 259
    return-void
.end method

.method public mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mf"

    .prologue
    .line 263
    new-instance v0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/PhotoPostedView$1;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 197
    packed-switch p1, :pswitch_data_18

    .line 210
    :cond_9
    :goto_9
    return-void

    .line 200
    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->refresh(Z)V

    goto :goto_9

    .line 203
    :pswitch_f
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->sendMediaComment()V

    goto :goto_9

    .line 206
    :pswitch_13
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getUserProfile()V

    goto :goto_9

    .line 197
    nop

    :pswitch_data_18
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
    const v2, 0x7f030036

    const/4 v3, 0x7

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_64

    .line 95
    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 99
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->progress:Landroid/widget/ProgressBar;

    .line 104
    :goto_28
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 105
    sget-object v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 106
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getMediaPosted(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getUserProfile()V

    .line 111
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 112
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->addSnsNameImage()V

    .line 115
    :cond_4d
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v1, p0}, Lcom/lge/sns/media/IMediaFacade;->registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 117
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->addMyStatusView()V

    .line 118
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->addMediaFileView()V

    .line 119
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->addButtonView()V

    .line 123
    sget-boolean v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->enableRefresh:Z

    if-eqz v1, :cond_63

    .line 124
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->refresh(Z)V

    .line 126
    :cond_63
    return-void

    .line 101
    .end local v0           #intent:Landroid/content/Intent;
    :cond_64
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->setContentView(I)V

    goto :goto_28
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_34

    .line 362
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 351
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 352
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 353
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/PhotoPostedView$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/PhotoPostedView$3;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 349
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 556
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 558
    .local v0, myAccount:Lcom/lge/sns/account/Account;
    const v1, 0x7f050021

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v5, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080050

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 560
    const v1, 0x7f050072

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 562
    const/4 v1, 0x2

    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02009f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 565
    const/4 v1, 0x4

    const v2, 0x7f05001e

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 568
    const/4 v1, 0x3

    const v2, 0x7f050073

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 570
    const/4 v1, 0x5

    const v2, 0x7f05000e

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/PhotoPostedView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 573
    sget-boolean v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->hasProfile:Z

    if-nez v1, :cond_87

    .line 574
    invoke-interface {p1, v5, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 577
    :cond_87
    return v6
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 242
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 582
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 603
    :goto_8
    return v1

    .line 584
    :pswitch_9
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->profileCommentStart()V

    goto :goto_8

    .line 587
    :pswitch_d
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->snMessageStart()V

    goto :goto_8

    .line 590
    :pswitch_11
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->saveFriendContact()V

    goto :goto_8

    .line 594
    :pswitch_15
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V

    goto :goto_8

    .line 597
    :pswitch_1b
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->goToSnsSiteThreadStart()V

    goto :goto_8

    .line 600
    :pswitch_1f
    invoke-direct {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->refresh(Z)V

    goto :goto_8

    .line 582
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 131
    .local v0, currentFormat:Ljava/text/DateFormat;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v1, :cond_e

    .line 132
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->addMyStatusView()V

    .line 134
    :cond_e
    if-eqz v0, :cond_1c

    sget-object v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->saveFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 135
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->refresh(Z)V

    .line 137
    :cond_1c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 144
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    :cond_14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/sns/feed/ui/PhotoPostedView;->enableRefresh:Z

    .line 147
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/PhotoPostedView;->saveFormat:Ljava/text/DateFormat;

    .line 148
    return-void
.end method

.method public saveFriendContact()V
    .registers 4

    .prologue
    .line 658
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-static {p0, v1, v2}, Lcom/lge/sns/profile/ui/FriendsList;->getSaveProfileToContactIntent(Landroid/content/Context;Lcom/lge/sns/profile/Profile;Lcom/lge/sns/account/IAccountFacade;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 660
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivity(Landroid/content/Intent;)V

    .line 661
    return-void
.end method

.method public sendMediaComment()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 508
    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 509
    .local v7, editText:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, comment:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_77

    .line 512
    sget-object v1, Lcom/lge/sns/feed/ui/PhotoPostedView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v0

    .line 513
    .local v0, mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    const/4 v9, 0x1

    .line 516
    .local v9, successOrNot:Z
    :try_start_1f
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFile:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/media/IMediaFacade;->sendMediaComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1f .. :try_end_3a} :catch_4e
    .catch Lcom/lge/sns/SnsException; {:try_start_1f .. :try_end_3a} :catch_69

    .line 529
    :goto_3a
    if-eqz v9, :cond_4d

    .line 531
    const v1, 0x7f05009e

    invoke-static {p0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 534
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->clearEditText:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    .end local v0           #mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    .end local v9           #successOrNot:Z
    :cond_4d
    :goto_4d
    return-void

    .line 518
    .restart local v0       #mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    .restart local v9       #successOrNot:Z
    :catch_4e
    move-exception v1

    move-object v6, v1

    .line 519
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    const/4 v9, 0x0

    .line 520
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const/16 v1, 0x7d3

    invoke-virtual {p0, v8, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3a

    .line 524
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v8           #intent:Landroid/content/Intent;
    :catch_69
    move-exception v1

    move-object v6, v1

    .line 525
    .local v6, e:Lcom/lge/sns/SnsException;
    const v1, 0x7f0500a1

    invoke-static {p0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 526
    const/4 v9, 0x0

    goto :goto_3a

    .line 539
    .end local v0           #mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    .end local v6           #e:Lcom/lge/sns/SnsException;
    .end local v9           #successOrNot:Z
    :cond_77
    const v1, 0x7f05009d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4d
.end method

.method public writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V
    .registers 12
    .parameter "mf"

    .prologue
    .line 326
    const/4 v8, 0x0

    .line 329
    .local v8, orgPic:[B
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/media/IMediaFacade;->getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_12
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1 .. :try_end_12} :catch_34
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_12} :catch_4c

    move-result-object v8

    .line 339
    :goto_13
    new-instance v0, Lcom/lge/sns/media/MediaSdcard;

    invoke-direct {v0}, Lcom/lge/sns/media/MediaSdcard;-><init>()V

    .line 340
    .local v0, inputOp:Lcom/lge/sns/media/MediaSdcard;
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v8, v1}, Lcom/lge/sns/media/MediaSdcard;->writeToDiskImage(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 342
    .local v9, savedFile:Ljava/io/File;
    if-eqz v9, :cond_33

    .line 343
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/sns/media/MediaSdcard;->addToMediaDB(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/media/MediaFile;J)V

    .line 346
    :cond_33
    return-void

    .line 330
    .end local v0           #inputOp:Lcom/lge/sns/media/MediaSdcard;
    .end local v9           #savedFile:Ljava/io/File;
    :catch_34
    move-exception v1

    move-object v6, v1

    .line 331
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/16 v1, 0x7d0

    invoke-virtual {p0, v7, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 335
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_4c
    move-exception v1

    move-object v6, v1

    .line 336
    .local v6, e:Lcom/lge/sns/SnsException;
    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method
